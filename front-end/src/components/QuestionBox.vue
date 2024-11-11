<template>
  <div class="question-box">
    <i class="index"> #{{ index }}</i>
    <p class="question">{{ question }}</p>
    <div class="vote">
      <button v-for="(vote, index) in votes" :key="index">
        {{ vote }}
      </button>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  name: 'QuestionBox',
  props: {
    question: {
      type: String,
      required: true,
    },
    votes: {
      type: Array, // Specify that it's an array
      required: true,
    },
    index: {
      type: Number,
      required: true
    }
  },
}
</script>

<style scoped>
.question-box {
  border: 1px solid #ccc;
  padding: 16px;
  border-radius: 8px;
  margin: 16px 0;
}

.question {
  font-size: 18px;
  margin-bottom: 8px;
}

.vote {
  font-size: 16px;
  color: #555;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}

.index {
  color: #888;
  font-size: 14px;
}

</style>
