/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_async_stream_validator_base.dart';

// TODO: Export any libraries intended for clients of this package.

Future<bool> validateStream(Stream<int> input, bool Function(int) func) async {
  await for (var indev in input) {
    if (!func(indev)) {
      return false;
    }
  }
  return true;
}
 
/*
Practice Question 2: Async Stream Validator
Task:
Write a function validateStream that takes a 
Stream<int> and a validation function (bool Function(int)). 
The function should return a Future<bool> indicating whether
all elements in the stream pass the validation function.
The stream processing should stop as soon as 
an invalid element is encountered.
 */