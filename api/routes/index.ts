import Express from 'express'

const router = Express.Router()

router.get('/', (req, res, next) => {
    res.send('テスト')
})

export default router
