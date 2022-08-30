import 'package:flutter/material.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/date/date_viewmodel.dart';
import 'package:jots_demo/utils/date_utils.dart';

class DateView extends StatelessWidget {
  const DateView({required this.date, Key? key}) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return BaseView<DateViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Date',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  JotsDateUtils.fullDateCaption(date),
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
      viewModel: DateViewModel(),
    );
  }
}
