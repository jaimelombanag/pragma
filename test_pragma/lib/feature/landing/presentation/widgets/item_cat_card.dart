import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/presentation/provider/cat_breeds_provider.dart';
import 'package:test_pragma/global/utils/constants.dart';

// ignore: must_be_immutable
class ItemCatCard extends StatelessWidget {
  Cat breed;

  ItemCatCard({
    super.key,
    required this.breed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<CatBreedsProvider>(context, listen: false)
            .goDetail(breed, context);
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: breed.imageUrl ?? Constants.imageCatDefault,
                  width: 110, // Ancho de la imagen
                  height: 110, // Alto de la imagen
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                breed.name!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Digital', // Nombre de la familia
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'País de origen: ',
              style: TextStyle(
                fontFamily: 'Poppins', // Nombre de la familia
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Text(
                breed.origin ?? "Desconocido",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'RugenExpanded', // Nombre de la familia
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Inteligencia: ',
              style: TextStyle(
                fontFamily: 'Poppins', // Nombre de la familia
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                breed.intelligence!,
                (i) => const Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
