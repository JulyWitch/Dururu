import 'package:dururu/presentation/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dururu",
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(fontWeight: FontWeight.w800, fontSize: 12),
        ),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {},
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const SizedBox(height: 8),
            TabBar(
              tabs:
                  ['Home', 'Playlists', 'Browse'].map((v) => Text(v)).toList(),
              dividerHeight: 0,
              labelPadding: const EdgeInsets.only(bottom: 10),
              overlayColor: WidgetStateProperty.resolveWith(
                  (states) => Colors.transparent),
            ),
            const SizedBox(height: 12),
            const Expanded(
              child: TabBarView(
                children: [
                  HomePage(),
                  Text('Playlists'),
                  Text('Browse'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
