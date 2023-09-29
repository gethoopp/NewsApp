import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/model/api/data.dart';

// ignore: camel_case_types
class repository {
  Future<List<Article>> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2023-08-28&sortBy=publishedAt&apiKey=aa0fa0c7eba04a94a5fc98e808e53d75");
    var respons = await http.get(url);
    //print(respons.body);

    var data = (jsonDecode(respons.body) as Map<String, dynamic>)['articles'];
    print(data);

    if (respons.statusCode == 200) {
      return data.map<Article>((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception('Cant load Data');
    }
  }
}

void main() {
  repository().getNews().then((value) => print(value));
}
