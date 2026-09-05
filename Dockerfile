FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Create a non-root user for security best practices
RUN adduser -D appuser && chown -R appuser /app
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
