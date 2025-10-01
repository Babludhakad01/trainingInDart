import 'dart:convert';
import '../models/Post.dart';
import 'package:http/http.dart' as http;

Future<List<Post>>fetchData() async{
  String url = "https://jsonplaceholder.typicode.com/posts";

  try{
    final response = await http.get(Uri.parse(url),

      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)",
        "Accept": "application/json",
      },
    );

    if(response.statusCode==200){
      List<dynamic> data = jsonDecode(response.body);

      // Json List -> Post Object
      List<Post> posts = data.map((json)=> Post.fromJson(json)).toList();
      return posts;
    } else{
      print("Failed data");
      return [];
    }


  }catch(e){
    print("Error in Api calls");
    return [];

  }
}

void main() async{
  print("Api Calls");
  List<Post> posts = await fetchData();

 

  print("post length ${posts.length}");
}