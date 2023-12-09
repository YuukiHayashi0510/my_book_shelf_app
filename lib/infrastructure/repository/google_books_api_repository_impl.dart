import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../../domain/entity/model/api_book.dart';
import '../../domain/repository/google_books_api_repository.dart';

class GoogleBooksApiRepositoryImpl implements GoogleBooksApiRepository {
  @override
  Future<ApiBook> fetchBookByIsbn(String isbn) async {
    var result = await _fetch(
        'https://www.googleapis.com/books/v1/volumes?q=isbn:$isbn');
    var node = json.decode(result);
    return node['items'][0]['volumeInfo'];
  }

  Future<String> _fetch(String url) async {
    var result = await http.get(Uri.parse(url));
    return result.body;
  }
}
