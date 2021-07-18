<template>
  <div class="container">
    <div>
      <h1 class="title">
        Zenn-app
      </h1>
      <h2 class="subtitle">
        {{ subTitle }}
      </h2>
      <button @click="getSomething()">
        タスク取得
      </button>
      <div>{{ tasks }}</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      subTitle: 'Zenn is good service!!',
      tasks: ""
    }
  },
  methods: {
    getSomething() {
      const url = '/api/v1/tasks'
      this.$axios.get(url)
        .then((res) => {
          this.tasks = res.data
        })
        .catch((error) => {
          console.log(error)
        })
    }
  },
}
</script>