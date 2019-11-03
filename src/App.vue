<template>
  <div id="app">
    <header id="app-header">
      <div id="title">
        <router-link to="/"><h1>臺中清水．音樂造鎮</h1></router-link>
        <h2>臺中地方文化故事</h2>
      </div>
      <nav>
        <router-link :to="{name: 'classics'}">經典重現</router-link> |
        <a href="">關於</a>
      </nav>
    </header>
    <router-view/>
  </div>
</template>

<style lang="scss">
body {
  margin: 0;
  padding: 0;
  font-size: 16px;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  background-image: url('./assets/img-hp-bgi.png');
  background-size: cover;
  min-height: 100vh;
  padding: 20px;
}

#app-header {
  display: flex;
  justify-content: space-between;
  * {
    color: white;
  }
  a {
    text-decoration: none;
  }
  #title {
    text-align: left;
  }
  h1 {
    color: rgb(254, 249, 188);
    margin: 0;
  }
  h2 {
    font-size: 1.2rem;
    margin-top: 0;
  }

  nav {
    margin-top: 10px;
  }
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
