import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pragma/app/injection_container.dart';
import 'package:test_pragma/app/routes/app_route.dart';
import 'package:test_pragma/feature/landing/presentation/provider/cat_breeds_provider.dart';
import 'package:test_pragma/feature/landing/presentation/provider/cat_provider.dart';
import 'package:test_pragma/feature/splash/presentation/controller/splash_controller.dart';

void main() {
  setupDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashController()),
        ChangeNotifierProvider(create: (_) => CatBreedsProvider()),
        ChangeNotifierProvider(create: (_) => CatsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = goRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
