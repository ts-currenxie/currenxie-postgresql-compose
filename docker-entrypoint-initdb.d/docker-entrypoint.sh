#!/bin/bash

apt-get update && apt-get install -my wget gnupg

# Create the file /etc/apt/sources.list.d/pgdg.list and add a line for the repository
echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Import the repository signing key, and update the package lists
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

# Install the packages
apt-get update && apt-get install -y postgresql-9.6 postgresql-contrib-9.6 postgresql-client-9.6 
apt-get update && apt-get install -y postgresql-9.6-pgtap postgresql-9.6-plv8

# psql --command "ALTER USER postgres WITH PASSWORD 'postgres';"
