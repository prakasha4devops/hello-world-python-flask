FROM python:3-alpine

WORKDIR /app

COPY . app.py /app/

RUN  pip install --no-cache-dir --upgrade pip &&\
     pip install  -r requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]