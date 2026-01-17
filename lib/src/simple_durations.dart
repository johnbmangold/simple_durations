/// ignoring this rule to align with DateTime standard abbreviations
// ignore_for_file: non_constant_identifier_names
library;

import 'package:simple_durations/simple_durations.dart';

/// An extension on [int] that provides a convenient way to create [Duration]
/// objects from integers.
///
/// This extension provides a number of getters that allow you to create
/// [Duration] objects from integers, where the integer represents the
/// duration in a particular unit of time. For example, you can use the
/// [seconds] getter to create a [Duration] object that represents a
/// duration of a certain number of seconds.
///
/// Example:
///
/// ```dart
/// import 'package:simple_durations/simple_durations.dart';
///
/// void main() {
///   final duration = 5.seconds;
///   print(duration); // 0:00:05.000000
/// }
/// ```
extension SimpleDurations on int {
  /// Returns a [Duration] of this many microseconds.
  Duration get um => Duration(microseconds: this);

  /// Returns a [Duration] of this many microseconds.
  Duration get microseconds => Duration(microseconds: this);

  /// Returns a [Duration] of this many milliseconds.
  Duration get ms => Duration(milliseconds: this);

  /// Returns a [Duration] of this many milliseconds.
  Duration get milliseconds => Duration(milliseconds: this);

  /// Returns a [Duration] of this many seconds.
  Duration get s => Duration(seconds: this);

  /// Returns a [Duration] of this many seconds.
  Duration get seconds => Duration(seconds: this);

  /// Returns a [Duration] of this many minutes.
  Duration get m => Duration(minutes: this);

  /// Returns a [Duration] of this many minutes.
  Duration get minutes => Duration(minutes: this);

  /// Returns a [Duration] of this many hours.
  Duration get h => Duration(hours: this);

  /// Returns a [Duration] of this many hours.
  Duration get hours => Duration(hours: this);

  /// Returns a [Duration] of this many days.
  Duration get d => Duration(days: this);

  /// Returns a [Duration] of this many days.
  Duration get days => Duration(days: this);

  /// Returns a [Duration] of this many weeks.
  Duration get w => Duration(days: this * DAYS_IN_WEEK);

  /// Returns a [Duration] of this many weeks.
  Duration get weeks => Duration(days: this * DAYS_IN_WEEK);

  /// Returns a [Duration] of this many years.
  Duration get y => Duration(days: this * DAYS_IN_YEAR);

  /// Returns a [Duration] of this many years.
  Duration get years => Duration(days: this * DAYS_IN_YEAR);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get Mf => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get monthFeb => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get Mlf => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get monthLeapFeb => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// Returns a [Duration] of this many months, where each month has 30 days.
  Duration get M30 => Duration(days: this * DAYS_IN_MONTH_30);

  /// Returns a [Duration] of this many months, where each month has 30 days.
  Duration get month30 => Duration(days: this * DAYS_IN_MONTH_30);

  /// Returns a [Duration] of this many months, where each month has 31 days.
  Duration get M31 => Duration(days: this * DAYS_IN_MONTH_31);

  /// Returns a [Duration] of this many months, where each month has 31 days.
  Duration get month31 => Duration(days: this * DAYS_IN_MONTH_31);

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get plancks => PlanckDuration(plancks: toDouble());

  /// Returns a [PlanckDuration] of this many quectoseconds.
  PlanckDuration get quectoseconds => PlanckDuration(quectoseconds: this);

  /// Returns a [PlanckDuration] of this many rontoseconds.
  PlanckDuration get rontoseconds => PlanckDuration(rontoseconds: this);

  /// Returns a [PlanckDuration] of this many yoctoseconds.
  PlanckDuration get yoctoseconds => PlanckDuration(yoctoseconds: this);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get jiffyPhysics => PlanckDuration(physicsJiffys: this);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptosecond => PlanckDuration(zeptoseconds: this);

  /// Returns a [PlanckDuration] of this many attoseconds.
  PlanckDuration get attoseconds => PlanckDuration(attoseconds: this);

  /// Returns a [PlanckDuration] of this many atomic units of time.
  PlanckDuration get atomics => PlanckDuration(atomics: this);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtoseconds => PlanckDuration(femtoseconds: this);

  /// Returns a [PlanckDuration] of this many svedbergs.
  PlanckDuration get svedbergs => PlanckDuration(svedbergs: this);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picoseconds => PlanckDuration(picoseconds: this);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanoseconds => PlanckDuration(nanoseconds: this);

  /// Returns a [PlanckDuration] of this many shakes.
  PlanckDuration get shakes => PlanckDuration(shakes: this);

  /// Returns a [Duration] of this many centiseconds.
  Duration get centiseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTISECOND);

  /// Returns a [Duration] of this many deciseconds.
  Duration get deciseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_DECISECOND);

  /// Returns a [Duration] of this many decaseconds.
  Duration get decaseconds => Duration(seconds: this * DECASECOND);

  /// Returns a [Duration] of this many hectoseconds.
  Duration get hectoseconds => Duration(seconds: this * HECTOSECOND);

  /// Returns a [Duration] of this many moments.
  Duration get moments => Duration(seconds: this * MOMENT);

  /// Returns a [Duration] of this many kiloseconds.
  Duration get kiloseconds => Duration(seconds: this * KILOSECOND.toInt());

  /// Returns a [Duration] of this many megaseconds.
  Duration get megaseconds => Duration(seconds: this * MEGASECOND.toInt());

  /// Returns a [Duration] of this many gigaseconds.
  Duration get gigaseconds => Duration(seconds: this * GIGASECOND.toInt());

  /// Returns a [Duration] of this many teraseconds.
  Duration get teraseconds => Duration(seconds: this * TERASECOND.toInt());

  /// Returns a [Duration] of this many petaseconds.
  Duration get petaseconds => Duration(seconds: this * PETASECOND.toInt());

  /// Returns a [Duration] of this many exaseconds.
  Duration get exaseconds => Duration(seconds: this * EXASECOND.toInt());

  /// Returns a [Duration] of this many zettaseconds.
  Duration get zettaseconds => Duration(seconds: this * ZETTASECOND.toInt());

  /// Returns a [Duration] of this many yottaseconds.
  Duration get yottaseconds => Duration(seconds: this * YOTTASECOND.toInt());

  /// Returns a [Duration] of this many ronnaseconds.
  Duration get ronnaseconds => Duration(seconds: this * RONNASECOND.toInt());

  /// Returns a [Duration] of this many quettaseconds.
  Duration get quettaseconds => Duration(seconds: this * QUETTASECOND.toInt());

  /// Returns a [Duration] of this many millidays.
  Duration get milliday =>
      Duration(microseconds: this * MICROSECONDS_IN_MILLIDAY.toInt());

  /// Returns a [Duration] of this many centidays.
  Duration get centiday =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTIDAY.toInt());

  /// Returns a [Duration] of this many decidays.
  Duration get deciday =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIDAY.toInt());

  /// Returns a [Duration] of this many decadays.
  Duration get decaday => Duration(days: this * DECADAY);

  /// Returns a [Duration] of this many fortnights.
  Duration get fortnight => Duration(days: this * FORTNIGHT);

  /// Returns a [Duration] of this many quarantines.
  Duration get quarantine => Duration(days: this * QUARANTINE);

  /// Returns a [Duration] of this many hectodays.
  Duration get hectoday => Duration(days: this * HECTODAY);

  /// Returns a [Duration] of this many lunar years.
  Duration get lunarYear => Duration(
    days: this * 354,
    microseconds: this * MICROSECONDS_IN_37OFAYEAR.toInt(),
  );

  /// Returns a [Duration] of this many leap years.
  Duration get leapYear => Duration(days: this * LEAP_YEAR);

  /// Returns a [Duration] of this many tropical years.
  Duration get tropicalYear =>
      Duration(microseconds: this * MICROSECONDS_IN_TROPICAL_YEAR.toInt());

  /// Returns a [Duration] of this many gregorian years.
  Duration get gregorianYear =>
      Duration(microseconds: this * MICROSECONDS_IN_GREGORIAN_YEAR.toInt());

  /// Returns a [Duration] of this many sidereal years.
  Duration get siderealYear =>
      Duration(microseconds: this * MICROSECONDS_IN_SIDEREAL_YEAR.toInt());

  /// Returns a [Duration] of this many semesters.
  Duration get semester => Duration(days: this * (SEMESTER * DAYS_IN_WEEK));

  /// Returns a [Duration] of this many olympiads.
  Duration get olympiad => Duration(days: this * (DAYS_IN_YEAR * OLYMPIAD));

  /// Returns a [Duration] of this many lustrums.
  Duration get lustrum => Duration(days: this * (DAYS_IN_YEAR * LUSTRUM));

  /// Returns a [Duration] of this many decades.
  Duration get decade => Duration(days: this * (DAYS_IN_YEAR * DECADE));

  /// Returns a [Duration] of this many indictions.
  Duration get indiction => Duration(days: this * (DAYS_IN_YEAR * INDICTION));

  /// Returns a [Duration] of this many jubilees.
  Duration get jubilee => Duration(days: this * (DAYS_IN_YEAR * JUBILEE));

  /// Returns a [Duration] of this many centuries.
  Duration get century => Duration(days: this * (DAYS_IN_YEAR * CENTURY));

  /// Returns a [Duration] of this many millenia.
  Duration get millenia => Duration(days: this * (DAYS_IN_YEAR * MILLENIA));

  /// Returns a [Duration] of this many ages.
  Duration get age => Duration(
    days: this * (DAYS_IN_YEAR * AGE_YEARS),
    microseconds: this * MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
  );

  /// Returns a [Duration] of this many megaannums.
  Duration get megaannum =>
      Duration(days: this * (DAYS_IN_YEAR * MEGAANNUM).toInt());

  /// Returns a [Duration] of this many galactic years.
  Duration get galacticYear =>
      Duration(days: this * (DAYS_IN_YEAR * GALACTIC_YEAR).toInt());

  /// Returns a [Duration] of this many eons.
  Duration get eon => Duration(days: this * (DAYS_IN_YEAR * EON).toInt());

  /// Returns a [Duration] of this many kalpas.
  Duration get kalpa => Duration(days: this * (DAYS_IN_YEAR * KALPA).toInt());

  /// Returns a [Duration] of this many decimal seconds.
  Duration get decimalSeconds =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIMAL_SECOND.toInt());

  /// Returns a [Duration] of this many decimal minutes.
  Duration get decimalMinutes => Duration(
    microseconds: this * 100 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal hours.
  Duration get decimalHours => Duration(
    microseconds: this * 10000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal days.
  Duration get decimalDays => Duration(
    microseconds: this * 1000000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] that is long enough to crush your enemies, see
  /// them driven before you, and to hear the lamentation of their women.
  Duration get conanTheBarbarians =>
      Duration(microseconds: this * MICROSECONDS_FOR_CROM.toInt());
}

/// An extension on [double] that provides a convenient way to create [Duration]
/// and [PlanckDuration] objects from floating-point numbers.
///
/// This extension provides the same functionality as [SimpleDurations] but
/// allows for fractional time values, enabling more precise duration
/// calculations.
///
/// Example:
///
/// ```dart
/// import 'package:simple_durations/simple_durations.dart';
///
/// void main() {
///   final duration = 2.5.seconds; // 2.5 seconds
///   final planckDuration = 1.5.nanoseconds; // 1.5 nanoseconds
///   print(duration); // 0:00:02.500000
///   print(planckDuration); // 1.500000 nanoseconds
/// }
/// ```
extension SimpleDurationsDouble on double {
  /// Returns a [Duration] of this many microseconds.
  Duration get um => Duration(microseconds: round());

  /// Returns a [Duration] of this many microseconds.
  Duration get microseconds => Duration(microseconds: round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get ms => Duration(microseconds: (this * 1000).round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get s => Duration(microseconds: (this * 1000000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get seconds => Duration(microseconds: (this * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get m => Duration(microseconds: (this * 60 * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get minutes => Duration(microseconds: (this * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get h => Duration(microseconds: (this * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get hours =>
      Duration(microseconds: (this * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get d =>
      Duration(microseconds: (this * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get days =>
      Duration(microseconds: (this * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many weeks.
  Duration get w => Duration(
    microseconds: (this * DAYS_IN_WEEK * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many weeks.
  Duration get weeks => Duration(
    microseconds: (this * DAYS_IN_WEEK * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many years.
  Duration get y => Duration(
    microseconds: (this * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many years.
  Duration get years => Duration(
    microseconds: (this * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get plancks => PlanckDuration(plancks: this);

  /// Returns a [PlanckDuration] of this many quectoseconds.
  PlanckDuration get quectoseconds => PlanckDuration(quectoseconds: this);

  /// Returns a [PlanckDuration] of this many rontoseconds.
  PlanckDuration get rontoseconds => PlanckDuration(rontoseconds: this);

  /// Returns a [PlanckDuration] of this many yoctoseconds.
  PlanckDuration get yoctoseconds => PlanckDuration(yoctoseconds: this);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get jiffyPhysics => PlanckDuration(physicsJiffys: this);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptosecond => PlanckDuration(zeptoseconds: this);

  /// Returns a [PlanckDuration] of this many attoseconds.
  PlanckDuration get attoseconds => PlanckDuration(attoseconds: this);

  /// Returns a [PlanckDuration] of this many atomic units of time.
  PlanckDuration get atomics => PlanckDuration(atomics: this);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtoseconds => PlanckDuration(femtoseconds: this);

  /// Returns a [PlanckDuration] of this many svedbergs.
  PlanckDuration get svedbergs => PlanckDuration(svedbergs: this);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picoseconds => PlanckDuration(picoseconds: this);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanoseconds => PlanckDuration(nanoseconds: this);

  /// Returns a [PlanckDuration] of this many shakes.
  PlanckDuration get shakes => PlanckDuration(shakes: this);

  /// Returns a [Duration] of this many centiseconds.
  Duration get centiseconds =>
      Duration(microseconds: (this * MICROSECONDS_IN_CENTISECOND).round());

  /// Returns a [Duration] of this many deciseconds.
  Duration get deciseconds =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECISECOND).round());

  /// Returns a [Duration] of this many decaseconds.
  Duration get decaseconds => Duration(seconds: (this * DECASECOND).round());

  /// Returns a [Duration] of this many hectoseconds.
  Duration get hectoseconds => Duration(seconds: (this * HECTOSECOND).round());

  /// Returns a [Duration] of this many moments.
  Duration get moments => Duration(seconds: (this * MOMENT).round());

  /// Returns a [Duration] of this many kiloseconds.
  Duration get kiloseconds => Duration(seconds: (this * KILOSECOND).round());

  /// Returns a [Duration] of this many megaseconds.
  Duration get megaseconds => Duration(seconds: (this * MEGASECOND).round());

  /// Returns a [Duration] of this many gigaseconds.
  Duration get gigaseconds => Duration(seconds: (this * GIGASECOND).round());

  /// Returns a [Duration] of this many teraseconds.
  Duration get teraseconds => Duration(seconds: (this * TERASECOND).round());

  /// Returns a [Duration] of this many petaseconds.
  Duration get petaseconds => Duration(seconds: (this * PETASECOND).round());

  /// Returns a [Duration] of this many exaseconds.
  Duration get exaseconds => Duration(seconds: (this * EXASECOND).round());

  /// Returns a [Duration] of this many zettaseconds.
  Duration get zettaseconds => Duration(seconds: (this * ZETTASECOND).round());

  /// Returns a [Duration] of this many yottaseconds.
  Duration get yottaseconds => Duration(seconds: (this * YOTTASECOND).round());

  /// Returns a [Duration] of this many ronnaseconds.
  Duration get ronnaseconds => Duration(seconds: (this * RONNASECOND).round());

  /// Returns a [Duration] of this many quettaseconds.
  Duration get quettaseconds =>
      Duration(seconds: (this * QUETTASECOND).round());
}
