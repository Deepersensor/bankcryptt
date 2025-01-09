import 'package:http/http.dart' as http;

Future<http.Response> fetchData(String url) {
  return http.get(Uri.parse(url));
}
