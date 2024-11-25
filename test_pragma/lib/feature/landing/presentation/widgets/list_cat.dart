import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pragma/feature/landing/presentation/provider/cat_provider.dart';
import 'package:test_pragma/feature/landing/presentation/widgets/item_cat_card.dart';
import 'package:test_pragma/global/themes/app_themes_colors.dart';

// ignore: must_be_immutable
class ListCats extends StatefulWidget {
  const ListCats({
    super.key,
  });

  @override
  State<ListCats> createState() => _ListCatsState();
}

class _ListCatsState extends State<ListCats> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CatsProvider>().loadCats();
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
      body: Column(
        children: [
          Consumer<CatsProvider>(
            builder: (context, catProvider, child) {
              if (catProvider.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: catProvider.cats.length,
                    itemBuilder: (context, index) {
                      return GridView.builder(
                        padding: const EdgeInsets.all(4.0),
                        itemCount: catProvider.cats.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 4.8,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          var product = catProvider.cats[index];
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
