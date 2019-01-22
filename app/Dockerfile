FROM python:3.7.2-alpine3.7

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt 

EXPOSE 5000

COPY hello_world.py .

CMD [ "python3", "./hello_world.py" ]