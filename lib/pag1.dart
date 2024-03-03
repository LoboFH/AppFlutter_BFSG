import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://miro.medium.com/v2/resize:fit:1358/1*vgN2zojqiIYu23JPVuaSiA.jpeg',
              width: 350,
              height: 300,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
