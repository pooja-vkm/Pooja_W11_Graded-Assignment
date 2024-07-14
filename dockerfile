# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /microservice

# Copy the requirements.txt file into the container at /microservice
COPY requirements.txt /microservice/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /microservice/requirements.txt

# Copy the current directory contents into the container at /microservice
COPY . /microservice

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
