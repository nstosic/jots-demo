import 'package:flutter/material.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/event/event_viewmodel.dart';

class EventView extends StatelessWidget {
  const EventView({required this.event, Key? key}) : super(key: key);

  final String event;

  @override
  Widget build(BuildContext context) {
    return BaseView<EventViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Event',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  event,
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
      viewModel: EventViewModel(),
    );
  }
}
