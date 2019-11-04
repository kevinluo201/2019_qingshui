<template>
  <div class="backbone" :class="{active: isActive}">
    <span v-for="i in units" :key="i"></span>
  </div>
</template>

<script>
export default {
  mounted() {
    setTimeout(() => {
      this.isActive = true
    }, 300)
  },
  data() {
    return {
      units: 130,
      isActive: false
    }
  }
}
</script>

<style lang="scss" scoped>
.backbone {
  align-self: flex-start;
  display: flex;
  justify-content: space-between;
  width: 0;
  overflow: hidden;
  opacity: 0;
  @include transition(all 3s ease-out);
  &.active {
    width: 100%;
    opacity: 1;
  }
}

@keyframes backbone{
  from{
    width: 0;
    opacity: 0;
  }
  to{
    width: 100%;
    opacity: 100%;
  }
}

span {
  height: 10px;
  border-right: 1px solid white;
}
</style>