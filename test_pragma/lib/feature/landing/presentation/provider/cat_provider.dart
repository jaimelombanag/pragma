// lib/features/cats/presentation/providers/cat_provider.dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_breeds_use_case.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_cats_by_breed_use_case.dart';
import 'package:test_pragma/feature/landing/domain/usescases/search_cat_images_use_case.dart';

class CatProvider extends ChangeNotifier {
  final GetCatsByBreedUseCase getUserUseCase =
      GetIt.instance<GetCatsByBreedUseCase>();
  final SearchCatImagesUseCase searchCatUseCase =
      GetIt.instance<SearchCatImagesUseCase>();
  final GetBreedsUseCase getBreedsUseCase = GetIt.instance<GetBreedsUseCase>();

  TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Cat> _breeds = [];
  List<Cat> get breeds => _breeds;

  List<Cat> _filteredBreeds = [];
  List<Cat> get filteredBreeds => _filteredBreeds;

  List<Cat> cats = [];

  List<String> catImages = [];

  Future<void> fetchCats(String breed) async {
    _isLoading = true;
    notifyListeners();
    try {
      cats = await getUserUseCase(breed);
      debugPrint('Lista total ${cats.length}');
    } catch (e) {
      cats = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> searchCatImages() async {
    _isLoading = true;
    notifyListeners();
    try {
      catImages = await searchCatUseCase.searchCat();
      debugPrint('Lista total ${cats.length}');
    } catch (e) {
      cats = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadBreeds() async {
    _isLoading = true;
    notifyListeners();
    try {
      _breeds = await getBreedsUseCase.call();
      _filteredBreeds = _breeds;
      _searchController.addListener(_filterBreeds);
      notifyListeners();
    } catch (e) {
      _breeds = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void _filterBreeds() {
    final query = _searchController.text.toLowerCase();
    _filteredBreeds = _breeds
        .where((breed) => breed.name!.toLowerCase().contains(query))
        .toList();
    notifyListeners();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
