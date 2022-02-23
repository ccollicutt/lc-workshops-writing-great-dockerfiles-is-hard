FROM python:3.8-slim-buster

WORKDIR /app

COPY tanzu-build-service-sample-apps/sample-apps/python/ ./
RUN pip3 install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]