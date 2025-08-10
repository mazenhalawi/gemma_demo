import 'package:dartz/dartz.dart';
import 'package:flutter_gemma/core/model.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/file_manager.dart';
import 'package:flutter_gemma/flutter_gemma.dart';

class CreateChatAiModelUsecase {
  final FileManager fileManager;

  CreateChatAiModelUsecase({required this.fileManager});

  Future<Either<Failure, InferenceModel>> call(AiModel aiModel) async {
    final docDirectory = (await fileManager.getDocumentDirectory);
    final modelPath = '${docDirectory.path}/${aiModel.filename}';

    try {
      if (!(await fileManager.checkFileExists(modelPath))) {
        return Left(
          Failure(
            "Ai model was not downloaded. Please download it before you can use it.",
          ),
        );
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }

    FlutterGemmaPlugin.instance.modelManager.setModelPath(modelPath);

    final model = await FlutterGemmaPlugin.instance.createModel(
      modelType: ModelType.gemmaIt,
      supportImage: false,
    );
    return Right(model);
  }
}
