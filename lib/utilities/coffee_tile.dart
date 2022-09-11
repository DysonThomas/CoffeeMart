import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  final String imagePath;
  final String coffeName;
  final String coffeDesc;
  final String coffePrice;
  const Coffee(
      {super.key,
      required this.imagePath,
      required this.coffeName,
      required this.coffeDesc,
      required this.coffePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(imagePath),
              borderRadius: BorderRadius.circular(25),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    coffeDesc,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(coffePrice),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.add))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
