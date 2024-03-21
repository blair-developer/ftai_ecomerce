// routes/about.js

const express = require('express');
const AboutRouter = express.Router();
const About = require('../models/about');

AboutRouter.get('/api/about', async (req, res) => {
  try {
    const aboutData = await About.findOne();
    res.json(aboutData);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// POST request to add new about data
AboutRouter.post('/api/about', async (req, res) => {
    try {
      const { title, description } = req.body; // Assuming the request body contains title and description fields
      const newAbout = new About({ title, description });
      await newAbout.save();
      res.status(201).json(newAbout); // Return the newly created about data
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
});

module.exports = AboutRouter;
