FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install flask==2.0.1

EXPOSE 5000

CMD ["python", "-m", "http.server", "5000"]
