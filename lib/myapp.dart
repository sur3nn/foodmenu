import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/bottomnavigation/bottom_navigation.dart';
import 'package:foodmenu/cubits/favorites_cubit/favorites_cubit.dart';
import 'package:foodmenu/cubits/filter_cubit/filters_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FiltersCubit()),
        BlocProvider(create: (context) => FavoritesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          listTileTheme: const ListTileThemeData(
              iconColor: Colors.white, textColor: Colors.white),
          scaffoldBackgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          useMaterial3: true,
        ),
        home: AppBottomNavigation(),
      ),
    );
  }
}
