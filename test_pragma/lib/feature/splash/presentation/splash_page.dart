import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:test_pragma/feature/splash/presentation/controller/splash_controller.dart';
import 'package:test_pragma/global/themes/app_themes_colors.dart';
import 'package:test_pragma/global/utils/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SplashController>(context, listen: false).initialize(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryApp,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 15),
            const Text(
              Constants.titleSplash,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'BREECBO', // Nombre de la familia
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: ThemeColor.white),
            ),
            SvgPicture.asset(
              Constants.imageCats,
              height: 200.0,
              width: 200.0,
              colorFilter: const ColorFilter.mode(
                ThemeColor.white, // Color que quieres aplicar
                BlendMode.srcIn, // Modo de mezcla
              ),
            ),
            SvgPicture.asset(
              Constants.imageJimJamCat,
              height: 200.0,
              width: 200.0,
              colorFilter: const ColorFilter.mode(
                ThemeColor.white, // Color que quieres aplicar
                BlendMode.srcIn, // Modo de mezcla
              ),
            ),
          ],
        ),
      ),
    );
  }
}
