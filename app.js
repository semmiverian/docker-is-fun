const express = require('express')
const app = express()

const PORT = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.status(200).json({
    message: 'Having fun with docker asoy geboy'
  })
})

app.listen(PORT, () => {
  console.log('App listening on port 3000!')
})
