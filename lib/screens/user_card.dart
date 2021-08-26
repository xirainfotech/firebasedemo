import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_demo/data/models/user_models.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final UserModels data;

  const CardWidget({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              data.name,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              data.age.toString(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              data.weight.toString(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            CachedNetworkImage(
              imageUrl: data.image,
            ),
          ],
        ),
      ),
    );
  }
}
