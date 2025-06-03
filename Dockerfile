# Imagen oficial de Chatwoot como base
FROM chatwoot/chatwoot:latest

# —­­ futuro rebranding / plugins —­­
# COPY branding/   /app/branding
# COPY overrides/  /app/overrides
# COPY plugins/    /app/plugins

# COPY plugins/    /app/plugins


# Anulamos el ENTRYPOINT que trae Chatwoot para que no invoque rake por defecto
ENTRYPOINT []

# Comando final: prepara la base de datos y arranca el servidor en el puerto que Render asigne
CMD bundle exec rake db:chatwoot_prepare && bundle exec rails s -b 0.0.0.0 -p $PORT -e production
