// routes/teachersRoutes.js

const express = require('express');
const router = express.Router();
const teachersController = require('../controllers/teachersController');

router.get('/', teachersController.getTeacher);
router.post('/', teachersController.addTeacher);
router.put('/:id', teachersController.updateTeacher);

module.exports = router;
