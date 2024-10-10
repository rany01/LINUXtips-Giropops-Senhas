FROM alpine:3.15.9
RUN apk update && apk add --no-cache python3 py3-pip git
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST=redis
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
