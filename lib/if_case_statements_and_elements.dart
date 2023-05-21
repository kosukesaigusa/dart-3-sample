String getMessage(dynamic input) {
  if (input case (final double x, final double y)) {
    return 'The input is record, (lat, lng): ($x, $y).';
  }
  if (input case ['Mike Trout', final name]) {
    return 'The input is List<String>, next hitter after Mike Trout is $name.';
  }
  return 'No case was matched.';
}
