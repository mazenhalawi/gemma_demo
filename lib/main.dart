import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';
import 'package:gemma_demo/features/model_selection/presentation/screen/model_selection_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  await FileDownloader().start();
  await FileDownloader().trackTasks();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: BlocProvider(
          create: (_) => getIt.get<ModelSelectionBloc>(),
          child: const ModelSelectionScreen(),
        ),
      ),
    );
  }
}
