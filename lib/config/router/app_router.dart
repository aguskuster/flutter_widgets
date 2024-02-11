
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../presentation/screens/screens.dart';



final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [

      GoRoute(
        path: '/home',
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/buttons',
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: ButtonsScreen(),
        ),
      ),
      GoRoute(
        path: '/cards',
        pageBuilder: (context, state) =>  const MaterialPage<dynamic>(
          child: CardsScreen(),
        ),
      ),
  ],
);
