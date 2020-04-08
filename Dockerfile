FROM ubuntu:latest
LABEL version=1.0 maintainer="Balaram Pratap <balarampratap04121999@gmail.com>"
RUN apt-get update && apt-get update --fix-missing && apt-get install -y python3 python-pip
RUN apt-get install -y curl && apt-get update --fix-missing
COPY application.py /root/pythonapp/
copy req_packages /root/pythonapp/
CMD ["echo","Hello User! Welocme to Hello World Python Flask Application"]
WORKDIR /root/pythonapp/
EXPOSE 5000
RUN ["pip", "install", "-r", "req_packages"]
ENTRYPOINT ["python" , "application.py"]
