FROM python:alpine
LABEL maintainer="containers@gsclabs.cc"
RUN pip install flask gunicorn yieldfrom.urllib.request requests
COPY app/ /app/
EXPOSE 80
WORKDIR /app/
CMD ["gunicorn"  , "-b", "0.0.0.0:80", "wsgi:application"]