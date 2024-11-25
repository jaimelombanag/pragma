import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/global/themes/app_themes_colors.dart';

class DetailsPage extends StatelessWidget {
  final Cat cat;

  const DetailsPage({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cat.name!,
          style: const TextStyle(
              fontFamily: 'Poppins', fontSize: 20, color: ThemeColor.white),
        ),
        backgroundColor: ThemeColor.primaryApp,
        iconTheme: const IconThemeData(
          color: ThemeColor.white, // Cambia el color del icono
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(cat.imageUrl!),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Raza: ${cat.name}',
                      style:
                          const TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    ),
                    Text(
                      'Origen: ${cat.origin}',
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Inteligencia: ${cat.intelligence}',
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Temperamento: ${cat.temperament}',
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Esperanza de vida: ${cat.lifeSpan}',
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Nivel de energía: ${cat.energyLevel}',
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    TextButton(
                      onPressed: () async {
                        await EasyLauncher.url(url: "${cat.wikipediaUrl}");
                      },
                      child: Text(
                        '${cat.wikipediaUrl}',
                        style: const TextStyle(
                          fontSize: 18,
                          color: ThemeColor.primaryBlue,
                          decoration: TextDecoration.underline,
                          decorationColor: ThemeColor.primaryBlue,
                          decorationThickness: 1.5,
                          decorationStyle: TextDecorationStyle.wavy,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }
}
