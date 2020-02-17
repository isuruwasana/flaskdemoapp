


FROM python:3.6

RUN mkdir /api
WORKDIR /api
ADD . /api/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/api/main.py"]
