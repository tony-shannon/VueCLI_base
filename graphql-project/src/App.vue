<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    
    <GraphQL_Problems msg="Welcome to Your GraphQL on Vue.js test App"/>
  </div>
</template>

<script>
//    <GraphQLTest msg="Welcome to Your GraphQL on Vue.js test App"/>
//<HelloWorld msg="Welcome to Your Vue.js App"/>
//import HelloWorld from './components/HelloWorld.vue'
//import GraphQLTest from  './components/GraphQLTest.vue'
import GraphQL_Problems from  './components/GraphQL_Problems.vue'

export default {
  name: 'App',
  components: {
    //  HelloWorld
    // GraphQLTest
    GraphQL_Problems
 }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
