import 'package:dart_project/dart_function_library.dart';
import 'package:test/test.dart';

void main() {
  test('isPalindrom true', () {
    expect(isPalindrome("ingegni"), true);
  });

  test('isPalindrom true 2', () {
    expect(isPalindrome("Ossesso"), true);
  });

  test('isPalindrom false', () {
    expect(isPalindrome("gatto"), false);
  });
}
