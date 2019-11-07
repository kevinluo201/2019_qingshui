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
    <div class="content">
      <swiper :options="swiperOption" ref="eventsSwiper">
        <!-- slides -->
        <swiper-slide v-for="event in events" :key="event.name">
          <ClassicsEvent :event="event" />
        </swiper-slide>
        <!-- Optional controls -->
        <div class="swiper-button-prev" slot="button-prev">
          <img src="@/assets/icon-works-last_event.svg" alt="previews">
        </div>
        <div class="swiper-button-next" slot="button-next">
          <img src="@/assets/icon-works-next_event.svg" alt="previews">
        </div>
        <div class="swiper-scrollbar"   slot="scrollbar"></div>
      </swiper>
    </div>
    <input
      class="event-range"
      type="range"
      v-model="eventNow"
      step="1"
      min="0"
      :max="events.length - 1"
      @input="rangeInputed"
    />
  </div>
</template>

<script>
import Events from '@/assets/events.json'
import 'swiper/dist/css/swiper.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'
import ClassicsEvent from '@/components/ClassicsEvent'

export default {
  components: {
    swiper,
    swiperSlide,
    ClassicsEvent
  },
  data() {
    return {
      categories: [
        '1996 牛罵頭音樂節',
        '彼得・密勒古列鋼琴三重奏',
        '墨西哥民俗樂公演',
        '郭芝苑作品音樂會',
        '簡名彥與名弦四重奏',
        '更多'
      ],
      swiperOption: {
        slidesPerView: 3,
        spaceBetween: 30,
        pagination: {
          el: '.swiper-pagination',
          clickable: true
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev'
        }
      },
      eventNow: 0
    }
  },
  methods: {
    rangeInputed() {
      this.swiper.slideTo(this.eventNow, 500, 'ease')
    }
  },
  computed: {
    categorySelected() {
      if(this.$route.params.category === null) return '1996 牛罵頭音樂節'
      return this.$route.params.category
    },
    events() {
      return Events[this.categorySelected]
    },
    swiper() {
      return this.$refs.eventsSwiper.swiper
    }
  }
}
</script>

<style lang="scss" scoped>
nav {
  margin-top: 29px;
  margin-bottom: 56px;
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

.content {
  margin-left: -$app-padding;
  margin-right: -$app-padding;
}

.swiper-button-prev, .swiper-button-next {
  width: 50px;
  height: 50px;
  @include flex-center();
  background: rgba(0, 0, 0, 0.5);
  img {
    width: 15px;
    height: 24px;
  }
}

.event-range {
  margin-top: 44px;
  width: calc((100vw - #{$app-padding} * 2) / 3);
}
</style>