<template>
  <div id="app">
    <my-topheader></my-topheader>
    <my-header></my-header>
    <router-view/>
    <my-footer></my-footer>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
ul{list-style: none; margin: 0;padding: 0;}
.container{padding: 0 1px !important; }
*{margin: 0 ; padding: 0; box-sizing: border-box;}
  .clearfix::before{
    content: ' ';
    clear: both;
    display:table;
    height:0;
    visibility:hidden;
  }
</style>


