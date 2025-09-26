const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const bcrypt = require('bcryptjs');

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Setup MySQL connection
const db = mysql.createConnection({
  host: 'localhost',       
  user: 'root',           
  password: '',
  database: 'myapp'       
});

// Connect to MySQL
db.connect(err => {
  if (err) {
    console.error('MySQL connection error:', err);
    return;
  }
  console.log('Connected to MySQL');
});

// Signup route
app.post('/signup', async (req, res) => {
  const { fullName, email, password } = req.body;

  // Basic validation
  if (!fullName || !email || !password) {
    return res.status(400).json({ message: 'Please fill all fields' });
  }

  // Check if user already exists
  db.query('SELECT * FROM users WHERE email = ?', [email], async (err, results) => {
    if (err) return res.status(500).json({ message: 'Database error' });

    if (results.length > 0) {
      return res.status(409).json({ message: 'User already exists' });
    } else {
      // Hash the password
      const hashedPassword = await bcrypt.hash(password, 10);

      // Insert new user
      db.query(
        'INSERT INTO users (full_name, email, password) VALUES (?, ?, ?)',
        [fullName, email, hashedPassword],
        (err, results) => {
          if (err) return res.status(500).json({ message: 'Database error' });

          return res.status(201).json({ message: 'User created successfully' });
        }
      );
    }
  });
});

// Start server
const PORT = 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
