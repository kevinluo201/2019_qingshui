<template>
  <div class="home">
    <HomeAnimation v-if="isAnimating" />
    <div class="upper">
    </div>
    <HomeBackbone />
    <div class="lower">
      <HomeYear 
        :yearSelected="yearSelected" 
        :year="year91"
      />
    </div>
  </div>
</template>

<script>
import HomeAnimation from '@/components/HomeAnimation'
import HomeBackbone from '@/components/HomeBackbone'
import HomeYear from '@/components/HomeYear'

export default {
  name: 'home',
  components: { HomeAnimation, HomeBackbone, HomeYear },
  data() {
    return {
      isAnimating: true,
      yearSelected: null,
      year91: {
        title: '1992以前',
        sub: '緣起',
        article: "1986年9月18日，協會成員吳長錕返鄉創立華笙音樂城，從事古典音樂與流行音樂CD專賣店。店中經常聚集來自台中市市區及海線地區許多愛好音樂的朋友，在此討論音樂，甚至租巴士遠赴台北國家音樂廳聆聽一流的演奏團體及其美妙的古典音樂作品。愛樂者將華笙音樂城視為清水小鎮的文化沙龍，成為音樂交流中心，於是興起成立古典音樂俱樂部組織的念頭。1992年5月的一個午後，一群愛好音樂的朋友在清水「華笙音樂城」聚會，在分享聆賞音樂心得之餘，提議成立音樂聯誼會，把古典音樂之美得以帶給更多的朋友分享，並取了一個名字，稱作「台中港區古典音樂協會」。",
        left: 2.5
      },
      left92: 15,
      left96: 25.5,
      left97: 68,
      leftNow: 99.8,
      // aritcle
    }
  }
}
</script>

<style lang="scss" scoped>
  .home {
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 80vh;
  }
  .upper {
    position:relative;
    width: 100%;
    height: calc((100% - 10px) / 2);
  }
  .lower {
    position:relative;
    width: 100%;
    height: calc((100% - 10px) / 2);
  }
</style>
