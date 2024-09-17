FROM python:3.11.9

WORKDIR /app

COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
