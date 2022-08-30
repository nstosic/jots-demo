import 'package:flutter/material.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/location/location_viewmodel.dart';

class LocationView extends StatelessWidget {
  const LocationView({required this.location, Key? key}) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return BaseView<LocationViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  location,
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
      viewModel: LocationViewModel(),
    );
  }
}
