FROM nginx:alpine

WORKDIR /app

# Copy static content
COPY ./dist/ /app/public 

# Copy `nginx.conf`
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 
