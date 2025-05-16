const express = require('express')
const app = express()
// const fs = require('fs/promises')
const port = process.env.PORT || 3000;

app.get('/load', async (req, res) => {
    res.send('Hello World!')
    while(true){
        // await fs.readFile('./store.json');
    }
    res.send({});
  })

app.get('/', (req, res) => {
  res.send({"message": "Hi from server 2.0"})
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})