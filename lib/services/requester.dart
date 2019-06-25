import 'dart:async';
import 'dart:html';

Future<HttpRequest> invokeService(
    String method, String url, bool includeToken, dynamic data) {
  final compltr = new Completer<HttpRequest>();
  final request = HttpRequest();

  request.open(method, url);

  if (includeToken) {
    request.setRequestHeader("Authorization", bearer);
  }

  request.onLoadEnd
      .listen((e) => compltr.complete(request), onError: compltr.completeError);
  request.onError.listen(compltr.completeError);
  request.onProgress.listen(onProgress);

  if (data != null) {
    request.send(data);
  } else {
    request.send();
  }

  return compltr.future;
}

String get bearer {
  final session = window.localStorage['avosession'];

  if (session == null) {
    //relocate to Login || Subscription
    return "";
  }

  return "Bearer ${session}";
}

void onProgress(ProgressEvent e) {
  if (e.lengthComputable) {
    //should use a "Global" Element to display progress to the user.
    print('Progress... ${e.total}/${e.loaded}');
  }
}
