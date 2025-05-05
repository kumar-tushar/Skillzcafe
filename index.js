const express = require("express");
const app = express();
const port = 5000;

// Route: /welcome
app.get("/welcome", (req, res) => {
  res.send("Hello World, How are you?");
});

// Start server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
