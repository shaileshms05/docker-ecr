FROM public.ecr.aws/docker/library/python:3.12-slim

WORKDIR /app
COPY . /app

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir flask

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]