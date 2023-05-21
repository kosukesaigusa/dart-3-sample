sealed class APIResponse {
  const APIResponse();
}

class Data extends APIResponse {
  Data(this.value);

  final int value;
}

class Loading extends APIResponse {
  const Loading();
}

class Error extends APIResponse {
  Error([this.message]);

  final String? message;
}

Stream<APIResponse> getAPIResponse({bool throwError = false}) async* {
  yield const Loading();
  await Future<void>.delayed(const Duration(seconds: 1));
  if (throwError) {
    yield Error('An error has occurred.');
    return;
  }
  yield Data(42);
}
