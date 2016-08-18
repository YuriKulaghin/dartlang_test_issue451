import 'dart:io';

void main() {
  HttpServer
    .bind(InternetAddress.ANY_IP_V4, 8102)
    .then((server) {
      print("Server started");
      server.listen((HttpRequest request) {
        print("${new DateTime.now()} Request ${request.method} ${request.uri}");
        request.response.headers.add("Access-Control-Allow-Origin", "*");
        request.response.write('Hello, world!');
        request.response.close();
      });
    });
}