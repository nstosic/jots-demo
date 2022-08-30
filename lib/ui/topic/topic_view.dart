import 'package:flutter/material.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/topic/topic_viewmodel.dart';

class TopicView extends StatelessWidget {
  const TopicView({required this.topic, Key? key}) : super(key: key);

  final String topic;

  @override
  Widget build(BuildContext context) {
    return BaseView<TopicViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Topic',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  topic,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
      viewModel: TopicViewModel(),
    );
  }
}
