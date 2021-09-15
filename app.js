const express = require('express')
const app = express()
const { User } = require('./models')

const PORT = process.env.PORT || 3000

app.get('/', async (req, res) => {
  try {
    const users = await User.findAll({})
    res.status(200).json({
      message: 'Having fun with docker',
      users,
    })
  } catch (err) {
    console.log(err)
    res.status(500).json({ err: err.message })
  }
})

app.listen(PORT, () => {
  console.log('App listening on port 3000!')
})
