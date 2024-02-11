
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../presentation/screens/screens.dart';



final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [

      GoRoute(
        path: '/home',
        name: HomeScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/buttons',
        name: ButtonsScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: ButtonsScreen(),
        ),
      ),
      GoRoute(
        path: '/cards',
        name: CardsScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: CardsScreen(),
        ),
      ),
  ],
);
