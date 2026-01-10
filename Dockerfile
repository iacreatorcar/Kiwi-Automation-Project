# Usa Nginx come base
FROM nginx:alpine

# Rimuovi i file di default di nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tutti i file del portfolio
COPY . /usr/share/nginx/html/

# Esponi la porta 80
EXPOSE 80

# Label per metadata
LABEL maintainer="Carmine D'Alise"
LABEL description="Portfolio consolidato con progetti Kiwi e PetStyle"
