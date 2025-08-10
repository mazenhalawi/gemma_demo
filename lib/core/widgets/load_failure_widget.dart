import 'package:flutter/material.dart';

import '../models/failure.dart';

class LoadFailureWidget extends StatelessWidget {
  final Failure failure;
  final Function onRetry;

  const LoadFailureWidget({
    required this.failure,
    required this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(failure.message, textAlign: TextAlign.center),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: ElevatedButton(
              onPressed: () => onRetry(),
              child: const Text("Retry"),
            ),
          ),
        ],
      ),
    );
  }
}
