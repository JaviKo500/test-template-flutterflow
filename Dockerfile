FROM nginx:1.21.1-alpine

# copying all the files from your file system to container file system
COPY build/web /usr/share/nginx/html
COPY myflutterapp.conf /etc/nginx/conf.d/default.conf

EXPOSE 80


#aws configure --profile test   //para crear profile
#export AWS_PROFILE=test //para usar ese profile
#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 736960933798.dkr.ecr.us-east-1.amazonaws.com

#flutter build web --release --web-renderer html

#3flutter build web --release --web-renderer canvaskit

#flutter build web --release --no-tree-shake-icons

#flutter build web --release

#estos solo en intel
#docker build -t testfront .
#docker build --no-cache -t testfront .
#docker tag testfront:latest 736960933798.dkr.ecr.us-east-1.amazonaws.com/testfront:latest
#docker push 736960933798.dkr.ecr.us-east-1.amazonaws.com/testfront:latest
#fin comandos en intel

#usar buildx para generar en apple m1 para x86 o amd64 que son los que usan los contenedores en aws
#docker buildx create --use  //para usar un builder multiplataforma
#4 docker buildx build --platform linux/amd64 --push -t 736960933798.dkr.ecr.us-east-1.amazonaws.com/testfront:latest .
