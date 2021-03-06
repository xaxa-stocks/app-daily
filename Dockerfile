FROM python:3.10-alpine

WORKDIR /app

RUN apk update
RUN apk add git

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install git+https://github.com/xaxa-stocks/crawlerlib.git@develop

COPY daily_app.py .

CMD [ "python", "daily_app.py" ]