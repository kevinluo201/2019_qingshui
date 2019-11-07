<template>
  <div class="classics">
    <nav>
      <router-link 
        v-for="cat in categories" 
        :key="cat"
        class="cat-link"
        :class="{ active: cat === categorySelected }"
        :to="{ name: 'classics', params: { category: cat } }"
      >
        {{ cat }}
      </router-link>
    </nav>
  </div>
</template>

<script>
import Events from '@/assets/events.json'

export default {
  data() {
    return {
      categories: [
        '1996 牛罵頭音樂節',
        '彼得・密勒古列鋼琴三重奏',
        '墨西哥民俗樂公演',
        '郭芝苑作品音樂會',
        '簡名彥與名弦四重奏',
        '更多'
      ]
    }
  },
  computed: {
    categorySelected() {
      if(this.$route.params.category === null) return '1996 牛罵頭音樂節'
      return this.$route.params.category
    },
    events() {
      return Events[this.categorySelected]
    }
  }
}
</script>

<style lang="scss" scoped>
nav {
  margin-top: 29px;
  display: flex;

  .cat-link {
    color: $color-1;
    font-size: 1rem;
    padding-bottom: 5px;
    margin-right: 30px;
    text-decoration: none;
    cursor: pointer;
    &.active, &:hover {
      border-bottom: 1px $color-1 solid;
    }
  }
}
</style>