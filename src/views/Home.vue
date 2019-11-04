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
        @yearSelect="yearSelect"
      />
      <HomeYear 
        :yearSelected="yearSelected" 
        :year="year92"
        @yearSelect="yearSelect"
      />
      <HomeYear 
        :yearSelected="yearSelected" 
        :year="year97"
        @yearSelect="yearSelect"
      />
      <HomeYear 
        :yearSelected="yearSelected" 
        :year="yearNow"
        @yearSelect="yearSelect"
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
        left: '2.5%'
      },
      year92: {
        title: '1992-1996年',
        sub: '凝聚',
        article: "古典音樂協會成立後，早期舉辦了多場音樂講座、音樂欣賞或音樂會，居然從來沒賠過錢！關鍵在於「都靠自己人。」，協會的活動經費，有百分之三十來自鎮上的店家，例如有來自咖啡館、電腦行、中藥行等各樣的店，店家除了經費贊助之外，更是協會舉辦活動時最佳的宣傳點。只要宣傳單、海報交給店家，店家就自動自發地將宣傳品放置於醒目的地方，供居民取閱，必要時也會大力推薦。協會同樣的也會運用各種方法和店家「交流」。譬如每次會議，就會選擇在鎮上不同的店裡開會，一家一家地去消費，這麼做一方面可以促進消費，再者可以帶動店家的參與感，得到店家更多的肯定與支持。直到1994年4月協會正式立案成立，擴大更名為「台中縣古典音樂協會」，會員人數大為增加，會務蒸蒸日上，音樂會一場一場的舉辦，音樂造鎮的夢想，於是在每一個人的心中燃起。",
        left: '15%'
      },
      year96: {
        title: '1996年',
        sub: '經典重現',
        article: "1995年，牛罵頭首屆藝文季21場次展演項目中，音樂即佔十餘場，即可知音樂協會推廣音樂之空前成功，而音樂推廣之形式亦極為多元化並深化落實，這些成功的推廣展演，也豐富了我們所有音樂協會成員的心靈層面及推展經驗。1996年，亦因1995年牛罵頭首屆藝文季的成功，激發古典音樂協會舉辦「牛罵頭音樂節」的決心，於是展開八月~十二月長達五個月的音樂節慶活動，內容由國際名家彼德密勒古列之鋼琴演奏小提琴家蘇顯達之獨奏，拉丁民族樂風之墨西哥傳統民俗樂，本地海線音樂家郭芝苑作品回顧等，到年終歲末之「聖誕音樂會」之節慶音樂，可說是一「長長又常常」的音樂季節啊。這樣的主題式音樂節、創下台灣小鎮舉辦音樂節慶首例。",
        left: '25.5%'
      },
      year97: {
        title: '1996-2010年',
        sub: '歷程',
        article: "1992年至今，從小型的音樂欣賞會、獨奏會到大型管絃樂團的演出早已超過三百多場，從在地演奏家、國內知名演奏家到國際級的演奏家都曾經親臨這個小鎮參與演出。特別從1996年夏季推出的 「牛罵頭音樂節」不僅是台灣中部重要的音樂嘉年華會，且活動所規劃之主題也能與世界同步與接軌，如1997年為紀念舒伯特兩百年誕辰，推出「向舒伯特致敬」音樂節、2000年為紀念巴哈逝世250週年，推出「重見巴哈」音樂節，就在這一年一位清水的鄉親從歐洲歸來，剛下飛機回到清水，看到沿路音樂節的路旗飄揚，上面寫著「重見巴哈」及巴哈圖像，告訴我們說：不僅歐洲各國在紀念巴哈，想不到清水小鎮竟然也同步在紀念巴哈，讓他覺得好感動。",
        left: '68%'
      },
      yearNow: {
        title: '影響',
        sub: '現在',
        article: "2000年10月，國際著名的「莫斯科國家管絃樂團」在清水首演，在台北記者會有人問到：為何會選擇在清水小鎮首演？當時身為活動承辦人的我感性回答說：「因為這裡有一群愛樂的朋友，十年前成立音樂協會時，我們經常大夥包著遊覽車北上國家音樂廳聆聽一流樂團的演出，沒有人想到十年後，一流的樂團卻需搭遊覽車遠赴清水為我們演出」，才不過十年的光陰，不僅這裡的音樂人口明顯增加了，我們左鄰右舍也出現了許多學音樂的小孩，更感動的是：有許多人還是當年音樂會的義工呢！音樂造鎮在清水，未來不僅要有培育音樂人才的音樂班，更需要培養更多的音樂聆賞人口，未來應繼續積極推動音樂研習營、主題音樂節等.，讓更多非音樂班的子弟也能加入音樂造鎮的園地，也許若干年後，便可由我們的子弟組成「社區管絃樂團」，屆時由自己的樂團演奏自己的音樂作品，不會再只是夢想。音樂節得推動與舉行，不僅讓音樂進入每一個人的心中，成為清水人生活中的一部分，清水小鎮同時擁有清水國小、國中及高中三所音樂班，真可謂台灣奇蹟。而小鎮在社區營造的推動及文化資產的守護，也因此造成小鎮的風潮，到了現在小鎮擁有19處市定的文化資產及高美野生動保護區，每年超過500萬的觀光客到清水參訪。",
        left: '99.8%'
      },
      // aritcle
    }
  },
  methods: {
    yearSelect(e) {
      this.year91.left = '2.5%'
      this.year92.left = '15%'
      this.year96.left = '25.5%'
      this.year97.left = '68%'
      this.yearNow.left = '99.8%'
      switch(e) {
        case this.year91:
          this.year92.left = "15% + 300px"
          break
        // case this.year96:
        //   this.year91.left = 20
        //   this.year92.left = 15
        //   this.year96.left = 25.5
        //   this.year97.left = 68
        //   this.yearNow.left = 99.8
        //   break
        // case this.year97:
        //   this.year91.left = 2.5
        //   this.year92.left = 15
        //   this.year96.left = 25.5
        //   this.year97.left = 68
        //   this.yearNow.left = 99.8
        //   break
        case this.yearNow:
          this.yearNow.left = '99.8% - 300px'
          break
      }
      this.yearSelected = e
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
