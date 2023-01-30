FROM python:alpine

RUN mkdir /app && \
    adduser -D gunicorn && \
    chown gunicorn:gunicorn /app

RUN apk upgrade expat   
USER gunicorn
ENV PATH="/app/bin:${PATH}"
COPY /app/requirements.txt .
RUN python3 -m venv /app && source /app/bin/activate && python3 -m pip install --use-pep517 -r requirements.txt
COPY app/ /app/
EXPOSE 5000
WORKDIR /app/
CMD ["gunicorn", "-b", "0.0.0.0:5000", "wsgi:chuck"]
