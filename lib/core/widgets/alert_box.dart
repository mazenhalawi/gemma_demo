import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  final String title;
  final String? message;
  final String? emoji;
  final Widget? body;
  final List<CupertinoDialogAction>? actions;

  const AlertBox({
    super.key,
    required this.title,
    required this.message,
    this.actions,
    this.body,
    this.emoji,
  }) : assert(
         (message == null && body != null) || (message != null && body == null),
       );

  Widget getContent() {
    if (body != null) {
      return body!;
    } else if (message != null) {
      return Text(message!);
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final defaultAction = CupertinoDialogAction(
      child: const Text("Ok"),
      onPressed: () => Navigator.pop(context),
    );
    return CupertinoAlertDialog(
      title: Column(
        children: [
          if (emoji != null)
            Text(
              emoji!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 50),
            ),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
      content: getContent(),
      actions: (actions == null || actions!.isEmpty)
          ? [defaultAction]
          : actions as List<Widget>,
    );
  }

  Future<T?> show<T>(BuildContext context) {
    return showCupertinoDialog(context: context, builder: (context) => this);
  }

  Future<T?> showDismissible<T>(BuildContext context) {
    return showDialog(context: context, builder: (context) => this);
  }
}
