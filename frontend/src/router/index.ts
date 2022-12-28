import { createRouter, createWebHistory } from 'vue-router'
import Test from '../pages/Test.vue'

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/',
            name: 'Test',
            component: Test,
        },
    ],
})

export default router
