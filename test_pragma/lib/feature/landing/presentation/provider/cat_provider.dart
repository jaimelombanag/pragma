import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pragma/app/routes/routes_enum.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_breeds_use_case.dart';
import 'package:test_pragma/feature/landing/domain/usescases/search_cat_images_use_case.dart';

class CatProvider extends ChangeNotifier {
  final SearchCatImagesUseCase searchCatUseCase =
      GetIt.instance<SearchCatImagesUseCase>();
  final GetBreedsUseCase getBreedsUseCase = GetIt.instance<GetBreedsUseCase>();

  final TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Cat> _breeds = [];
  List<Cat> get breeds => _breeds;

  List<Cat> _filteredBreeds = [];
  List<Cat> get filteredBreeds => _filteredBreeds;

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

  void goDetail(Cat cat, BuildContext ctx) {
    ctx.pushNamed(
      Routes.detail.name,
      extra: cat,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
