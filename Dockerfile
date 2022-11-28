FROM       node:16  
RUN        useradd roboshop  
WORKDIR    /home/roboshop  
COPY       server.js .
COPY       package.json .
RUN        npm install   
RUN        wget https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem
ENTRYPOINT [ "node" , "server.js" ]


