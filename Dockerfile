FROM public.ecr.aws/docker/library/python:3.12-alpine

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir flask

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]