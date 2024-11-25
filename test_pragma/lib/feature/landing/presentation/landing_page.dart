import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pragma/feature/landing/presentation/provider/cat_provider.dart';
import 'package:test_pragma/feature/landing/presentation/widgets/item_cat_card.dart';
import 'package:test_pragma/global/themes/app_themes_colors.dart';
import 'package:test_pragma/global/utils/constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CatProvider>().loadBreeds();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryApp,
      appBar: AppBar(
        title: const Text(
          Constants.titleSearch,
          style: TextStyle(
            color: ThemeColor.white,
            fontFamily: 'RugenExpanded', // Nombre de la familia
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: ThemeColor.primaryApp,
      ),
      body: Column(
        children: [
          Consumer<CatProvider>(
            builder: (context, catProvider, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'RugenExpanded',
                    color: ThemeColor.white, // Cambia el color del texto
                    fontSize: 20, // Cambia el tamaño del texto
                  ),
                  controller: catProvider.searchController,
                  decoration: const InputDecoration(
                    labelText: Constants.labelSearch,
                    labelStyle: TextStyle(color: ThemeColor.white),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.search,
                      color: ThemeColor.white,
                    ),
                  ),
                ),
              );
            },
          ),
          Consumer<CatProvider>(
            builder: (context, catProvider, child) {
              if (catProvider.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: catProvider.filteredBreeds.length,
                    itemBuilder: (context, index) {
                      return GridView.builder(
                        padding: const EdgeInsets.all(4.0),
                        itemCount: catProvider.filteredBreeds.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 4.8,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          var product = catProvider.filteredBreeds[index];
                          debugPrint(product.name);
                          return GestureDetector(
                              onTap: () {}, child: ItemCatCard(breed: product));
                        },
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
