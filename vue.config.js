module.exports = {
  css: {
    loaderOptions: {
      scss: {
        prependData: `@import "~@/css/variables.scss";`
      },
    }
  }
}