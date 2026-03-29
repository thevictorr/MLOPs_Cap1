FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN make install

CMD ["python", "hello.py"]