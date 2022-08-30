import 'package:flutter/material.dart';
import 'package:jots_demo/model/candidate_feedback.dart';
import 'package:jots_demo/ui/widgets/candidate_action_item.dart';

class CandidateListItem extends StatelessWidget {
  const CandidateListItem({required this.data, Key? key}) : super(key: key);

  final CandidateFeedback data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 4.0,
          height: 4.0,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 6.0,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    data.candidate.name,
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    ' · ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    data.candidate.phoneNumber,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  const Text(
                    ' · ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      data.hiringDecision,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                data.textualFeedback,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 24.0),
              ListView.builder(
                itemBuilder: (context, index) => CandidateActionItem(content: data.content[index]),
                itemCount: data.content.length,
                padding: const EdgeInsets.only(bottom: 16.0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
