FROM python:3.10

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8001

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8001", "djangoProject.wsgi:application"]
