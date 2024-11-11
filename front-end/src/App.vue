<script setup lang="ts">
// import { RouterLink, RouterView } from 'vue-router'
import QuestionBox from './components/QuestionBox.vue'
import Web3Connect from './components/Web3Connect.vue';

</script>

<template class="">
  <header>
    Daily Vote
  </header>
  <div class="wrapper">
    <QuestionBox question="What is your favorite color?" :votes="['Red', 'Blue', 'Yellow']" :index=0 />
    <Web3Connect />

  </div>

</template>

<!-- <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
      </nav> -->


<style scoped>
header {
  line-height: 1.5;
  width: 100%;
  position: fixed;
  top: 0;
  left: 0;
  max-height: 100vh;
  background: linear-gradient(90deg, rgba(255, 0, 150, 0.8), rgba(0, 204, 255, 0.8));
  color: white;
  font-size: 2rem;
  padding: 2rem;
  text-align: center;
  border-radius: 10px;
}

.wrapper {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(0, 0, 0, 0.1));
  padding: 2rem;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  nav {
    text-align: left;
    margin-left: -1rem;
    font-size: 1rem;
    padding: 1rem 0;
    margin-top: 1rem;
  }
}
</style>
