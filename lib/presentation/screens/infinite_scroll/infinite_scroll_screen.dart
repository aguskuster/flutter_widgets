import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScroll extends StatefulWidget {
  static const name = 'infinite_scroll_screen';
  const InfiniteScroll({super.key});

  @override
  State<InfiniteScroll> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  final List<int> _list = [1, 2, 3, 4, 5];
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;
  void addFileImages() {
    final lastId = _list.last;
    _list.addAll([1, 2, 3, 4, 5].map((e) => e + lastId).toList());
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 500) {
        loadNextPage();
      }
    });
  }

  Future onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!isMounted) return;
    _list.clear();
    isLoading = true;
    addFileImages();
    setState(() {});
    
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    addFileImages();
    isLoading = false;

    if (!isMounted) return;
    setState(() {});
    moveScrollToBottom();
  }

  void moveScrollToBottom() {
    if(_scrollController.position.pixels +150 <= _scrollController.position.maxScrollExtent) return;
    _scrollController.animateTo(_scrollController.position.maxScrollExtent + 150,
        duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          edgeOffset: 10,
          strokeWidth: 2,
          child: ListView.builder(
              controller: _scrollController,
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                    placeholder:
                        const AssetImage('assets/images/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/id/${_list[index]}/200/300'));
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: isLoading
              ? const CircularProgressIndicator()
              : FadeIn(child: const Icon(Icons.arrow_back))),
    );
  }
}
