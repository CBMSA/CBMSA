
const express = require('express');
const router = express.Router();

router.post('/evaluate', (req, res) => {
    const { txType, country, value } = req.body;

    let risk = 'low';
    if (txType === 'anonymous' || value > 1000000) {
        risk = 'high';
    }

    res.json({ riskLevel: risk, message: 'Evaluation complete' });
});

module.exports = router;
