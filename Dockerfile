# Use the official MySQL 8.0 image as the base image
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=MountKilimanjaro
ENV MYSQL_DATABASE=rewards

# Copy the MySQL dump file to the container
COPY latestrewarddump28feb.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306

# You can add additional configuration if needed

# CMD instruction is not necessary as the base MySQL image already has CMD set
