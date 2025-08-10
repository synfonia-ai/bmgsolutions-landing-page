# BMG Solutions Landing Page

A professional landing page for BMG Solutions, featuring bilingual support (English/Vietnamese), modern design, and responsive layout.

## Running Locally

There are several ways to run the website locally:

### Option 1: Using the start script (Recommended)

1. Make the script executable:
```bash
chmod +x start-server.sh
```

2. Run the script:
```bash
./start-server.sh
```

3. Choose your preferred server option when prompted.

4. Open your browser and visit: `http://localhost:3000`

### Option 2: Manual Methods

#### Using Python (Python required)
```bash
# If you have Python 3:
python3 -m http.server 3000

# If you have Python 2:
python -m SimpleHTTPServer 3000
```

#### Using Node.js (Node.js required)
```bash
# Install http-server globally (if not already installed)
npm install -g http-server

# Start the server
http-server -p 3000
```

#### Using PHP (PHP required)
```bash
php -S localhost:3000
```

## Features

- 🌐 Bilingual support (English/Vietnamese)
- 💼 Professional modern design
- 📱 Responsive layout
- 🚀 Services showcase
- 👥 Client testimonials
- 📝 Contact form
- ⚡ Fast and lightweight

## Technologies Used

- React (via CDN)
- TailwindCSS (via CDN)
- Modern JavaScript
- Responsive CSS