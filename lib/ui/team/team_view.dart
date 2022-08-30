import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/team/team_viewmodel.dart';

class TeamView extends StatelessWidget {
  const TeamView({required this.team, Key? key}) : super(key: key);

  final String team;

  @override
  Widget build(BuildContext context) {
    return BaseView<TeamViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Team',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  team,
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
      viewModel: TeamViewModel(),
    );
  }
}
