const express = require("express");

const router = express.Router();

router.get("/", (req, res) => {
    res.status(200).json({
        application: "Terraform Node.js API",
        version: "1.0.0",
        status: "Running"
    });
});

router.get("/health", (req, res) => {
    res.status(200).json({
        status: "Healthy",
        service: "Terraform Node.js API",
        uptime: process.uptime(),
        timestamp: new Date().toISOString()
    });
});

router.get("/deployment", (req, res) => {
    res.status(200).json({
        infrastructure: "Terraform",
        provider: "Docker",
        deployment: "Provisioned"
    });
});

module.exports = router;
