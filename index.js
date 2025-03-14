const express = require('express');
const app = express();
const path = require('path');

app.use(express.static('public')); // Assure-toi que ton HTML est dans le dossier 'public'

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Serveur en cours d'exécution sur le port ${PORT}`);
});


