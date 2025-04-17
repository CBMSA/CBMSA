
const express = require('express');
const router = express.Router();

let transactions = [];

router.get('/', (req, res) => {
    res.json(transactions);
});

router.post('/send', (req, res) => {
    const { from, to, amount, currency } = req.body;
    const tx = { from, to, amount, currency, date: new Date() };
    transactions.push(tx);
    res.status(200).json({ message: 'Transaction successful', tx });
});

module.exports = router;
