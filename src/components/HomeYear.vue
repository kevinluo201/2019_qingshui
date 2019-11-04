<template>
  <div class="home-year" :class="{ hovered: (isHovered && !isActive), active: isActive }" v-bind:style="{ left: leftPosition }">
    <div class="container">
      <div class="title" 
        @click="isActive = !isActive"
        @mouseenter="isHovered = true"
        @mouseleave="isHovered = false"
      >
        <h3 class="first-title">
          <div class="word" v-for="(c, index) in year.title" :key="index">{{ c }}</div>
        </h3>

        <h3 class="sub-title">
          <div class="word" v-for="(c, index) in year.sub" :key="index">{{ c }}</div>
        </h3>
      </div>
      <div class="intro">
        <img src="~@/assets/icon-hp-esc.svg" alt="close" class="close" @click="isActive = false">
        <article>
          {{ year.article }}
        </article>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['yearSelected', 'year'],
  data() {
    return {
      isActive: false,
      isHovered: false
    }
  },
  computed: {
    leftPosition() {
      return `${this.year.left}%`
    }
  }
}
</script>

<style lang="scss" scoped>
.home-year {
  margin-top: 8px;
  position: absolute;
  height: 250px;
  @include transition(height 0.2s ease);
}

.container {
  position: relative;
  width: 100%;
  height: 100%;
  border-left: 1px solid white;
}

.title {
  position: absolute;
  left: -28px;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
  cursor: pointer;
  h3 {
    font-size: 1rem;
    margin: 0;
    @include transition(font-size 0.2s ease);
  }
}

.intro {
  padding-left: 12px;
  overflow: hidden;
  width: 1px;
  @include transition(width 0.5s ease);
  height: 250px;

  img {
    position: absolute;
    left: 293px;
    top: 8px;
    height: 15px;
    width: 15px;
    cursor: pointer;
  }

  article {
    width: 300px;
    height: 100%;
    overflow-y: scroll;
    background: $color-1;
    color: black;
    line-height: 1.5;
    padding: 25px 30px 15px 12px;
    text-align: left;
  }
}

.home-year.hovered {
  height: 273px;
  .title {
    h3 {
      font-size: 1.125rem;
    }
  }
}

.home-year.active {
  .intro {
    width: 312px;
  }
}
</style>