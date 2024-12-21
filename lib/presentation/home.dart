import 'package:dururu/providers/subsonic_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final val = ref.watch(getAlbumList2Provider(type: 'recent'));
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
            icon: const Icon(CupertinoIcons.search), onPressed: () {}),
      ),
      body: val.when(
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        error: (error, stack) => Column(
          children: [
            TextButton(
              child: const Text("Retry"),
              onPressed: () =>
                  ref.invalidate(getAlbumList2Provider(type: 'recent')),
            ),
            Text("Error hello here $error\n $stack"),
          ],
        ),
        data: (data) => Column(
          children: data.albumList2!.album!
              .map(
                (val) => Text(val.name),
              )
              .toList(),
        ),
      ),
    );
  }
}
