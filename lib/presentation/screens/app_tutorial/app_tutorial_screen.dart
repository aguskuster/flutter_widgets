import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Welcome to Flutter Widgets',
    caption: 'A collection of widgets',
    imageUrl: 'assets/images/3.png',
  ),
  const SlideInfo(
    title: 'Flutter Widgets',
    caption: 'A collection of widgets',
    imageUrl: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Flutter Widgets',
    caption: 'A collection of widgets',
    imageUrl: 'assets/images/1.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool isLastPage = false;
  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0; 
      if (!isLastPage &&  page >= (slides.length - 1.5)) {
        setState(() {
          isLastPage = true;
        });
      } 
    });

  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((e) => _Slide(
                        title: e.title,
                        caption: e.caption,
                        imageUrl: e.imageUrl,
                      ))
                  .toList(),
            ),
            Positioned(
                right: 20,
                top: 50,
                child: TextButton(
                    onPressed: () => context.pop(), child: const Text('Skip'))),
            
           isLastPage? Positioned(bottom: 30,right: 30,child: FadeInRight(from: 15, delay: Duration(seconds: 1), child: FilledButton( onPressed: () => context.pop(),child: const Text("Finalizar tutorial")))): const SizedBox()
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(height: 20),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(height: 10),
          Text(
            caption,
            style: captionStyle,
          ),
        ],
      ),
    );
  }
}
