<template>
    <div class="test">
        <h1>Test Page</h1>
        <v-btn large color="primary">テスト</v-btn>
        <p>Count: {{ count }}</p>
        <p>DoubleCount: {{ doubleCount }}</p>
        <v-btn @click="increment">Up</v-btn>
    </div>
</template>

<script setup lang="ts">
import { useStoreCounter } from '../store/counter'
import { storeToRefs } from 'pinia'

const counter = useStoreCounter()
const { count, doubleCount } = storeToRefs(counter)
const { increment } = counter
</script>
