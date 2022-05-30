import 'app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BreakingApp(
    appRouter: AppRouter(),
  ));
}

class BreakingApp extends StatelessWidget {

  final AppRouter appRouter;
  const BreakingApp({Key? key , required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
  
    );
  }
}


