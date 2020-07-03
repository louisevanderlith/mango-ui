import 'dart:async';
import 'dart:convert';
import 'dart:html';

// getToken returns the 'client.token' from storage
String getToken() {
  if (window.sessionStorage == null) {
    return null;
  }

  return window.sessionStorage['client.token'];
}

// getEndpoint returns the 'client.endpoints' from storage
String getEndpoint(String name) {
  if (window.sessionStorage == null) {
    return null;
  }

  var endpoints = json.decode(window.sessionStorage['client.endpoints']);

  return endpoints[name];
}

/**
 *invokeService is used to call a webservice.
 */
Future<HttpRequest> invokeService(String method, String url, dynamic data) {
  final compltr = new Completer<HttpRequest>();
  final request = HttpRequest();

  request.open(method, url);

  var token = getToken();

  if (token.length > 0) {
    request.setRequestHeader("Authorization", "Bearer ${token}");
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

Future<HttpRequest> invokeFormservice(String url, FormData data) {
  final compltr = new Completer<HttpRequest>();
  final request = HttpRequest();

  request.open("POST", url);

  var token = getToken();

  if (token.length > 0) {
    request.setRequestHeader("Authorization", "Bearer ${token}");
  }

  request.onLoadEnd
      .listen((e) => compltr.complete(request), onError: compltr.completeError);
  request.onError.listen(compltr.completeError);
  request.onProgress.listen(onProgress);

  request.send(data);

  return compltr.future;
}

void onProgress(ProgressEvent e) {
  if (e.lengthComputable) {
    //should use a "Global" Element to display progress to the user.
    print('Progress... ${e.total}/${e.loaded}');
  }
}
