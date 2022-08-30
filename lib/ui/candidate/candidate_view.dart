import 'package:flutter/material.dart';
import 'package:jots_demo/model/candidate.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/candidate/candidate_viewmodel.dart';

class CandidateView extends StatelessWidget {
  const CandidateView({required this.candidate, Key? key}) : super(key: key);

  final Candidate candidate;

  @override
  Widget build(BuildContext context) {
    return BaseView<CandidateViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Candidate',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Text(
                  candidate.name,
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
      viewModel: CandidateViewModel(),
    );
  }
}
