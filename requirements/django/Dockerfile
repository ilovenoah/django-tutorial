FROM python:3.12
RUN mkdir /code 
WORKDIR /code
COPY . /code/
ENTRYPOINT [ "bash", "entrypoint.sh" ]
RUN pip install -r requirements.txt