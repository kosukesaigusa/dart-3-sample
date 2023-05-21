import 'package:dart_3_sample/if_case_statements_and_elements.dart';
import 'package:test/test.dart';

void main() {
  test('If-case statements and elements', () {
    final message1 = getMessage((35.681236, 139.767125));
    final message2 = getMessage(['Mike Trout', 'Shohei Ohtani']);
    final message3 = getMessage(['Yu Darvish', 'Fernando Tatís Jr.']);

    expect(
      message1,
      'The input is record, (lat, lng): (35.681236, 139.767125).',
    );
    expect(
      message2,
      'The input is List<String>, '
      'next hitter after Mike Trout is Shohei Ohtani.',
    );
    expect(message3, 'No case was matched.');
  });
}
