FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requeriments.txt
COPY . .
ENV REDIS_HOST=redis
EXPOSE 5000
CMD ["python", "app.py"]

