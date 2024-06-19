# Use the official Python 3.10.0 base image
FROM python:3.10.0-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port Streamlit will run on
EXPOSE 8051

# Command to run the application
CMD ["streamlit", "run", "app.py", "--server.port=8051"]