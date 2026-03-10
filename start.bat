@echo off
echo Starting Fake Product Detection System...

start "Backend" cmd /k "cd backend && python -m venv venv 2>nul & venv\Scripts\activate && pip install -r requirements.txt -q && uvicorn main:app --reload"
timeout /t 3 /nobreak >nul

start "Frontend" cmd /k "cd frontend && if not exist node_modules npm install && npm start"

echo.
echo Frontend: http://localhost:3000
echo Backend API: http://localhost:8000
echo API Docs: http://localhost:8000/docs
