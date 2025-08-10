import 'package:flutter/material.dart';

class Spinner extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  final Widget spinner = Container(
    color: Colors.black12.withAlpha(100),
    child: const Center(child: CircularProgressIndicator()),
  );

  Spinner({required this.child, this.isLoading = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black12.withAlpha(100),
            child: Center(child: const CircularProgressIndicator()),
          ),
      ],
    );
  }
}
