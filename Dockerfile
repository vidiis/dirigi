const express = require('express');
const app = express();

// Define el puerto usando la variable de entorno PORT o 8080 si no está definida
const PORT = process.env.PORT || 8080;

app.use(express.static('public'));

// El resto de tu configuración del servidor

app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
