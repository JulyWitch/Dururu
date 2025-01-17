import 'package:flutter/material.dart';

class FullSizeImage extends StatefulWidget {
  final String imageUrl;

  const FullSizeImage({super.key, required this.imageUrl});

  @override
  State createState() => _FullSizeImageState();
}

class _FullSizeImageState extends State<FullSizeImage> {
  double scale = 1.0;
  double previousScale = 1.0;
  Offset offset = Offset.zero;
  Offset startOffset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          GestureDetector(
            onScaleStart: (details) {
              previousScale = scale;
              startOffset = offset;
            },
            onScaleUpdate: (details) {
              setState(() {
                scale = previousScale * details.scale;
                offset =
                    startOffset + details.focalPoint - details.localFocalPoint;
              });
            },
            onScaleEnd: (details) {
              previousScale = scale;
            },
            child: Center(
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(offset.dx, offset.dy)
                  ..scale(scale),
                alignment: Alignment.center,
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 30.0),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
