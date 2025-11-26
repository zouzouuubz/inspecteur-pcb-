FROM python:3.9-slim

# System deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential git ffmpeg libgl1 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements early for caching
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy source
COPY src/ ./src/
COPY models/ ./models/
COPY .env ./

EXPOSE 8000

ENV PYTHONUNBUFFERED=1

CMD ["uvicorn", "src.app.main:app", "--host", "0.0.0.0", "--port", "8000"]