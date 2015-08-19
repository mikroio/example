FROM python:2
RUN pip install Flask
ADD . /code
WORKDIR /code
CMD python app.py
EXPOSE 5000
