<template>
  <div id="app">
    <header id="app-header">
      <div id="title">
        <router-link to="/"><h1>臺中清水．音樂造鎮</h1></router-link>
        <h2>臺中地方文化故事</h2>
      </div>
      <nav>
        <router-link :to="{name: 'classics'}">經典重現</router-link>
        <span class="divider">|</span>
        <a href="">關於</a>
      </nav>
    </header>
    <div id="loading" v-if="isLoading">
      <img alt="Vue logo" src="@/assets/Disk-1.5s-50px.gif">
      <p>Loading...</p>
    </div>
    <router-view v-else />
  </div>
</template>

<script>
export default {
  data() {
    return {
      isLoading: true
    }
  }
}
</script>

<style lang="scss">
body {
  margin: 0;
  padding: 0;
  font-size: 16px;
  background-image: url('~@/assets/img-hp-bgi.png');
  background-size: cover;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  line-height: 1.3;
  padding: 30px;
}
</style>

<style lang="scss" scoped>
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
    font-size: 1.875rem;
    color: rgb(254, 249, 188);
    margin: 0;
  }
  h2 {
    font-size: 1rem;
    margin: 0;
  }

  nav {
    margin-top: 10px;
    .divider {
      margin: 0 10px;
    }
  }
}

#loading {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 80vh;
  img {
    width: 30px;
    height: 30px;
  }
  p {
    color: rgb(254, 249, 188);
  }
}
</style>
