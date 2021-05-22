// 加载Express模块
const express = require('express');

//加载MD5模块
const md5 = require('md5');

// 加载CORS模块
const cors = require('cors');

// 加载body-parser模块
const bodyParser = require('body-parser');

// 加载MySQL模块
const mysql = require('mysql');

// 创建MySQL连接池
const pool = mysql.createPool({
  // 数据库服务器的地址
  host: '127.0.0.1',
  // 数据库服务器的端口号
  port: 3306,
  // 数据库用户的用户名
  user: 'root',
  // 数据库用户的密码
  password: '',
  // 数据库名称
  database: 'xs',
  // 编码方式
  charset: 'utf8',
  // 最大连接数
  connectionLimit: 20
});



// 创建WEB服务器实例
const server = express();

// 托管静态资源
server.use( express.static('./public') );
// 将CORS作为Server的中间件
server.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));

//将bodyParser作为Server的中间件
server.use(bodyParser.urlencoded({
  extended: false
}));

// 用户注册的接口
server.post('/register', (req, res) => {
  //console.log(md5('12345678')) ;
  //获取用户名和密码
  let username = req.body.username;
  let password = req.body.password;
  //查找用户是否存在
  let sql = 'SELECT COUNT(uid) AS count FROM xs_user WHERE username=?';
  pool.query(sql, [username], (error, results) => {
    if (error) throw error;
    //如果用户不存在,则插入记录
    if (results[0].count == 0) {
      sql = 'INSERT INTO xs_user(username,password) VALUES(?,?)';
      pool.query(sql, [username, password], (error, results) => {
        if (error) throw error;
        res.send({ message: '注册成功', code: 1 });
      })
    } else { //否则产生合理的错误提示
      res.send({ message: '用户已存在', code: 0 });
    }
  })
});


//用户登录的接口
server.post('/login', (req, res) => {
  //获取用户名和密码
  let username = req.body.username;
  let password = req.body.password;
  //以用户名和密码为条件进行查找
  let sql = 'SELECT uid,username FROM xs_user WHERE username=? AND password=?';
  pool.query(sql, [username, password], (error, results) => {
    if (error) throw error;
    if (results.length == 0) {
      res.send({ message: '登录失败', code: 0 });
    } else {
      res.send({ message: '登录成功', code: 1, userInfo: results[0] });
    }
  });

});

// 商品首页
server.get("/index",(req,res)=>{
  let sql="SELECT * FROM xs_hot_perfume";
  pool.query(sql,(err,results)=>{
    if (err) throw err;
    res.send({message:'查询成功',code:1,results:results});
    // console.log(results);
  })
});

// 商品详情
server.get("/details",(req,res)=>{
  let uid=req.query.uid;
  // SQL查询
  let sql="SELECT uid,etitle,esrc,euname,eprice,eguige,details_pic1,details_pic2,details_pic3,details_pic4,details_pic5,details_pic6 FROM xs_hot_perfume WHERE uid=?";
  pool.query(sql,[uid],(error,results)=>{
    if(error) throw error;
    res.send({message:"查询成功",code:200, results:results[0]});
  })
});

// 查询商品列表
server.get("/list",(req,res)=>{
  let id=req.query.id;
  let sql = "SELECT uid,etitle,esrc,eprice FROM xs_hot_perfume WHERE id=?";
  pool.query(sql,[id],(error,results)=>{
    if(error) throw error;
    res.send({message:"查询成功",code:200,results:results});
  })
})

// 购物车添加按钮id数据
server.get("/shopping",(req,res)=>{
  let uid=req.query.id;
  let sql="SELECT sid,stitle,sprice,ssrc,scount FROM xs_shoppingcart WHERE sid=?";
  pool.query(sql,[uid],(error,results)=>{
    if(error) throw error;
    if(results.length==0){
      let sql="INSERT INTO xs_shoppingcart(sid,stitle,sprice,ssrc,scount) select uid,etitle,eprice,esrc,ecount FROM xs_hot_perfume WHERE uid=?";
      pool.query(sql,[uid],(error,results)=>{
        res.send({message:"查询成功",code:1,results:results});
      })
    }else{
      res.send({message:"查询失败",code:0,results:results});
    }
  })
})

// 购物车表显示在购物车页面
server.get("/order",(req,res)=>{
  let sql="SELECT sid,stitle,sprice,ssrc,scount FROM xs_shoppingcart";
  pool.query(sql,(error,results)=>{
    if(error) throw error;
    res.send({message:"查询成功",code:1,results:results});
  })
})

//购物车删除商品
server.get("/delete",(req,res)=>{
  let sid=req.query.id;
  let sql="DELETE FROM xs_shoppingcart WHERE xs_shoppingcart.sid=?";
  pool.query(sql,[sid],(error,results)=>{
    if(error) throw error;
    res.send({message:"删除成功",code:1,results:results});
  })
})

// 轮播图
server.get("/carousel",(req,res)=>{
  let sql="SELECT src FROM xs_carousel";
  pool.query(sql,(error,results)=>{
    if(error) throw error;
    res.send({results})
  })
})
// 指定WEB服务器监听的端口
server.listen(3000);

