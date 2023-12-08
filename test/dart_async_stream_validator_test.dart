import 'package:dart_async_stream_validator/dart_async_stream_validator.dart';
import 'package:test/test.dart';

void main() {
  test('validateStream returns true if all elements are valid', () async {
    var input = Stream.fromIterable([2, 4, 6, 8]);
    var isValid = await validateStream(input, (n) => n % 2 == 0);
    expect(isValid, isTrue);
  });

  test('validateStream returns false if any element is invalid', () async {
    var input = Stream.fromIterable([2, 3, 4]);
    var isValid = await validateStream(input, (n) => n % 2 == 0);
    expect(isValid, isFalse);
  });
}
