import 'package:dart_3_sample/records_and_pattern_matching.dart';
import 'package:test/test.dart';

void main() {
  test('Records feature sample.', () {
    final tokyoStation = geoLocationOfTokyoStation();
    expect(tokyoStation.$1, 35.681236);
    expect(tokyoStation.$2, 139.767125);

    final (lat, lng) = geoLocationOfTokyoStation();
    expect(lat, 35.681236);
    expect(lng, 139.767125);
  });

  test('Another records feature sample compared to class.', () {
    final json = <String, dynamic>{
      'name': 'Shohei Ohtani',
      'age': 28,
      'height': 193,
    };

    final personAsClass = Person.fromJson(json);
    expect(personAsClass.name, 'Shohei Ohtani');
    expect(personAsClass.age, 28);
    expect(personAsClass.height, 193);

    final personAsRecords = getPerson(json);
    expect(personAsRecords.$1, 'Shohei Ohtani');
    expect(personAsRecords.$2, 28);
    expect(personAsRecords.$3, 193);
  });
}
