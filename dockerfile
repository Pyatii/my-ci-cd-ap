FROM python:3.11-slim-bookworm
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV FLASK_APP=app.python
EXPOSE 5000
RUN ["flask", "run", "--host=0.0.0.0"]