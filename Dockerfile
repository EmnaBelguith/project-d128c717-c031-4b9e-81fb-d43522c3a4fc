FROM python:3.10-slim-bullseye
WORKDIR /app
COPY . /app/
RUN pip install .
RUN pip install gunicorn
EXPOSE 5000
ENV PYTHONUNBUFFERED=1
ENV FLASK_APP=talkshow-extended/talkshow/app.py
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "talkshow-extended.talkshow.app:app"]