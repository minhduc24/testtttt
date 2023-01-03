<template>
  <div id="app">
    <v-app>
      <nav-bar></nav-bar>
      <router-view />
    </v-app>
  </div>
</template>

<style lang="scss">
@import url('https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap');

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: white;
    color: #2c3e52;

    &.router-link-exact-active {
      color: #42b985;
    }
  }
}
</style>
<script>
import i18n from '@/plugins/locales/i18n.js';
import NavBar from './views/NavBar.vue';
export default {
  components: {
    NavBar: NavBar
  },
  beforeMount() {
    if (localStorage.getItem('locale')) {
      i18n.locale = localStorage.getItem('locale');
    } else {
      i18n.locale = navigator.languages[1];
    }
  }
};
</script>
