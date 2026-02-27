# 1. Base image Python nhẹ
FROM python:3.11-slim

# 2. Set working directory trong container
WORKDIR /app

# 3. Copy requirements trước để tận dụng cache
COPY requirements.txt .

# 4. Cài thư viện
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy toàn bộ source code
COPY . .

# 6. Lệnh chạy mặc định
CMD ["python", "easychair.py"]