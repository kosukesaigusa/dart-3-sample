import 'package:dart_3_sample/sealed_classes.dart';
import 'package:test/test.dart';

void main() {
  test('Sealed classes sample.', () async {
    final results = <APIResponse>[];
    getAPIResponse().listen(results.add);

    await Future<void>.delayed(const Duration(seconds: 2));

    expect(results[0], isA<Loading>());
    expect((results[1] as Data).value, 42);
  });

  test('Another sealed classes sample.', () async {
    final results = <APIResponse>[];
    getAPIResponse(throwError: true).listen(results.add);

    await Future<void>.delayed(const Duration(seconds: 2));

    expect(results[0], isA<Loading>());
    expect((results[1] as Error).message, 'An error has occurred.');
  });
}
