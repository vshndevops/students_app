// routes/studentsRoutes.js

const express = require('express');
const router = express.Router();
const studentsController = require('../controllers/studentsController');

router.get('/', studentsController.getStudents);
router.post('/', studentsController.addStudent);
router.put('/:id', studentsController.updateStudent);

module.exports = router;
