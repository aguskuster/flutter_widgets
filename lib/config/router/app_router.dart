
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
      GoRoute(
        path: '/progress',
        name: ProgressScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: ProgressScreen(),
        ),
      ),
      GoRoute(
        path: '/snackbar',
        name: SnackBarScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: SnackBarScreen(),
        ),
      ),
      GoRoute(
        path: '/animated_container',
        name: AnimatedScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: AnimatedScreen(),
        ),
      ),
      GoRoute(
        path: '/ui_controls',
        name: UiControlScreen.name,
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: UiControlScreen(),
        ),
      ),
  ],
);
