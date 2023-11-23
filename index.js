// index.js

// Requiere el módulo express
const express = require('express');

// Crea una aplicación de express
const app = express();

// Define el puerto donde se va a correr el servidor. 
// Si hay un puerto definido en el entorno (ej. Heroku), úsalo. De lo contrario, usa 3000.
const PORT = process.env.PORT || 3000;

// Sirve archivos estáticos desde el directorio 'public', que puede contener HTML, CSS, JS, imágenes, etc.
app.use(express.static('public'));

// Ruta principal que responde con index.html
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

// Inicializa el servidor en el puerto especificado
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
