# Use a imagem oficial do MySQL como base
FROM mysql:latest

# Copie o arquivo SQL para o diretório /docker-entrypoint-initdb.d/
COPY metabase.sql /docker-entrypoint-initdb.d/

# O script será executado durante o processo de inicialização
# Ele importará o backup SQL para o MySQL
# Isso é feito automaticamente pelo Docker quando o contêiner é iniciado
VOLUME /var/lib/mysql_data