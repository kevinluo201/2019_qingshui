<template>
  <div class="classics-event" @mouseenter="isHovered = true" @mouseleave="isHovered = false">
    <div class="mask" :class="{ active: isHovered }">
      <h3>
        {{ event.date }}<br>
        {{ event.title }}
      </h3>
      <nav>
        <div class="nav-arrow nav-arrow-prev" :class="`swiper-${index}-prev`">
          <img src="@/assets/icon-works-last_img-normal.svg" alt="">
        </div>

        <div class="nav-arrow nav-arrow-next" :class="`swiper-${index}-next`">
          <img src="@/assets/icon-works-next_img-normal.svg" alt="">
        </div>
      </nav>
    </div>
    <swiper :options="swiperOption" ref="mySwiper">
      <!-- slides -->
      <swiper-slide v-for="photo in photos" :key="photo">
        <img :src="photo" alt="" class="center-cropped" />
      </swiper-slide>
    </swiper>
  </div>
</template>

<script>
import 'swiper/dist/css/swiper.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'

export default {
  components: { swiper, swiperSlide },
  props: ['event', 'index'],
  data() {
    return {
      isHovered: false,
      swiperOption: {
        navigation: {
          nextEl: `.swiper-${this.index}-button-next`,
          prevEl: `.swiper-${this.index}-button-prev`
        }
      }
    }
  },
  methods: {
    imgUrl(name) {
      return `../photos/${name}.jpg`
    }
  },
  computed: {
    photos() {
      return this.event.photos.map(photo => require(`@/assets/photos/${photo}.jpg`))
    }
  }
}
</script>

<style lang="scss" scoped>
.classics-event {
  position: relative;
  .center-cropped {
    object-fit: cover;
    object-position: center; /* Center the image within the element */
    height: 56vh;
    width: 100%;
  }
}

.mask {
  @include absolute-fill();
  background-color: rgba(0, 0, 0, 0.5);
  color: white;
  opacity: 0;
  z-index: 0;
  @include transition(opacity 0.5s ease-out);
  &.active {
    opacity: 1;
    z-index: 100;
  }
  display: flex;
  flex-direction: column;
  padding: 19px 14px;
  h3 {
    font-size: 1rem;
    color: white;
    text-align: left;
    margin: 0;
  }

  nav {
    align-self: center;
    .nav-arrow-prev {
      
    }
  }
}



</style>