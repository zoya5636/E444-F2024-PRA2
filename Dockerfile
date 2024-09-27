FROM python:3.10-alpine

WORKDIR /

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 5000

CMD ["flask", "--app", "hello", "run", "--host=0.0.0.0", "--port=5000"]