# Sample Dockerfile
FROM public.ecr.aws/docker/library/python:3.11-slim

WORKDIR /app
COPY . /app

# Update system packages and clean up to reduce image size
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir flask

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]