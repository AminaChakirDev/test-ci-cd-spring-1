# Utilise l'image Java 21 basée sur Ubuntu Jammy
FROM eclipse-temurin:21-jdk-jammy

# Définit un répertoire de travail
WORKDIR /app

# Copie le fichier JAR dans le conteneur
COPY target/wildblog-api-0.0.1-SNAPSHOT.jar app.jar

# Expose le port 8080 pour permettre l’accès à l’application
EXPOSE 8080

# Définit la commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]