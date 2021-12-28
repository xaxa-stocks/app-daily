FROM python:3.10-alpine

WORKDIR /app

COPY requeriments.txt .
RUN pip install --no-cache-dir -r requeriments.txt
RUN pip install git+https://github.com/xaxa-stocks/app-daily.git@develop

COPY daily_app.py .

CMD [ "python", "daily_app.py" ]