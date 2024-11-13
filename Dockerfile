# Javaランタイムのベースイメージを指定
FROM eclipse-temurin:21-jre

# 作業ディレクトリを設定
WORKDIR /app

# JARファイルをコンテナにコピー
COPY target/z-pictgram-0.0.1-SNAPSHOT.jar /app/app.jar

# アプリケーションのポート番号
EXPOSE 8080

# アプリケーションを起動
ENTRYPOINT ["java", "-jar", "app.jar"]