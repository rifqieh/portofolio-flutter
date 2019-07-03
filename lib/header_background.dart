import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.network(
            'https://rifqinotes.files.wordpress.com/2019/02/img_20180915_191356_51846302944615678486.jpg'),
      ),
    );
  }
}
