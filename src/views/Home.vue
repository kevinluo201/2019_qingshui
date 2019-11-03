<template>
  <div class="home">
    <img alt="Vue logo" src="~@/assets/Disk-1.5s-50px.gif">
    <p>Loading...</p>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'home',
  components: {
  }
}
</script>

<style lang="scss" scoped>
  .home {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 80vh;
  }
  img {
    width: 30px;
    height: 30px;
  }
  p {
    color: rgb(254, 249, 188);
  }
</style>
