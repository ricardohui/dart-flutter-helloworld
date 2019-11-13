import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/posts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => Post(),
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Fetch Data Example'),
            ),
            body: PostDetailScreen()),
      ),
    );
  }
}

class PostDetailScreen extends StatefulWidget {
  @override
  _PostDetailScreenState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  Future<Post> postFuture;

  @override
  initState() {
    super.initState();
    postFuture = Provider.of<Post>(context, listen: false).fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder<Post>(
            future: postFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
