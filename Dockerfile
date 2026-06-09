FROM nginx:alpine

# Copia os arquivos HTML, CSS e JS para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expõe a porta 80
EXPOSE 80

# Comando padrão (nginx já é iniciado por padrão)
CMD ["nginx", "-g", "daemon off;"]
