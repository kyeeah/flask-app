FROM python:3.8.0

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app app

CMD ["flask", "run", "--host=0.0.0.0"]
