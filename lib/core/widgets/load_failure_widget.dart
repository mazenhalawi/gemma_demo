import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 200),
            child: SelectionArea(
              selectionControls: MaterialTextSelectionControls(),
              magnifierConfiguration: TextMagnifierConfiguration(),
              child: SelectableText(
                failure.message,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () =>
                      Clipboard.setData(ClipboardData(text: failure.message)),
                  child: Text('Copy Error'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => onRetry(),
                  child: const Text("Retry"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
