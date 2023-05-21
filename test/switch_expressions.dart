import 'package:dart_3_sample/switch_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('Switch expressions feature sample', () {
    final capitalOfJapan = Country.japan.capital;
    expect(capitalOfJapan.$1, 'Tokyo');
    expect(capitalOfJapan.$2, 35.681236);
    expect(capitalOfJapan.$3, 139.767125);

    expect(Country.japan.continent, 'Asia');
    expect(Country.uk.continent, 'Europe');
    expect(Country.france.continent, 'Europe');
  });
}
