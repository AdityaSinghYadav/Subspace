import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'package:subspace/Apis/bApi.dart';
import 'package:subspace/Apis/bPage.dart';

class BlogProvider extends ChangeNotifier {
  final _service = ApiService();
  bool isLoading = false;
  List<Blog> _blog = [];
  List<Blog> get blog => _blog;

  Future<void> getAllBlogs() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.fetchBlogs();
    _blog = response;
    isLoading = false;
    notifyListeners();
  }
}