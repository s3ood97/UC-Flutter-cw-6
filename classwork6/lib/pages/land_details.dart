import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:classwork6/models/photos.dart';

class MovieDetails extends StatelessWidget {
  final Statue statues;

  const MovieDetails({super.key, required this.statues});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(statues.name),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              statues.image,
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),
            Text(statues.details),
          ],
        ),
      ),
    );
  }
}
