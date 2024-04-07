FROM python:3.11

WORKDIR /code
COPY . /code
#COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN python train.py
EXPOSE 80
CMD ["python", "test.py"]

