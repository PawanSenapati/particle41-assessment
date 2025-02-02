# Use a minimal base image
FROM python:3.9-slim

# Create a non-root user
RUN groupadd -r appgroup && useradd -r -g appgroup appuser

# Set the working directory
WORKDIR /app

# Copy only necessary files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set permissions and switch user
RUN chown -R appuser:appgroup /app
USER appuser

# Expose port 5000 and start the application
EXPOSE 5000
ENV FLASK_APP=app.py

# Run the server in Cloud Run
CMD ["flask", "run", "--host=0.0.0.0"]