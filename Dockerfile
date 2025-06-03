# Partimos de la imagen oficial de Chatwoot
FROM chatwoot/chatwoot:latest

# (Aquí irían tus pasos de rebranding/plugins, si los tuvieras)
# COPY branding/   /app/branding
# COPY overrides/  /app/overrides
# COPY plugins/    /app/plugins

# Al arrancar el contenedor, primero preparamos la base de datos
# y luego levantamos Puma en el puerto que Render inyecta en $PORT
CMD bundle exec rails db:prepare \
    && bundle exec rails s -b 0.0.0.0 -p $PORT -e production
