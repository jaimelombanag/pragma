import 'package:flutter/material.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';

class DetailsPage extends StatelessWidget {
  final Cat cat;

  const DetailsPage({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cat.name!)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(cat.imageUrl!),
              const SizedBox(height: 16),
              Text(
                'Raza: ${cat.name}',
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
              Text(
                'Origen: ${cat.origin}',
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              Text(
                'Inteligencia: ${cat.intelligence}',
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Descripción:',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
              const SizedBox(height: 10),
              Text(
                cat.description!,
                style: const TextStyle(fontFamily: 'Poppins'),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
