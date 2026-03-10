#!/bin/bash
echo "Starting Fake Product Detection System..."

cd backend
python3 -m venv venv 2>/dev/null
source venv/bin/activate
pip install -r requirements.txt -q
uvicorn main:app --reload &
BACKEND_PID=$!

cd ../frontend
npm install
npm start &
FRONTEND_PID=$!

echo ""
echo "Frontend: http://localhost:3000"
echo "Backend API: http://localhost:8000"
echo "API Docs: http://localhost:8000/docs"
echo "Press Ctrl+C to stop"

wait
