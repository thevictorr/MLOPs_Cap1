FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y make

COPY . .

RUN make install

CMD ["python", "hello.py"]