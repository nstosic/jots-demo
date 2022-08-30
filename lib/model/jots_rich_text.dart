import 'package:jots_demo/model/candidate.dart';

abstract class JotsRichText {
  JotsRichText({required this.caption});

  final String caption;
}

class LinkableCandidateJotsRichText extends JotsRichText {
  LinkableCandidateJotsRichText({
    required this.candidate,
    required super.caption,
  });

  final Candidate candidate;
}

class LinkableDateJotsRichText extends JotsRichText {
  LinkableDateJotsRichText({
    required super.caption,
    required this.date,
  });

  final DateTime date;
}

class LinkableEventJotsRichText extends JotsRichText {
  LinkableEventJotsRichText({
    required super.caption,
    required this.event,
  });

  final String event;
}

class LinkableLocationJotsRichText extends JotsRichText {
  LinkableLocationJotsRichText({
    required super.caption,
    required this.location,
  });

  final String location;
}

class LinkableTeamJotsRichText extends JotsRichText {
  LinkableTeamJotsRichText({
    required super.caption,
    required this.team,
  });

  final String team;
}

class LinkableTechnologyJotsRichText extends JotsRichText {
  LinkableTechnologyJotsRichText({
    required super.caption,
    required this.technology,
  });

  final String technology;
}

class LinkableTopicJotsRichText extends JotsRichText {
  LinkableTopicJotsRichText({
    required super.caption,
    required this.topic,
  });

  final String topic;
}

class PlainJotsRichText extends JotsRichText {
  PlainJotsRichText({required super.caption});
}
