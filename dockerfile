FROM python:3.10-slim
WORKDIR /app

COPY requirements.txt .
# שדרוג pip מבטיח תאימות לחבילות חדשות
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]
