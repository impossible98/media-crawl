FROM python:3.12.2

WORKDIR /app

COPY requirements.txt /app
 
RUN pip install -r requirements.txt --no-cache-dir

COPY server.py /app

EXPOSE 7480

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "7480"]
