import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:dartz/dartz.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:path_provider/path_provider.dart';

class FileManager {
  static final FileManager instance = FileManager._();

  FileManager._();

  Future<List<AiModel>> getDownloadedModels() async {
    List<AiModel> downloadedModels = [];

    final directory = await getApplicationDocumentsDirectory();
    final files = directory.listSync(recursive: true);

    AiModel.values.forEach((model) {
      final lastSegments = files.map(
        (e) => e.uri.pathSegments.last.toLowerCase(),
      );
      if (lastSegments.contains(model.filename.toLowerCase())) {
        downloadedModels.add(model);
      }
    });

    return downloadedModels;
  }

  Future<File?> getFile(String filename) async {
    final directory = await getApplicationDocumentsDirectory();

    final file = File('${directory.path}/$filename');

    if (await file.exists()) {
      return file;
    }

    return null;
  }

  Future<Either<Failure, Stream<TaskUpdate>>> downloadFile({
    required String url,
    required String filename,
  }) async {
    final allRecords = await FileDownloader().database.allRecords();
    allRecords.forEach((record) {
      print(record.task.filename);
      print('progress: ${record.progress}');
      print('status: ${record.status.name}');
      print('******************************');
    });

    final task = DownloadTask(
      url: url,
      filename: filename,
      updates: Updates.statusAndProgress,
    );

    FileDownloader().enqueue(task);

    return Right(
      FileDownloader().updates.where(
        (taskUpdate) => taskUpdate.task.filename == filename,
      ),
    );
  }
}
