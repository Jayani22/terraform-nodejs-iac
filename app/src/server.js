const app = require("./app");

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Terraform Node.js API running on http://localhost:${PORT}`);
});