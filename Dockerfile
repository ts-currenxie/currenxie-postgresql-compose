FROM postgres:9.6

RUN apt-get update && apt-get install -my wget gnupg
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ etch-pgdg main" >> /etc/apt/sources.list.d/pgdg.list

RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update && apt-get install -y \
                postgresql-9.6 \
                postgresql-contrib-9.6 \
                postgresql-client-9.6 \
                postgresql-9.6-pgtap \
                postgresql-9.6-plv8 \
                postgresql-pltcl-9.6 \
                postgresql-plperl-9.6