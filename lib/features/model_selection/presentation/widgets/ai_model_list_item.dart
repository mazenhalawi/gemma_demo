import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/material.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';

class AiModelListItem extends StatelessWidget {
  final AiModel model;
  final List<AiModel> downloadedModels;
  final Stream<TaskUpdate>? downloadingTask;
  final VoidCallback? onTap;
  const AiModelListItem({
    required this.model,
    this.downloadingTask,
    this.downloadedModels = const [],
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap?.call(),
      title: Text(model.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(model.filename),
          Text("Size: ${model.sizeInMB} MB"),
          Text("Supports GPU: ${model.isGPU ? 'Yes' : 'No'}"),
          Text("Supports Images: ${model.supportsImages ? 'Yes' : 'No'}"),
          if (downloadedModels.contains(model))
            Column(
              children: [
                SizedBox(height: 8),
                Text(
                  "Downloaded",
                  style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          if (downloadingTask != null)
            StreamBuilder<TaskUpdate>(
              stream: downloadingTask!,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final update = snapshot.data!;
                  String status = '';
                  String progress = '';

                  switch (update) {
                    case TaskStatusUpdate():
                      status = update.status.name;
                    case TaskProgressUpdate():
                      progress =
                          "${(update.progress * 100).toStringAsPrecision(2)}%";
                  }

                  return Column(
                    children: [
                      if (status.isNotEmpty)
                        Text(status, style: TextStyle(color: Colors.blue)),
                      if (progress.isNotEmpty) Text('Progress: $progress'),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    "Error downloading",
                    style: TextStyle(color: Colors.red),
                  );
                }
                return SizedBox.shrink();
              },
            ),
        ],
      ),
    );
  }
}
