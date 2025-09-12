FROM ubuntu:24.04

# Install dependencies
RUN apt update -y 
RUN apt install -y python3 python3-pip nginx

# Install Flask
COPY requirements.txt /
RUN pip3 install -r /requirements.txt

# Copy app
COPY app.py /app/app.py
WORKDIR /app

# Replace default nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose HTTP port
EXPOSE 80

# Run both nginx and flask using a script or supervisor
CMD service nginx start && python3 app.py
