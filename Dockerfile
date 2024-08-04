# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install pip and update setuptools
RUN pip install --upgrade pip setuptools

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port Flask is running on
EXPOSE 5000

# Command to run the application
CMD ["python", "bot.py"]
