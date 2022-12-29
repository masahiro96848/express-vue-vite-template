import { Router } from 'express'

const router = Router()
router.get('/', (req, res, next) => {
    res.send('ルーティング完了')
})

export default router
