import 'package:dio/dio.dart';

class PostsViewModel {
  final String title = "All Posts";

  fetchAllPosts() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      print(response.data);
    } catch (exception) {
      print(exception);
    }
  }
}
