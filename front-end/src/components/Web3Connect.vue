<template>
  <div>
    <button @click="connectWallet">Connect Wallet</button>
    <div v-if="account">
      Connected account: {{ account }}
    </div>
  </div>
</template>

<script lang="ts">
import Web3 from 'web3';

export default {
  data() {
    return {
      account: null,
      web3: null,
    };
  },
  methods: {
    async connectWallet() {
      if (window.ethereum) {
        try {
          await window.ethereum.request({ method: 'eth_requestAccounts' });
          this.web3 = new Web3(window.ethereum);
          const accounts = await this.web3.eth.getAccounts();
          this.account = accounts[0];
        } catch (error) {
          console.error("User denied account access");
        }
      } else {
        console.error("No Ethereum provider found. Install MetaMask.");
      }
    },
  },
};
</script>

<style scoped>
button {
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
}
</style>
