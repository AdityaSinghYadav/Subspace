
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:subspace/Apis/bApi.dart';

class ApiService {
  final String baseUrl = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  final String adminSecret =
      '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';
  Future<List<Blog>> fetchBlogs() async {
    final response = await http.get(
      Uri.parse(baseUrl),
      headers: {
        'x-hasura-admin-secret': adminSecret,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);

      if (jsonData!=null  && jsonData.containsKey('blogs')) {
        final List<dynamic> blogData = jsonData['blogs'];

        if (blogData is List) {
          final List<Blog> blogs =
          blogData.map((json) => Blog.fromJson(json)).toList();
          return blogs;
        } else {
          throw Exception('API response "blogs" is not a List');
        }
      } else {
        throw Exception('API response does not contain a "blogs" key');
      }
    } else {
      throw Exception('Failed to load blogs');
    }
  }

}