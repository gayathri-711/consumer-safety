# Fake vs Real Product Detection System

🛡️ AI-powered platform to detect counterfeit products using image analysis, QR/Barcode verification, and machine learning.

## ✨ Features

- **Upload Image** – Upload a product photo for AI analysis
- **Camera** – Capture product in real time for verification
- **QR / Barcode Scanner** – Scan codes for instant verification
- **Why Fake?** – Clear explanations of why a product is flagged as fake or genuine

## 🚀 Quick Start

### Windows
```bash
start.bat
```

### Linux/Mac
```bash
chmod +x start.sh
./start.sh
```

### Manual

**Backend:**
```bash
cd backend
python -m venv venv
venv\Scripts\activate  # Windows
pip install -r requirements.txt
uvicorn main:app --reload
```

**Frontend:**
```bash
cd frontend
npm install
npm start
```

## 🌐 Access

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:8000
- **API Docs**: http://localhost:8000/docs

## 📋 Prerequisites

- Python 3.8+
- Node.js 16+
- (Optional) MongoDB for persistence
