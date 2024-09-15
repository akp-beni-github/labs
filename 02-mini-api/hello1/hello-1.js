const express = require('express')
const app = express()

app.get('/hello1', function (req, res) {
	res.send('Hello-1')
})

app.listen(8000, () => console.log('Hello-1 listening on port 8000!'))