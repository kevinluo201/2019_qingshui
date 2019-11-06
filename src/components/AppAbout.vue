<template>
  <div id="about" :class="{ shown: showAbout }">
    <aside :class="{ shown: showAbout }">
      <img src="~@/assets/icon-menu-esc.svg" class="close" alt="關閉" @click="$emit('closeAbout')">
      <h2>關於臺中數位藝術策展</h2>
      <article>
        <p>「漁寮囝仔討海網」原是下寮社區發展協會2017年出版的書籍，紀錄了由下寮社區自主發起，並邀請文史工作團隊共同紀錄整理當地的口述歷史。這一群對社區充滿熱情的人，拜訪地方耆老，將重要的漁村記憶保留下來，重現早年討海捕魚的情景和捕魚的相關器具、知識，描繪大海對漁村人的意義。</p>
        <p>從清朝道光年間起，梧棲港崛起，漸次超越鹿港，從最初的小漁村，發展到私口、小口再到日治時期的特許輸出入港，貿易成為梧棲港街興衰的命脈。梧棲最大宗的貿易品項之一，是將葫蘆墩盛產的米穀出口到福建，另一項就是霧峰林家所主導的樟腦事業，藉梧棲港出口東勢的樟腦。海洋可說與梧棲地區的發展息息相關，先民的生命史緊密嵌在大海與航運的脈絡之中。</p>
      </article>
      <div class="credit">
        <h3 class="name">指導單位</h3>
        <div class="images">
          <img src="~@/assets/credit-culture.png" alt="文化局"><br>
          <img src="~@/assets/credit-tc.png" alt="台中文化局">
        </div>
      </div>
      <div class="credit">
        <h3 class="name">指導單位</h3>
        <div class="images">
          <img src="~@/assets/credit-tgic.png" alt="台地中心">
        </div>
      </div>
      <div class="credit">
        <h3 class="name">指導單位</h3>
        <div class="images">
          <img src="~@/assets/credit-inco.png" alt="多邊圓工作室">
        </div>
      </div>
      <footer>
        本網站為臺中市政府文化局製作，受文化部國家文化記憶庫計畫經費撥補，其上刊載之所有資料與素材，受著作權保護之範圍，得於文化部國家文化記憶庫相關業務網站或資料庫，以及臺中學數位典藏資料庫、臺灣數位文化中心統一入口網站進行流通及推廣使用。逾此範圍之利用不在授權提供之列，使用者並須自負合理使用或其他著作權利例外及限制之主張責任。
      </footer>
    </aside>
  </div>
</template>

<script>
export default {
  props: ['showAbout']
}
</script>

<style lang="scss" scoped>
#about {
  height: 100vh;
  width: 100vw;
  z-index: -100;
  position: absolute;
  top: 0;
  left: 0;
  background: rgba(35, 35, 35, 0);
  @include transition(background-color 0.5s);
  &.shown {
    z-index: 200;
    background: rgba(35, 35, 35, 0.8);
  }
}

aside {
  width: 375px;
  height: 100vh;
  overflow-y: scroll;
  background: rgba(255, 255, 255, 0.8);
  position: absolute;
  top: 0;
  right: -375px;
  color: black;
  padding: 27px 46px 25px 25px;
  @include transition(right 0.5s ease-out);

  &.shown {
    right: 0;
  }
}

.close {
  width: 24px;
  height: 24px;
  position: absolute;
  z-index: 101;
  top: 27px;
  right: 22px;
  cursor: pointer;
  @include transition(transform 0.2s);
  &:hover {
    transform: rotate(270deg);
  }
}

h2 {
  font-size: 1rem;
  margin-bottom: 15px;
}

article {
  margin-bottom: 30px;
  text-align: left;
}

.credit {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 35px;
  .name {
    font-size: 0.75rem;
    font-weight: bold;
    color: #AAA;
    margin: 0;
  }
  img {
    width: 150px;
  }
}

footer {
  margin-top: 50px;
  color: #AAA;
  font-size: 0.75rem;
}

</style>