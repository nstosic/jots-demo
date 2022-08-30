import 'package:flutter/material.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/technology/technology_viewmodel.dart';

class TechnologyView extends StatelessWidget {
  const TechnologyView({required this.technology, Key? key}) : super(key: key);

  final String technology;

  @override
  Widget build(BuildContext context) {
    return BaseView<TechnologyViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Technology',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  technology,
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
      viewModel: TechnologyViewModel(),
    );
  }
}
