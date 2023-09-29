import 'package:newsapp/model/api/data.dart';
import 'package:newsapp/model/api/http.dart';

class newsAPI {
  final _provider = repository();

  Future <List<Article>> getNews() async {
    return await _provider.getNews();
  }
}


void main() {
  newsAPI().getNews().then((value) => print(value));
}