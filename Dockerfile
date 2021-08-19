FROM openjdk:16
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT [ "java", "-cp", "app:app/lib/*", "com.microservices.aws.aws_microservices.AwsMicroservicesApplication" ]