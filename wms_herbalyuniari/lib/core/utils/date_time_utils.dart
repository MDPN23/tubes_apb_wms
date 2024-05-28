import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '../app_export.dart';

const String dateTimeFormatPattern = 'dd/MM/yyyy';
const String FULL_DATE_FORMAT = 'dd MMMM yyyy';

extension DateTimeExtension on DateTime {
  String format({
    String pattern = dateTimeFormatPattern,
    String? locale,
  }) {
    if(locale != null && locale.isNotEmpty){
      initializeDateTimeFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}