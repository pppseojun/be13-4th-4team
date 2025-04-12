FROM eclipse-temurin:21-jre-alpine
LABEL maintainer="qkrtjwns <qkrtjwns1116@gmail.com>"
LABEL version="1.0"
COPY be-4th-4team-backend/build/libs/be-4th-4team-backend-0.0.1-SNAPSHOT.jar /root
# ARG BUILD_PROFILE=dev
ARG BUILD_PORT=8088
ENV TZ=Asia/Seoul
# ENV APP_PROFILE=${BUILD_PROFILE}
EXPOSE ${BUILD_PORT}
WORKDIR /root
CMD [ "java", "-jar", "be-4th-4team-backend-0.0.1-SNAPSHOT.jar" ]