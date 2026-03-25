
FROM python:3.10-slim


WORKDIR /app


RUN pip install --no-cache-dir flask pytest


COPY . .


RUN pytest test_app.py


RUN ls -l app.py

EXPOSE 5000


CMD ["python", "app.py"]