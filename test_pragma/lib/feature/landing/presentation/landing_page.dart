import 'package:flutter/material.dart';
import 'package:test_pragma/feature/landing/presentation/widgets/list_breeds_cat.dart';
import 'package:test_pragma/feature/landing/presentation/widgets/list_cat.dart';
import 'package:test_pragma/global/themes/app_themes_colors.dart';
import 'package:test_pragma/global/utils/constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de pestañas
      child: Scaffold(
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
          bottom: const TabBar(
            indicatorColor: ThemeColor
                .secondGreen, // Color de la línea bajo la pestaña activa
            labelColor:
                ThemeColor.white, // Color del texto de la pestaña activa
            unselectedLabelColor: ThemeColor.primaryGrey,
            tabs: [
              Tab(
                  text: Constants.labelTab1,
                  icon: Icon(
                    Icons.home,
                  )),
              Tab(text: Constants.labelTab2, icon: Icon(Icons.pets)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListBreedsCat(),
            ListCats(),
          ],
        ),
      ),
    );
  }
}
