@TestOn('browser')
library test;

import 'dart:html';
import 'package:test/test.dart';

void main() {
  test('', () {
    return HttpRequest.getString('http://127.0.0.1:8102')
      .then((String result) {
        print("OK: $result");
        expect(1, 1);
      });
  });
}