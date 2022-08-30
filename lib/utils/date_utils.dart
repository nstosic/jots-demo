import 'package:intl/intl.dart';

abstract class JotsDateUtils {
  static String dateCaption(DateTime date) {
    final diffInDays = JotsDateUtils.diffInDays(DateTime.now(), date);
    if (diffInDays > 1) {
      return '$diffInDays days';
    }
    return '$diffInDays day';
  }

  static int diffInDays(DateTime date1, DateTime date2) {
    final diffInMilis = (date1.millisecondsSinceEpoch - date2.millisecondsSinceEpoch).abs();
    return (diffInMilis.toDouble() / 86400000.00).round();
  }

  static String fullDateCaption(DateTime date) {
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }
}
