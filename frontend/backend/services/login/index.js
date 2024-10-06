const express = require('express');
const app = express();
const PORT = 3001;

// Route par défaut
app.get('/', (req, res) => {
  res.send('Login-service Node.js en cours d\'exécution\n');
});

// Lancement du serveur
app.listen(PORT, () => {
  console.log(`Service Node.js démarré sur le port ${PORT}`);
});
