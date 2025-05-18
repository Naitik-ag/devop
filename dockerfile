FROM python:3.10

# Set the working directory
WORKDIR /demo

# Copy the requirements file into the container
COPY requirements.txt /demo/requirements.txt

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /demo

# Run the application using uvicron
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
