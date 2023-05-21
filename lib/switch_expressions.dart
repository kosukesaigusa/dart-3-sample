enum Country {
  japan,
  usa,
  uk,
  france,
  ;

  (String, double, double) get capital {
    // In Dart 2:
    //
    // switch (this) {
    //   case japan:
    //     return ('Tokyo', 35.681236, 139.767125);
    //   case usa:
    //     return ('New York', 40.7128, 74.0060);
    //   case uk:
    //     return ('London', 51.5072, 0.1276);
    //   case france:
    //     return ('Paris', 48.8566, 2.3522);
    // }

    return switch (this) {
      japan => ('Tokyo', 35.681236, 139.767125),
      usa => ('New York', 40.7128, 74.0060),
      uk => ('London', 51.5072, 0.1276),
      france => ('Paris', 48.8566, 2.3522),
    };
  }

  String get continent {
    return switch (this) {
      japan => 'Asia',
      usa => 'North America',
      uk || france => 'Europe',
    };
  }
}

String convertText(String text) => switch (text) {
      'foo' => 'bar',
      _ when text.isEmpty => 'The input text was empty.',
      _ => 'baz',
    };
