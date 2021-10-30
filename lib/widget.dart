import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  dynamic album;
   Album({Key? key,this.album}) : super(key: key );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
        child: Column(
          children: [
            Text(album['title'],

              style: TextStyle(fontSize: 25),
            ),
            Image.network(
              album['url'],
              height: 400,
              width: 600,
            ),
          ],
        ),

    );
  }
}
