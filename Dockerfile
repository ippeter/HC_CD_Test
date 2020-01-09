FROM python:3.7.3-stretch

WORKDIR /app

COPY app.py /app/
COPY requirements.txt /app/
COPY model_data /app/model_data/

RUN pip install --upgrade pip && pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["python", "app.py"]
