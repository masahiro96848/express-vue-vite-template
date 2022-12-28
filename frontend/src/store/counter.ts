import { defineStore } from 'pinia'
import { ref, computed } from 'vue'

export const useStoreCounter = defineStore('counter', () => {
    const count = ref(1)

    const increment = () => {
        count.value++
    }

    const doubleCount = computed(() => count.value * 2)

    return { count, increment, doubleCount }
})
