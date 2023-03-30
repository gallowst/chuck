FROM python:alpine

LABEL version="1.0"
LABEL description="Dockerized Flask application"

RUN adduser -u 1001 -D gunicorn && \
    mkdir /app && \
    chown gunicorn:gunicorn /app

USER gunicorn
ENV PATH="/app/bin:${PATH}"
COPY app/requirements.txt /app/
RUN python3 -m venv /app && source /app/bin/activate && \
    pip install --no-cache-dir --use-pep517 -r /app/requirements.txt && \
    rm -rf /var/cache/apk/*

COPY app/ /app/
WORKDIR /app/
EXPOSE 5000
CMD ["gunicorn", "-b", "0.0.0.0:5000", "wsgi:chuck"]