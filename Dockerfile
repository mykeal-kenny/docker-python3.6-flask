#Use an Official Python runtime as a parent image
FROM python:3.6-alpine3.6

#Set the working directory to /app
WORKDIR /app

#COPY the current directory contents into the container at /app
ADD . /app

#Install any neeeded packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Make port 80 available to the world outside this container
EXPOSE 80

#Define environment variable
ENV NAME world

#Run app.py when the container launches
CMD ["python", "app.py"]