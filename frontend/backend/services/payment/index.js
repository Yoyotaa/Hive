const express = require('express');
const app = express();
const PORT = 3002;

// Route par défaut
app.get('/', (req, res) => {
  res.send('Payment-service Node.js en cours d\'exécution\n');
});

// Lancement du serveur
app.listen(PORT, () => {
  console.log(`Payment-service Node.js démarré sur le port ${PORT}`);
});
