import 'package:flutter/material.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';

class DetailsPage extends StatelessWidget {
  final Cat cat;

  DetailsPage({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cat.name!)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(cat.imageUrl!),
            SizedBox(height: 16),
            Text('Raza: ${cat.name}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Origen: ${cat.origin}'),
            Text('Inteligencia: ${cat.intelligence}'),
            SizedBox(height: 16),
            Text('Descripción:'),
            Text(cat.description!),
          ],
        ),
      ),
    );
  }
}
