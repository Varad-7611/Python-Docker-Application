# pull official base image
FROM python:3.10-slim

# set working directory in the container
WORKDIR /app

# copy dependencies file
COPY requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy project files
COPY app.py .
COPY templates ./templates

# expose the port the app runs on
EXPOSE 5000

# command to run the application
CMD ["python", "app.py"]
