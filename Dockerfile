# Sample Dockerfile
FROM public.ecr.aws/docker/library/python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir flask
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"] 