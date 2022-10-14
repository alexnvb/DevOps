FROM python:3.8-slim-busters

WORKDIR /app

COPY requirements.txt requirements.txt
RUN apt update -y && pip install pip && pip install -r requirements.txt

COPY main.py main.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]