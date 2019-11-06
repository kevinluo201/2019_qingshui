<template>
  <div id="home-animation">
    <img class="img1" src="@/assets/img-hp-anm-01.png" alt="01" />
    <img class="img2" src="@/assets/img-hp-anm-02.png" alt="02" />
    <img class="img3" src="@/assets/img-hp-anm-03.png" alt="03" />
    <img class="img4" src="@/assets/img-hp-anm-04.png" alt="04" />
    <img class="img5" src="@/assets/img-hp-anm-05.png" alt="05" />
    <img class="img6" src="@/assets/img-hp-anm-06.png" alt="06" />
    <img class="img7" src="@/assets/img-hp-anm-07.png" alt="07" />
    <img class="img8" src="@/assets/img-hp-anm-08.png" alt="08" />
  </div>
</template>

<script>
export default {
  mounted() {
    let img8 = document.getElementsByClassName('img8')[0];
    img8.addEventListener('animationend', () => {
      this.$emit('animationEnd');
    });
  }
}
</script>

<style lang="scss" scoped>
$fade-dist: 10%;
@mixin desktop-from-to($left) {
  from {
    left: calc(#{$left} - #{$fade-dist});
    opacity: 0;
  }
  to {
    left: $left;
    opacity: 1;
  }
}

@include keyframes(fadeLeftIn1) { @include desktop-from-to(-4.69%); }
@include keyframes(fadeLeftIn2) { @include desktop-from-to(1.41%); }
@include keyframes(fadeLeftIn3) { @include desktop-from-to(16.17%); }
@include keyframes(fadeLeftIn4) { @include desktop-from-to(23.91%); }
@include keyframes(fadeLeftIn5) { @include desktop-from-to(37.11%); }
@include keyframes(fadeLeftIn6) { @include desktop-from-to(45.16%); }
@include keyframes(fadeLeftIn7) { @include desktop-from-to(56.72%); }
@include keyframes(fadeLeftIn8) { @include desktop-from-to(69.38%); }


@mixin ani($aniName, $delay) {
  opacity: 0;
  animation-name: $aniName;
  animation-duration: 2s;
  animation-timing-function: ease-out;
  animation-delay: $delay;
  animation-fill-mode: forwards;
}

$gap: 1;
.img1 {
  position: absolute;
  top: 29.58%;
  width: 24%;
  z-index: 5;
  @include ani(fadeLeftIn1, #{$gap *  2}s);
}

.img2 {
  position: absolute;
  top:35.97%;
  width: 24%;
  z-index: 10;
  @include ani(fadeLeftIn2, #{$gap *  4}s);
}
.img3 {
  position: absolute;
  top: 13.61%;
  width: 24%;
  z-index: 15;
  @include ani(fadeLeftIn3, #{$gap *  6}s);
}
.img4 {
  position: absolute;
  top: 41.25%;
  width: 24%;
  z-index: 20;
  @include ani(fadeLeftIn4, #{$gap *  8}s);
}
.img5 {
  position: absolute;
  top: 23.19%;
  width: 24%;
  z-index: 15;
  @include ani(fadeLeftIn5, #{$gap *  10}s);
}
.img6 {
  position: absolute;
  top: 41.25%;
  width: 24%;
  z-index: 20;
  @include ani(fadeLeftIn6,  #{$gap * 12}s);
}
.img7 {
  position: absolute;
  top: 15.14%;
  width: 28%;
  z-index: 15;
  @include ani(fadeLeftIn7,  #{$gap * 14}s);
}
.img8 {
  position: absolute;
  top: 28.89%;
  width: 30%;
  z-index: 20;
  @include ani(fadeLeftIn8,  #{$gap * 14}s);
}
</style>