import 'package:flutter/material.dart';
import 'package:jots_demo/model/candidate.dart';
import 'package:jots_demo/ui/candidate/candidate_view.dart';
import 'package:jots_demo/ui/date/date_view.dart';
import 'package:jots_demo/ui/event/event_view.dart';
import 'package:jots_demo/ui/home/home_view.dart';
import 'package:jots_demo/ui/location/location_view.dart';
import 'package:jots_demo/ui/team/team_view.dart';
import 'package:jots_demo/ui/technology/technology_view.dart';
import 'package:jots_demo/ui/topic/topic_view.dart';

abstract class JotsRoutes {
  static const home = '/';
  static const candidate = '/candidate/';
  static const date = '/date/';
  static const event = '/event/';
  static const location = '/location/';
  static const team = '/team/';
  static const technology = '/technology/';
  static const topic = '/topic/';
}

abstract class JotsRouter {
  static Route<dynamic> generateRoute(RouteSettings route) {
    final path = route.name;
    if (path == JotsRoutes.home) {
      return MaterialPageRoute(builder: (context) => const HomeView());
    }
    final canonicalPath = path!.substring(0, path.indexOf('/', 1) + 1);
    return MaterialPageRoute(builder: (context) {
      switch (canonicalPath) {
        case JotsRoutes.candidate:
          return CandidateView(
            candidate: Candidate(
              name: path.split('/').last,
              phoneNumber: '',
            ),
          );
        case JotsRoutes.date:
          return DateView(
            date: DateTime.parse(
              path.split('/').last,
            ),
          );
        case JotsRoutes.event:
          return EventView(event: path.split('/').last);
        case JotsRoutes.location:
          return LocationView(location: path.split('/').last);
        case JotsRoutes.team:
          return TeamView(team: path.split('/').last);
        case JotsRoutes.technology:
          return TechnologyView(technology: path.split('/').last);
        case JotsRoutes.topic:
          return TopicView(topic: path.split('/').last);
        default:
          return const Scaffold(
            body: Center(
              child: Text('Unknown route'),
            ),
          );
      }
    });
  }
}
