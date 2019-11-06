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
        <span class="about" @click="showAbout = true">關於</span>
      </nav>
    </header>
    <AppAbout :showAbout="showAbout" @closeAbout="showAbout = false" />
    <div id="loading" v-if="isLoading">
      <img alt="Vue logo" src="@/assets/Disk-1.5s-50px.gif">
      <p>Loading...</p>
    </div>
    <router-view v-else />
  </div>
</template>

<script>
import AppAbout from "@/components/AppAbout"

export default {
  components: { AppAbout },
  data() {
    return {
      isLoading: false,
      showAbout: false
    }
  }
}
</script>

<style lang="scss">
html,body
{
  width: 100%;
  height: 100%;
  margin: 0px;
  padding: 0px;
  overflow-x: hidden; 
}

body {
  font-size: 16px;
  background-image: url('~@/assets/img-hp-bgi.png');
  background-size: cover;

  * {
    box-sizing: border-box;
  }
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  line-height: 1.3;
  padding: $app-padding;
}
</style>

<style lang="scss" scoped>
#app-header {
  display: flex;
  justify-content: space-between;
  z-index: 100;
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
    color: $color-1;
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

.about {
   cursor: pointer;
}
</style>
