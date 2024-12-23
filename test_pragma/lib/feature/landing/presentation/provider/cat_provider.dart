import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pragma/app/routes/routes_enum.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_cat_use_case.dart';

class CatsProvider extends ChangeNotifier {
  final GetCatUseCase getCatsUseCase = GetIt.instance<GetCatUseCase>();

  final TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Cat> _cats = [];
  List<Cat> get cats => _cats;

  Future<void> loadCats() async {
    _isLoading = true;
    notifyListeners();
    try {
      _cats = await getCatsUseCase.getCats();
      notifyListeners();
    } catch (e) {
      _cats = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
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
