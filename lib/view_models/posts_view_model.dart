import 'package:dio/dio.dart';
import 'package:mvvm_api_ar/repositories/posts/posts_api.dart';

class PostsViewModel {
  final String title = "All Posts";

  fetchAllPosts() async {
    PostsAPI().getAllPosts();
  }
}
