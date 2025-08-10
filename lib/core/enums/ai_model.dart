import 'package:collection/collection.dart';

enum AiModel {
  gemma2(
    name: 'Gemma 2',
    filename: 'gemma-2b-it-cpu-int4.bin',
    link:
        'https://firebasestorage.googleapis.com/v0/b/siopi-67108.appspot.com/o/gemma-2b-it-cpu-int4.bin?alt=media&token=be21c2dc-b4ed-4718-9063-7d8a9ae34db4',
    sizeInMB: '1250',
    isGPU: false,
    supportsImages: false,
  ),
  gemma3(
    name: 'Gemma 3',
    filename: 'Gemma3-1B-IT_multi-prefill-seq_q4_ekv2048.task',
    link:
        'https://firebasestorage.googleapis.com/v0/b/siopi-67108.appspot.com/o/Gemma3-1B-IT_multi-prefill-seq_q4_ekv2048.task?alt=media&token=913e7db0-157d-43d3-b01d-8ba63308c916',
    sizeInMB: '529',
    isGPU: false,
    supportsImages: false,
  );

  final String name;
  final String filename;
  final String link;
  final String sizeInMB;
  final bool isGPU;
  final bool supportsImages;

  const AiModel({
    required this.name,
    this.filename = '',
    required this.link,
    required this.sizeInMB,
    this.isGPU = false,
    this.supportsImages = false,
  });
}

extension AiModelExt on AiModel {
  static AiModel? fromFilename(String filename) {
    return AiModel.values.firstWhereOrNull(
      (model) => model.filename.toLowerCase() == filename.toLowerCase(),
    );
  }
}
