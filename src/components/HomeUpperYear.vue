<template>
  <div class="home-year" :class="classObj" v-bind:style="{ left: leftPosition }">
    <div class="container">
      <div class="title" 
        @click="$emit('yearSelect', year)"
        @mouseenter="isHovered = true"
        @mouseleave="isHovered = false"
      >
        <h3 class="first-title">
          <div class="word" v-for="(c, index) in year.title" :key="index">{{ c }}</div>
          <div>
            <img src="~@/assets/icon-hp-go_to_another_page.svg" alt="link">
          </div>
        </h3>

        <h3 class="sub-title">
          <div class="word" v-for="(c, index) in year.sub" :key="index">{{ c }}</div>
        </h3>
      </div>
      <div class="intro">
        <img src="~@/assets/icon-hp-esc.svg" alt="close" class="close" @click="$emit('yearSelect', null)">
        <article v-html="year.article"></article>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['yearSelected', 'year'],
  data() {
    return {
      isHovered: false
    }
  },
  computed: {
    isActive() {
      return this.year === this.yearSelected
    },
    leftPosition() {
      return `calc(${this.year.left})`
    },
    classObj() {
      return {
        hovered: (this.isHovered && !this.isActive), 
        active: this.isActive
      }
    }
  }
}
</script>

<style lang="scss" scoped>
.home-year {
  position: absolute;
  bottom: 8px;
  height: 0px;
  @include transition(all 1s ease-out);
  @include transition(left 1s ease-out);

  // 進場動畫
  animation-name: lineGrow;
  animation-duration: 1s;
  animation-delay: 3500ms;
  animation-fill-mode: forwards;
}

@keyframes lineGrow {
  from {
    height: 0px;
  }
  to {
    height: 250px;
  }
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
  bottom: -30px;
  height: 100%;
  opacity: 0;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
  cursor: pointer;
  @include transition(transform 1s ease-out);
  transform-origin: bottom right;
  transform: scale(1);

  // 進場動畫
  animation-name: titleFadeIn;
  animation-duration: 1s;
  animation-delay: 4500ms;
  animation-fill-mode: forwards;
  h3 {
    font-size: 1rem;
    margin: 0;
    color: $color-2;

    img {
      width: 15px;
      height: 15px;
    }
  }
}

@include keyframes(titleFadeIn) {
  from {
    opacity: 0;
    bottom: -30px;
  }
  to {
    opacity: 1;
    bottom: 0px;
  }
}

.intro {
  padding-left: 12px;
  overflow: hidden;
  width: 1px;
  @include transition(width 0.5s ease-out);
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
    padding: 15px 30px 15px 12px;
    text-align: left;
  }
}

.home-year.hovered {
  height: 273px;
  @include transition(all 1s ease-out);
  .title {
    transform: scale(1.05);
    transform-origin: top right;
    @include transition(transform 1s ease-out);
  }
}

.home-year.active {
  .intro {
    width: 312px;
    @include transition(width 1s ease-out);
  }
}
</style>