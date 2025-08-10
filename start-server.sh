#!/bin/bash

echo "BMG Solutions Landing Page - Local Development Server"
echo "Choose your preferred server option:"
echo "1) Python HTTP Server (Python required)"
echo "2) Node.js HTTP Server (Node.js required)"
echo "3) PHP Server (PHP required)"

read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo "Starting Python HTTP Server..."
        # Check if Python 3 is available, if not try Python 2
        if command -v python3 &>/dev/null; then
            python3 -m http.server 3000
        elif command -v python &>/dev/null; then
            python -m SimpleHTTPServer 3000
        else
            echo "Error: Python is not installed. Please install Python or choose another option."
            exit 1
        fi
        ;;
    2)
        echo "Starting Node.js HTTP Server..."
        # Check if npm and http-server are installed
        if ! command -v npm &>/dev/null; then
            echo "Error: npm is not installed. Please install Node.js and npm first."
            exit 1
        fi
        
        if ! command -v http-server &>/dev/null; then
            echo "Installing http-server..."
            npm install -g http-server
        fi
        
        http-server -p 3000
        ;;
    3)
        echo "Starting PHP Server..."
        # Check if PHP is installed
        if command -v php &>/dev/null; then
            php -S localhost:3000
        else
            echo "Error: PHP is not installed. Please install PHP or choose another option."
            exit 1
        fi
        ;;
    *)
        echo "Invalid choice. Please run the script again and select a valid option."
        exit 1
        ;;
esac
