sealed class APIResponse {
  const APIResponse();
}

class Data extends APIResponse {
  const Data(this.value);

  final int value;
}

class Loading extends APIResponse {
  const Loading();
}

class Error extends APIResponse {
  const Error([this.message]);

  final String? message;
}

Stream<APIResponse> getAPIResponse({bool throwError = false}) async* {
  yield const Loading();
  await Future<void>.delayed(const Duration(seconds: 1));
  if (throwError) {
    yield const Error('An error has occurred.');
    return;
  }
  yield const Data(42);
}
