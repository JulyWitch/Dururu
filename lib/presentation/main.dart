import 'package:dururu/presentation/drawer.dart';
import 'package:dururu/presentation/explore.dart';
import 'package:dururu/presentation/home.dart';
import 'package:dururu/presentation/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool searchMode = false;
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchMode
            ? TextField(
                controller: searchController,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  border: InputBorder.none,
                ),
                style: Theme.of(context).textTheme.bodyMedium,
                onSubmitted: (value) {
                  print('Search query: $value');
                },
              )
            : Text(
                "Dururu",
                style: Theme.of(context)
                    .appBarTheme
                    .titleTextStyle
                    ?.copyWith(fontWeight: FontWeight.w800, fontSize: 12),
              ),
        leading: searchMode
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    searchMode = false;
                    searchController.clear();
                  });
                },
              )
            : const OpenDrawerButton(),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                searchMode = !searchMode;
                if (!searchMode) {
                  searchController.clear();
                }
              });
            },
            icon: Icon(
              searchMode ? CupertinoIcons.clear : CupertinoIcons.search,
              size: 20,
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: searchMode
            ? SearchPage(controller: searchController)
            : Column(children: [
                const SizedBox(height: 8),
                TabBar(
                  tabs: [
                    'Connect',
                    'Home',
                    'Explore',
                  ].map((v) => Text(v)).toList(),
                  dividerHeight: 0,
                  labelPadding: const EdgeInsets.only(bottom: 10),
                  overlayColor: WidgetStateProperty.resolveWith(
                      (states) => Colors.transparent),
                ),
                const SizedBox(height: 12),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: Text('Coming Soon!')),
                      HomePage(),
                      ExplorePage(),
                    ],
                  ),
                ),
              ]),
      ),
    );
  }
}

class OpenDrawerButton extends StatelessWidget {
  const OpenDrawerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
