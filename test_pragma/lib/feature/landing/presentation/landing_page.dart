import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pragma/feature/detail/presentation/detail_page.dart';
import 'package:test_pragma/feature/landing/data/cat_api_service.dart';
import 'package:test_pragma/feature/landing/presentation/provider/cat_provider.dart';
import 'package:test_pragma/global/utils/constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // final CatApiService _catApiService = CatApiService();

  //List<Map<String, dynamic>> _breeds = []; // Todas las razas con detalles
  // List<Map<String, dynamic>> _filteredBreeds = []; // Razas filtradas
  // String? _selectedBreedId; // Raza seleccionada
  //late Future<List<String>> _catImages;

  // final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _loadBreeds();
    //_catImages = _catApiService.searchCatImages(); // Carga inicial
    // _searchController.addListener(_filterBreeds);
    // Llamamos al método fetchCats cuando se construye la pantalla
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //context.read<CatProvider>().searchCatImages();
      context.read<CatProvider>().loadBreeds();
    });
  }

  @override
  void dispose() {
    // _searchController.dispose();
    super.dispose();
  }

  // Cargar la lista de razas
  // void _loadBreeds() async {
  //   try {
  //     final breeds = await _catApiService.fetchBreedsWithDetails();
  //     setState(() {
  //       _breeds = breeds;
  //       _filteredBreeds = breeds; // Inicialmente todas las razas son visibles
  //     });
  //   } catch (e) {
  //     print('Error al cargar las razas: $e');
  //   }
  // }

  // Filtrar razas en tiempo real
  // void _filterBreeds() {
  //   final query = _searchController.text.toLowerCase();
  //   setState(() {
  //     // _filteredBreeds = _breeds
  //     //     .where((breed) => breed['name'].toLowerCase().contains(query))
  //     //     .toList();
  //     // Provider.of<CatProvider>(context, listen: false).filteredBreeds =
  //     //     Provider.of<CatProvider>(context, listen: false)
  //     //         .breeds
  //     //         .where((breed) => breed.name!.toLowerCase().contains(query)).toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar razas de gatos'),
      ),
      body: Column(
        children: [
          // Campo de búsqueda
          Consumer<CatProvider>(
            builder: (context, catProvider, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: catProvider.searchController,
                  decoration: const InputDecoration(
                    labelText: 'Buscar raza',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              );
            },
          ),

          // Lista de razas filtradas
          Consumer<CatProvider>(builder: (context, catProvider, child) {
            if (catProvider.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: catProvider.filteredBreeds.length,
                  //itemCount: catProvider.breeds.length,
                  itemBuilder: (context, index) {
                    final breed = catProvider.filteredBreeds[index];
                    //final breed = catProvider.breeds[index];
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Imagen del gato
                            CachedNetworkImage(
                              imageUrl:
                                  breed.imageUrl ?? Constants.imageCatDefault,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child: CircularProgressIndicator(
                                    value: downloadProgress.progress),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            SizedBox(height: 10),
                            // Nombre de la raza
                            Text(
                              breed.name!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            // País de origen
                            Text(
                              'País de origen: ${breed.origin ?? "Desconocido"}',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 5),
                            // Nivel de inteligencia
                            Row(
                              children: [
                                Text(
                                  'Inteligencia: ',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Row(
                                  children: List.generate(
                                    breed.intelligence!,
                                    (i) => Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
