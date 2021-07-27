# syntax=docker/dockerfile:1

FROM python:3.8.10

EXPOSE 5000

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app /app

CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "5000"]