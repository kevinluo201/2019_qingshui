<template>
  <div class="classics-event">
    <swiper :options="swiperOption" ref="mySwiper">
      <!-- slides -->
      <swiper-slide v-for="photo in photos" :key="photo">
        <img :src="photo" alt="" class="center-cropped" />
      </swiper-slide>
      <!-- Optional controls -->
      <div class="swiper-pagination"  slot="pagination"></div>
      <div class="swiper-button-prev" slot="button-prev"></div>
      <div class="swiper-button-next" slot="button-next"></div>
    </swiper>
  </div>
</template>

<script>
import 'swiper/dist/css/swiper.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'

export default {
  components: { swiper, swiperSlide },
  props: ['event'],
  data() {
    return {
      swiperOption: {

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
.classics {
  position: relative;
  img {
    width: 100%;
  }
  .center-cropped {
    object-fit: cover;
    object-position: center; /* Center the image within the element */
    height: 56vh;
    width: 100%;
  }
}

</style>