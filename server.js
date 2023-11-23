const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Middleware para servir archivos estáticos
app.use(express.static('public'));

app.get('/', (req, res) => res.sendFile(__dirname + '/index.html'));

app.listen(port, () => console.log(`Servidor corriendo en el puerto ${port}!`));
