/// ignoring this rule to align with DateTime standard abbreviations
// ignore_for_file: non_constant_identifier_names
library;

import 'dart:async';

import 'package:simple_durations/src/constants.dart';
import 'package:simple_durations/src/planck_duration.dart';

/// An extension on [int] that provides a convenient way to create [Duration]
/// and [PlanckDuration] objects from integers.
///
/// This extension provides getters in shorthand, singular, and plural forms.
///
/// Example:
///
/// ```dart
/// import 'package:simple_durations/simple_durations.dart';
///
/// void main() {
///   final d1 = 5.seconds;
///   final d2 = 1.second;
///   final d3 = 500.ms;
///   final p1 = 10.nanoseconds;
///   final p2 = 10.ns;
/// }
/// ```
extension SimpleDurations on int {
  /// Returns a [Duration] of this many microseconds.
  Duration get us => Duration(microseconds: this);

  /// Returns a [Duration] of this many microseconds.
  Duration get um => Duration(microseconds: this);

  /// Returns a [Duration] of this many microseconds.
  Duration get microsecond => Duration(microseconds: this);

  /// Returns a [Duration] of this many microseconds.
  Duration get microseconds => Duration(microseconds: this);

  /// Returns a [Duration] of this many milliseconds.
  Duration get ms => Duration(milliseconds: this);

  /// Returns a [Duration] of this many milliseconds.
  Duration get millisecond => Duration(milliseconds: this);

  /// Returns a [Duration] of this many milliseconds.
  Duration get milliseconds => Duration(milliseconds: this);

  /// Returns a [Duration] of this many seconds.
  Duration get s => Duration(seconds: this);

  /// Returns a [Duration] of this many seconds.
  Duration get second => Duration(seconds: this);

  /// Returns a [Duration] of this many seconds.
  Duration get seconds => Duration(seconds: this);

  /// Returns a [Duration] of this many minutes.
  Duration get m => Duration(minutes: this);

  /// Returns a [Duration] of this many minutes.
  Duration get minute => Duration(minutes: this);

  /// Returns a [Duration] of this many minutes.
  Duration get minutes => Duration(minutes: this);

  /// Returns a [Duration] of this many hours.
  Duration get h => Duration(hours: this);

  /// Returns a [Duration] of this many hours.
  Duration get hour => Duration(hours: this);

  /// Returns a [Duration] of this many hours.
  Duration get hours => Duration(hours: this);

  /// Returns a [Duration] of this many days.
  Duration get d => Duration(days: this);

  /// Returns a [Duration] of this many days.
  Duration get day => Duration(days: this);

  /// Returns a [Duration] of this many days.
  Duration get days => Duration(days: this);

  /// Returns a [Duration] of this many weeks.
  Duration get w => Duration(days: this * DAYS_IN_WEEK);

  /// Returns a [Duration] of this many weeks.
  Duration get week => Duration(days: this * DAYS_IN_WEEK);

  /// Returns a [Duration] of this many weeks.
  Duration get weeks => Duration(days: this * DAYS_IN_WEEK);

  /// Returns a [Duration] of this many years.
  Duration get y => Duration(days: this * DAYS_IN_YEAR);

  /// Returns a [Duration] of this many years.
  Duration get year => Duration(days: this * DAYS_IN_YEAR);

  /// Returns a [Duration] of this many years.
  Duration get years => Duration(days: this * DAYS_IN_YEAR);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get Mf => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get monthFeb => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get monthFebruary => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get Mlf => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get monthLeapFeb => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get monthLeapFebruary =>
      Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// Returns a [Duration] of this many months, where each month has 30 days.
  Duration get M30 => Duration(days: this * DAYS_IN_MONTH_30);

  /// Returns a [Duration] of this many months, where each month has 30 days.
  Duration get month30 => Duration(days: this * DAYS_IN_MONTH_30);

  /// Returns a [Duration] of this many months, where each month has 31 days.
  Duration get M31 => Duration(days: this * DAYS_IN_MONTH_31);

  /// Returns a [Duration] of this many months, where each month has 31 days.
  Duration get month31 => Duration(days: this * DAYS_IN_MONTH_31);

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get planck => PlanckDuration.fromPlancks(toDouble());

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get plancks => PlanckDuration.fromPlancks(toDouble());

  /// Returns a [PlanckDuration] of this many quectoseconds.
  PlanckDuration get quectosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_QUECTOSECOND);

  /// Returns a [PlanckDuration] of this many quectoseconds.
  PlanckDuration get quectoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_QUECTOSECOND);

  /// Returns a [PlanckDuration] of this many rontoseconds.
  PlanckDuration get rontosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_RONTOSECOND);

  /// Returns a [PlanckDuration] of this many rontoseconds.
  PlanckDuration get rontoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_RONTOSECOND);

  /// Returns a [PlanckDuration] of this many yoctoseconds.
  PlanckDuration get yoctosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_YOCTOSECOND);

  /// Returns a [PlanckDuration] of this many yoctoseconds.
  PlanckDuration get yoctoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_YOCTOSECOND);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get jiffyPhysics =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_JIFFY_PHYSICS);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get physicsJiffy =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_JIFFY_PHYSICS);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get physicsJiffys =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_JIFFY_PHYSICS);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ZEPTOSECOND);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ZEPTOSECOND);

  /// Returns a [PlanckDuration] of this many attoseconds.
  PlanckDuration get attosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATTOSECOND);

  /// Returns a [PlanckDuration] of this many attoseconds.
  PlanckDuration get attoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATTOSECOND);

  /// Returns a [PlanckDuration] of this many atomic units of time.
  PlanckDuration get atomic =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATOMIC);

  /// Returns a [PlanckDuration] of this many atomic units of time.
  PlanckDuration get atomics =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATOMIC);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get fs =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many svedbergs.
  PlanckDuration get svedberg =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SVEDBERG);

  /// Returns a [PlanckDuration] of this many svedbergs.
  PlanckDuration get svedbergs =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SVEDBERG);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get ps =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get ns =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many shakes.
  PlanckDuration get shake =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SHAKE);

  /// Returns a [PlanckDuration] of this many shakes.
  PlanckDuration get shakes =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SHAKE);

  /// Returns a [Duration] of this many centiseconds.
  Duration get centisecond =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTISECOND);

  /// Returns a [Duration] of this many centiseconds.
  Duration get centiseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTISECOND);

  /// Returns a [Duration] of this many deciseconds.
  Duration get decisecond =>
      Duration(microseconds: this * MICROSECONDS_IN_DECISECOND);

  /// Returns a [Duration] of this many deciseconds.
  Duration get deciseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_DECISECOND);

  /// Returns a [Duration] of this many decaseconds.
  Duration get decasecond => Duration(seconds: this * DECASECOND);

  /// Returns a [Duration] of this many decaseconds.
  Duration get decaseconds => Duration(seconds: this * DECASECOND);

  /// Returns a [Duration] of this many hectoseconds.
  Duration get hectosecond => Duration(seconds: this * HECTOSECOND);

  /// Returns a [Duration] of this many hectoseconds.
  Duration get hectoseconds => Duration(seconds: this * HECTOSECOND);

  /// Returns a [Duration] of this many moments.
  Duration get moment => Duration(seconds: this * MOMENT);

  /// Returns a [Duration] of this many moments.
  Duration get moments => Duration(seconds: this * MOMENT);

  /// Returns a [Duration] of this many kiloseconds.
  Duration get kilosecond => Duration(seconds: this * KILOSECOND.toInt());

  /// Returns a [Duration] of this many kiloseconds.
  Duration get kiloseconds => Duration(seconds: this * KILOSECOND.toInt());

  /// Returns a [Duration] of this many megaseconds.
  Duration get megasecond => Duration(seconds: this * MEGASECOND.toInt());

  /// Returns a [Duration] of this many megaseconds.
  Duration get megaseconds => Duration(seconds: this * MEGASECOND.toInt());

  /// Returns a [Duration] of this many gigaseconds.
  Duration get gigasecond => Duration(seconds: this * GIGASECOND.toInt());

  /// Returns a [Duration] of this many gigaseconds.
  Duration get gigaseconds => Duration(seconds: this * GIGASECOND.toInt());

  /// Returns a [Duration] of this many teraseconds.
  Duration get terasecond => Duration(seconds: this * TERASECOND.toInt());

  /// Returns a [Duration] of this many teraseconds.
  Duration get teraseconds => Duration(seconds: this * TERASECOND.toInt());

  /// Returns a [Duration] of this many petaseconds.
  Duration get petasecond => Duration(seconds: this * PETASECOND.toInt());

  /// Returns a [Duration] of this many petaseconds.
  Duration get petaseconds => Duration(seconds: this * PETASECOND.toInt());

  /// Returns a [Duration] of this many exaseconds.
  Duration get exasecond => Duration(seconds: this * EXASECOND.toInt());

  /// Returns a [Duration] of this many exaseconds.
  Duration get exaseconds => Duration(seconds: this * EXASECOND.toInt());

  /// Returns a [Duration] of this many zettaseconds.
  Duration get zettasecond => Duration(seconds: this * ZETTASECOND.toInt());

  /// Returns a [Duration] of this many zettaseconds.
  Duration get zettaseconds => Duration(seconds: this * ZETTASECOND.toInt());

  /// Returns a [Duration] of this many yottaseconds.
  Duration get yottasecond => Duration(seconds: this * YOTTASECOND.toInt());

  /// Returns a [Duration] of this many yottaseconds.
  Duration get yottaseconds => Duration(seconds: this * YOTTASECOND.toInt());

  /// Returns a [Duration] of this many ronnaseconds.
  Duration get ronnasecond => Duration(seconds: this * RONNASECOND.toInt());

  /// Returns a [Duration] of this many ronnaseconds.
  Duration get ronnaseconds => Duration(seconds: this * RONNASECOND.toInt());

  /// Returns a [Duration] of this many quettaseconds.
  Duration get quettasecond => Duration(seconds: this * QUETTASECOND.toInt());

  /// Returns a [Duration] of this many quettaseconds.
  Duration get quettaseconds => Duration(seconds: this * QUETTASECOND.toInt());

  /// Returns a [Duration] of this many millidays.
  Duration get milliday =>
      Duration(microseconds: this * MICROSECONDS_IN_MILLIDAY.toInt());

  /// Returns a [Duration] of this many millidays.
  Duration get millidays =>
      Duration(microseconds: this * MICROSECONDS_IN_MILLIDAY.toInt());

  /// Returns a [Duration] of this many centidays.
  Duration get centiday =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTIDAY.toInt());

  /// Returns a [Duration] of this many centidays.
  Duration get centidays =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTIDAY.toInt());

  /// Returns a [Duration] of this many decidays.
  Duration get deciday =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIDAY.toInt());

  /// Returns a [Duration] of this many decidays.
  Duration get decidays =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIDAY.toInt());

  /// Returns a [Duration] of this many decadays.
  Duration get decaday => Duration(days: this * DECADAY);

  /// Returns a [Duration] of this many decadays.
  Duration get decadays => Duration(days: this * DECADAY);

  /// Returns a [Duration] of this many fortnights.
  Duration get fortnight => Duration(days: this * FORTNIGHT);

  /// Returns a [Duration] of this many fortnights.
  Duration get fortnights => Duration(days: this * FORTNIGHT);

  /// Returns a [Duration] of this many quarantines.
  Duration get quarantine => Duration(days: this * QUARANTINE);

  /// Returns a [Duration] of this many quarantines.
  Duration get quarantines => Duration(days: this * QUARANTINE);

  /// Returns a [Duration] of this many hectodays.
  Duration get hectoday => Duration(days: this * HECTODAY);

  /// Returns a [Duration] of this many hectodays.
  Duration get hectodays => Duration(days: this * HECTODAY);

  /// Returns a [Duration] of this many lunar years.
  Duration get lunarYear => Duration(
    days: this * 354,
    microseconds: this * MICROSECONDS_IN_37OFAYEAR.toInt(),
  );

  /// Returns a [Duration] of this many lunar years.
  Duration get lunarYears => Duration(
    days: this * 354,
    microseconds: this * MICROSECONDS_IN_37OFAYEAR.toInt(),
  );

  /// Returns a [Duration] of this many leap years.
  Duration get leapYear => Duration(days: this * LEAP_YEAR);

  /// Returns a [Duration] of this many leap years.
  Duration get leapYears => Duration(days: this * LEAP_YEAR);

  /// Returns a [Duration] of this many tropical years.
  Duration get tropicalYear =>
      Duration(microseconds: this * MICROSECONDS_IN_TROPICAL_YEAR.toInt());

  /// Returns a [Duration] of this many tropical years.
  Duration get tropicalYears =>
      Duration(microseconds: this * MICROSECONDS_IN_TROPICAL_YEAR.toInt());

  /// Returns a [Duration] of this many gregorian years.
  Duration get gregorianYear =>
      Duration(microseconds: this * MICROSECONDS_IN_GREGORIAN_YEAR.toInt());

  /// Returns a [Duration] of this many gregorian years.
  Duration get gregorianYears =>
      Duration(microseconds: this * MICROSECONDS_IN_GREGORIAN_YEAR.toInt());

  /// Returns a [Duration] of this many sidereal years.
  Duration get siderealYear =>
      Duration(microseconds: this * MICROSECONDS_IN_SIDEREAL_YEAR.toInt());

  /// Returns a [Duration] of this many sidereal years.
  Duration get siderealYears =>
      Duration(microseconds: this * MICROSECONDS_IN_SIDEREAL_YEAR.toInt());

  /// Returns a [Duration] of this many semesters.
  Duration get semester => Duration(days: this * (SEMESTER * DAYS_IN_WEEK));

  /// Returns a [Duration] of this many semesters.
  Duration get semesters => Duration(days: this * (SEMESTER * DAYS_IN_WEEK));

  /// Returns a [Duration] of this many olympiads.
  Duration get olympiad => Duration(days: this * (DAYS_IN_YEAR * OLYMPIAD));

  /// Returns a [Duration] of this many olympiads.
  Duration get olympiads => Duration(days: this * (DAYS_IN_YEAR * OLYMPIAD));

  /// Returns a [Duration] of this many lustrums.
  Duration get lustrum => Duration(days: this * (DAYS_IN_YEAR * LUSTRUM));

  /// Returns a [Duration] of this many lustrums.
  Duration get lustrums => Duration(days: this * (DAYS_IN_YEAR * LUSTRUM));

  /// Returns a [Duration] of this many decades.
  Duration get decade => Duration(days: this * (DAYS_IN_YEAR * DECADE));

  /// Returns a [Duration] of this many decades.
  Duration get decades => Duration(days: this * (DAYS_IN_YEAR * DECADE));

  /// Returns a [Duration] of this many indictions.
  Duration get indiction => Duration(days: this * (DAYS_IN_YEAR * INDICTION));

  /// Returns a [Duration] of this many indictions.
  Duration get indictions => Duration(days: this * (DAYS_IN_YEAR * INDICTION));

  /// Returns a [Duration] of this many jubilees.
  Duration get jubilee => Duration(days: this * (DAYS_IN_YEAR * JUBILEE));

  /// Returns a [Duration] of this many jubilees.
  Duration get jubilees => Duration(days: this * (DAYS_IN_YEAR * JUBILEE));

  /// Returns a [Duration] of this many centuries.
  Duration get century => Duration(days: this * (DAYS_IN_YEAR * CENTURY));

  /// Returns a [Duration] of this many centuries.
  Duration get centuries => Duration(days: this * (DAYS_IN_YEAR * CENTURY));

  /// Returns a [Duration] of this many millennia.
  Duration get millenia => Duration(days: this * (DAYS_IN_YEAR * MILLENIA));

  /// Returns a [Duration] of this many millennia.
  Duration get millennium => Duration(days: this * (DAYS_IN_YEAR * MILLENIA));

  /// Returns a [Duration] of this many millennia.
  Duration get millennia => Duration(days: this * (DAYS_IN_YEAR * MILLENIA));

  /// Returns a [Duration] of this many ages.
  Duration get age => Duration(
    days: this * (DAYS_IN_YEAR * AGE_YEARS),
    microseconds: this * MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
  );

  /// Returns a [Duration] of this many ages.
  Duration get ages => Duration(
    days: this * (DAYS_IN_YEAR * AGE_YEARS),
    microseconds: this * MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
  );

  /// Returns a [Duration] of this many megaannums.
  Duration get megaannum =>
      Duration(days: this * (DAYS_IN_YEAR * MEGAANNUM).toInt());

  /// Returns a [Duration] of this many megaannums.
  Duration get megaannums =>
      Duration(days: this * (DAYS_IN_YEAR * MEGAANNUM).toInt());

  /// Returns a [Duration] of this many galactic years.
  Duration get galacticYear =>
      Duration(days: this * (DAYS_IN_YEAR * GALACTIC_YEAR).toInt());

  /// Returns a [Duration] of this many galactic years.
  Duration get galacticYears =>
      Duration(days: this * (DAYS_IN_YEAR * GALACTIC_YEAR).toInt());

  /// Returns a [Duration] of this many eons.
  Duration get eon => Duration(days: this * (DAYS_IN_YEAR * EON).toInt());

  /// Returns a [Duration] of this many eons.
  Duration get eons => Duration(days: this * (DAYS_IN_YEAR * EON).toInt());

  /// Returns a [Duration] of this many kalpas.
  Duration get kalpa => Duration(days: this * (DAYS_IN_YEAR * KALPA).toInt());

  /// Returns a [Duration] of this many kalpas.
  Duration get kalpas => Duration(days: this * (DAYS_IN_YEAR * KALPA).toInt());

  /// Returns a [Duration] of this many decimal seconds.
  Duration get decimalSecond =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIMAL_SECOND.toInt());

  /// Returns a [Duration] of this many decimal seconds.
  Duration get decimalSeconds =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIMAL_SECOND.toInt());

  /// Returns a [Duration] of this many decimal minutes.
  Duration get decimalMinute => Duration(
    microseconds: this * 100 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal minutes.
  Duration get decimalMinutes => Duration(
    microseconds: this * 100 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal hours.
  Duration get decimalHour => Duration(
    microseconds: this * 10000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal hours.
  Duration get decimalHours => Duration(
    microseconds: this * 10000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal days.
  Duration get decimalDay => Duration(
    microseconds: this * 1000000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] of this many decimal days.
  Duration get decimalDays => Duration(
    microseconds: this * 1000000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt(),
  );

  /// Returns a [Duration] that is long enough to crush your enemies, see
  /// them driven before you, and to hear the lamentation of their women.
  Duration get conanTheBarbarian =>
      Duration(microseconds: this * MICROSECONDS_FOR_CROM.toInt());

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
///   final duration = 2.5.seconds;
///   final planckDuration = 1.5.nanoseconds;
///   final short = 0.5.ns;
/// }
/// ```
extension SimpleDurationsDouble on double {
  /// Returns a [Duration] of this many microseconds.
  Duration get us => Duration(microseconds: round());

  /// Returns a [Duration] of this many microseconds.
  Duration get um => Duration(microseconds: round());

  /// Returns a [Duration] of this many microseconds.
  Duration get microsecond => Duration(microseconds: round());

  /// Returns a [Duration] of this many microseconds.
  Duration get microseconds => Duration(microseconds: round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get ms => Duration(microseconds: (this * 1000).round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get millisecond => Duration(microseconds: (this * 1000).round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get s => Duration(microseconds: (this * 1000000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get second => Duration(microseconds: (this * 1000000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get seconds => Duration(microseconds: (this * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get m => Duration(microseconds: (this * 60 * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get minute => Duration(microseconds: (this * 60 * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get minutes => Duration(microseconds: (this * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get h => Duration(microseconds: (this * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get hour =>
      Duration(microseconds: (this * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get hours =>
      Duration(microseconds: (this * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get d =>
      Duration(microseconds: (this * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get day =>
      Duration(microseconds: (this * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get days =>
      Duration(microseconds: (this * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many weeks.
  Duration get w => Duration(
    microseconds: (this * DAYS_IN_WEEK * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many weeks.
  Duration get week => Duration(
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
  Duration get year => Duration(
    microseconds: (this * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many years.
  Duration get years => Duration(
    microseconds: (this * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get Mf => Duration(
    microseconds: (this * DAYS_IN_MONTH_FEB * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get monthFeb => Duration(
    microseconds: (this * DAYS_IN_MONTH_FEB * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a non-leap year.
  Duration get monthFebruary => Duration(
    microseconds: (this * DAYS_IN_MONTH_FEB * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get Mlf => Duration(
    microseconds: (this * DAYS_IN_MONTH_LEAP_FEB * 24 * 60 * 60 * 1000000)
        .round(),
  );

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get monthLeapFeb => Duration(
    microseconds: (this * DAYS_IN_MONTH_LEAP_FEB * 24 * 60 * 60 * 1000000)
        .round(),
  );

  /// Returns a [Duration] of this many months, where each month has the
  /// number of days in February in a leap year.
  Duration get monthLeapFebruary => Duration(
    microseconds: (this * DAYS_IN_MONTH_LEAP_FEB * 24 * 60 * 60 * 1000000)
        .round(),
  );

  /// Returns a [Duration] of this many months, where each month has 30 days.
  Duration get M30 => Duration(
    microseconds: (this * DAYS_IN_MONTH_30 * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has 30 days.
  Duration get month30 => Duration(
    microseconds: (this * DAYS_IN_MONTH_30 * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has 31 days.
  Duration get M31 => Duration(
    microseconds: (this * DAYS_IN_MONTH_31 * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many months, where each month has 31 days.
  Duration get month31 => Duration(
    microseconds: (this * DAYS_IN_MONTH_31 * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get planck => PlanckDuration.fromPlancks(this);

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get plancks => PlanckDuration.fromPlancks(this);

  /// Returns a [PlanckDuration] of this many quectoseconds.
  PlanckDuration get quectosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_QUECTOSECOND);

  /// Returns a [PlanckDuration] of this many quectoseconds.
  PlanckDuration get quectoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_QUECTOSECOND);

  /// Returns a [PlanckDuration] of this many rontoseconds.
  PlanckDuration get rontosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_RONTOSECOND);

  /// Returns a [PlanckDuration] of this many rontoseconds.
  PlanckDuration get rontoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_RONTOSECOND);

  /// Returns a [PlanckDuration] of this many yoctoseconds.
  PlanckDuration get yoctosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_YOCTOSECOND);

  /// Returns a [PlanckDuration] of this many yoctoseconds.
  PlanckDuration get yoctoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_YOCTOSECOND);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get jiffyPhysics =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_JIFFY_PHYSICS);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get physicsJiffy =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_JIFFY_PHYSICS);

  /// Returns a [PlanckDuration] of this many physics jiffys.
  PlanckDuration get physicsJiffys =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_JIFFY_PHYSICS);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ZEPTOSECOND);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ZEPTOSECOND);

  /// Returns a [PlanckDuration] of this many attoseconds.
  PlanckDuration get attosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATTOSECOND);

  /// Returns a [PlanckDuration] of this many attoseconds.
  PlanckDuration get attoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATTOSECOND);

  /// Returns a [PlanckDuration] of this many atomic units of time.
  PlanckDuration get atomic =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATOMIC);

  /// Returns a [PlanckDuration] of this many atomic units of time.
  PlanckDuration get atomics =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_ATOMIC);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get fs =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many svedbergs.
  PlanckDuration get svedberg =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SVEDBERG);

  /// Returns a [PlanckDuration] of this many svedbergs.
  PlanckDuration get svedbergs =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SVEDBERG);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get ps =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get ns =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanosecond =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanoseconds =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many shakes.
  PlanckDuration get shake =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SHAKE);

  /// Returns a [PlanckDuration] of this many shakes.
  PlanckDuration get shakes =>
      PlanckDuration.fromPlancks(this * PLANCKS_IN_SHAKE);

  /// Returns a [Duration] of this many centiseconds.
  Duration get centisecond =>
      Duration(microseconds: (this * MICROSECONDS_IN_CENTISECOND).round());

  /// Returns a [Duration] of this many centiseconds.
  Duration get centiseconds =>
      Duration(microseconds: (this * MICROSECONDS_IN_CENTISECOND).round());

  /// Returns a [Duration] of this many deciseconds.
  Duration get decisecond =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECISECOND).round());

  /// Returns a [Duration] of this many deciseconds.
  Duration get deciseconds =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECISECOND).round());

  /// Returns a [Duration] of this many decaseconds.
  Duration get decasecond => Duration(seconds: (this * DECASECOND).round());

  /// Returns a [Duration] of this many decaseconds.
  Duration get decaseconds => Duration(seconds: (this * DECASECOND).round());

  /// Returns a [Duration] of this many hectoseconds.
  Duration get hectosecond => Duration(seconds: (this * HECTOSECOND).round());

  /// Returns a [Duration] of this many hectoseconds.
  Duration get hectoseconds => Duration(seconds: (this * HECTOSECOND).round());

  /// Returns a [Duration] of this many moments.
  Duration get moment => Duration(seconds: (this * MOMENT).round());

  /// Returns a [Duration] of this many moments.
  Duration get moments => Duration(seconds: (this * MOMENT).round());

  /// Returns a [Duration] of this many kiloseconds.
  Duration get kilosecond => Duration(seconds: (this * KILOSECOND).round());

  /// Returns a [Duration] of this many kiloseconds.
  Duration get kiloseconds => Duration(seconds: (this * KILOSECOND).round());

  /// Returns a [Duration] of this many megaseconds.
  Duration get megasecond => Duration(seconds: (this * MEGASECOND).round());

  /// Returns a [Duration] of this many megaseconds.
  Duration get megaseconds => Duration(seconds: (this * MEGASECOND).round());

  /// Returns a [Duration] of this many gigaseconds.
  Duration get gigasecond => Duration(seconds: (this * GIGASECOND).round());

  /// Returns a [Duration] of this many gigaseconds.
  Duration get gigaseconds => Duration(seconds: (this * GIGASECOND).round());

  /// Returns a [Duration] of this many teraseconds.
  Duration get terasecond => Duration(seconds: (this * TERASECOND).round());

  /// Returns a [Duration] of this many teraseconds.
  Duration get teraseconds => Duration(seconds: (this * TERASECOND).round());

  /// Returns a [Duration] of this many petaseconds.
  Duration get petasecond => Duration(seconds: (this * PETASECOND).round());

  /// Returns a [Duration] of this many petaseconds.
  Duration get petaseconds => Duration(seconds: (this * PETASECOND).round());

  /// Returns a [Duration] of this many exaseconds.
  Duration get exasecond => Duration(seconds: (this * EXASECOND).round());

  /// Returns a [Duration] of this many exaseconds.
  Duration get exaseconds => Duration(seconds: (this * EXASECOND).round());

  /// Returns a [Duration] of this many zettaseconds.
  Duration get zettasecond => Duration(seconds: (this * ZETTASECOND).round());

  /// Returns a [Duration] of this many zettaseconds.
  Duration get zettaseconds => Duration(seconds: (this * ZETTASECOND).round());

  /// Returns a [Duration] of this many yottaseconds.
  Duration get yottasecond => Duration(seconds: (this * YOTTASECOND).round());

  /// Returns a [Duration] of this many yottaseconds.
  Duration get yottaseconds => Duration(seconds: (this * YOTTASECOND).round());

  /// Returns a [Duration] of this many ronnaseconds.
  Duration get ronnasecond => Duration(seconds: (this * RONNASECOND).round());

  /// Returns a [Duration] of this many ronnaseconds.
  Duration get ronnaseconds => Duration(seconds: (this * RONNASECOND).round());

  /// Returns a [Duration] of this many quettaseconds.
  Duration get quettasecond => Duration(seconds: (this * QUETTASECOND).round());

  /// Returns a [Duration] of this many quettaseconds.
  Duration get quettaseconds =>
      Duration(seconds: (this * QUETTASECOND).round());

  /// Returns a [Duration] of this many millidays.
  Duration get milliday =>
      Duration(microseconds: (this * MICROSECONDS_IN_MILLIDAY).round());

  /// Returns a [Duration] of this many millidays.
  Duration get millidays =>
      Duration(microseconds: (this * MICROSECONDS_IN_MILLIDAY).round());

  /// Returns a [Duration] of this many centidays.
  Duration get centiday =>
      Duration(microseconds: (this * MICROSECONDS_IN_CENTIDAY).round());

  /// Returns a [Duration] of this many centidays.
  Duration get centidays =>
      Duration(microseconds: (this * MICROSECONDS_IN_CENTIDAY).round());

  /// Returns a [Duration] of this many decidays.
  Duration get deciday =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECIDAY).round());

  /// Returns a [Duration] of this many decidays.
  Duration get decidays =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECIDAY).round());

  /// Returns a [Duration] of this many decadays.
  Duration get decaday =>
      Duration(microseconds: (this * DECADAY * 86400 * 1000000).round());

  /// Returns a [Duration] of this many decadays.
  Duration get decadays =>
      Duration(microseconds: (this * DECADAY * 86400 * 1000000).round());

  /// Returns a [Duration] of this many fortnights.
  Duration get fortnight =>
      Duration(microseconds: (this * FORTNIGHT * 86400 * 1000000).round());

  /// Returns a [Duration] of this many fortnights.
  Duration get fortnights =>
      Duration(microseconds: (this * FORTNIGHT * 86400 * 1000000).round());

  /// Returns a [Duration] of this many quarantines.
  Duration get quarantine =>
      Duration(microseconds: (this * QUARANTINE * 86400 * 1000000).round());

  /// Returns a [Duration] of this many quarantines.
  Duration get quarantines =>
      Duration(microseconds: (this * QUARANTINE * 86400 * 1000000).round());

  /// Returns a [Duration] of this many hectodays.
  Duration get hectoday =>
      Duration(microseconds: (this * HECTODAY * 86400 * 1000000).round());

  /// Returns a [Duration] of this many hectodays.
  Duration get hectodays =>
      Duration(microseconds: (this * HECTODAY * 86400 * 1000000).round());

  /// Returns a [Duration] of this many lunar years.
  Duration get lunarYear => Duration(
    microseconds: (this * (354 * 86400 * 1000000 + MICROSECONDS_IN_37OFAYEAR))
        .round(),
  );

  /// Returns a [Duration] of this many lunar years.
  Duration get lunarYears => Duration(
    microseconds: (this * (354 * 86400 * 1000000 + MICROSECONDS_IN_37OFAYEAR))
        .round(),
  );

  /// Returns a [Duration] of this many leap years.
  Duration get leapYear =>
      Duration(microseconds: (this * LEAP_YEAR * 86400 * 1000000).round());

  /// Returns a [Duration] of this many leap years.
  Duration get leapYears =>
      Duration(microseconds: (this * LEAP_YEAR * 86400 * 1000000).round());

  /// Returns a [Duration] of this many tropical years.
  Duration get tropicalYear =>
      Duration(microseconds: (this * MICROSECONDS_IN_TROPICAL_YEAR).round());

  /// Returns a [Duration] of this many tropical years.
  Duration get tropicalYears =>
      Duration(microseconds: (this * MICROSECONDS_IN_TROPICAL_YEAR).round());

  /// Returns a [Duration] of this many gregorian years.
  Duration get gregorianYear =>
      Duration(microseconds: (this * MICROSECONDS_IN_GREGORIAN_YEAR).round());

  /// Returns a [Duration] of this many gregorian years.
  Duration get gregorianYears =>
      Duration(microseconds: (this * MICROSECONDS_IN_GREGORIAN_YEAR).round());

  /// Returns a [Duration] of this many sidereal years.
  Duration get siderealYear =>
      Duration(microseconds: (this * MICROSECONDS_IN_SIDEREAL_YEAR).round());

  /// Returns a [Duration] of this many sidereal years.
  Duration get siderealYears =>
      Duration(microseconds: (this * MICROSECONDS_IN_SIDEREAL_YEAR).round());

  /// Returns a [Duration] of this many semesters.
  Duration get semester => Duration(
    microseconds: (this * SEMESTER * DAYS_IN_WEEK * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many semesters.
  Duration get semesters => Duration(
    microseconds: (this * SEMESTER * DAYS_IN_WEEK * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many olympiads.
  Duration get olympiad => Duration(
    microseconds: (this * OLYMPIAD * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many olympiads.
  Duration get olympiads => Duration(
    microseconds: (this * OLYMPIAD * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many lustrums.
  Duration get lustrum => Duration(
    microseconds: (this * LUSTRUM * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many lustrums.
  Duration get lustrums => Duration(
    microseconds: (this * LUSTRUM * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many decades.
  Duration get decade => Duration(
    microseconds: (this * DECADE * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many decades.
  Duration get decades => Duration(
    microseconds: (this * DECADE * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many indictions.
  Duration get indiction => Duration(
    microseconds: (this * INDICTION * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many indictions.
  Duration get indictions => Duration(
    microseconds: (this * INDICTION * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many jubilees.
  Duration get jubilee => Duration(
    microseconds: (this * JUBILEE * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many jubilees.
  Duration get jubilees => Duration(
    microseconds: (this * JUBILEE * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many centuries.
  Duration get century => Duration(
    microseconds: (this * CENTURY * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many centuries.
  Duration get centuries => Duration(
    microseconds: (this * CENTURY * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many millennia.
  Duration get millenia => Duration(
    microseconds: (this * MILLENIA * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many millennia.
  Duration get millennium => Duration(
    microseconds: (this * MILLENIA * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many millennia.
  Duration get millennia => Duration(
    microseconds: (this * MILLENIA * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many ages.
  Duration get age => Duration(
    microseconds:
        (this *
                (DAYS_IN_YEAR * AGE_YEARS * 86400 * 1000000 +
                    MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR))
            .round(),
  );

  /// Returns a [Duration] of this many ages.
  Duration get ages => Duration(
    microseconds:
        (this *
                (DAYS_IN_YEAR * AGE_YEARS * 86400 * 1000000 +
                    MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR))
            .round(),
  );

  /// Returns a [Duration] of this many megaannums.
  Duration get megaannum => Duration(
    microseconds: (this * MEGAANNUM * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many megaannums.
  Duration get megaannums => Duration(
    microseconds: (this * MEGAANNUM * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many galactic years.
  Duration get galacticYear => Duration(
    microseconds: (this * GALACTIC_YEAR * DAYS_IN_YEAR * 86400 * 1000000)
        .round(),
  );

  /// Returns a [Duration] of this many galactic years.
  Duration get galacticYears => Duration(
    microseconds: (this * GALACTIC_YEAR * DAYS_IN_YEAR * 86400 * 1000000)
        .round(),
  );

  /// Returns a [Duration] of this many eons.
  Duration get eon => Duration(
    microseconds: (this * EON * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many eons.
  Duration get eons => Duration(
    microseconds: (this * EON * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many kalpas.
  Duration get kalpa => Duration(
    microseconds: (this * KALPA * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many kalpas.
  Duration get kalpas => Duration(
    microseconds: (this * KALPA * DAYS_IN_YEAR * 86400 * 1000000).round(),
  );

  /// Returns a [Duration] of this many decimal seconds.
  Duration get decimalSecond =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECIMAL_SECOND).round());

  /// Returns a [Duration] of this many decimal seconds.
  Duration get decimalSeconds =>
      Duration(microseconds: (this * MICROSECONDS_IN_DECIMAL_SECOND).round());

  /// Returns a [Duration] of this many decimal minutes.
  Duration get decimalMinute => Duration(
    microseconds: (this * 100 * MICROSECONDS_IN_DECIMAL_SECOND).round(),
  );

  /// Returns a [Duration] of this many decimal minutes.
  Duration get decimalMinutes => Duration(
    microseconds: (this * 100 * MICROSECONDS_IN_DECIMAL_SECOND).round(),
  );

  /// Returns a [Duration] of this many decimal hours.
  Duration get decimalHour => Duration(
    microseconds: (this * 10000 * MICROSECONDS_IN_DECIMAL_SECOND).round(),
  );

  /// Returns a [Duration] of this many decimal hours.
  Duration get decimalHours => Duration(
    microseconds: (this * 10000 * MICROSECONDS_IN_DECIMAL_SECOND).round(),
  );

  /// Returns a [Duration] of this many decimal days.
  Duration get decimalDay => Duration(
    microseconds: (this * 1000000 * MICROSECONDS_IN_DECIMAL_SECOND).round(),
  );

  /// Returns a [Duration] of this many decimal days.
  Duration get decimalDays => Duration(
    microseconds: (this * 1000000 * MICROSECONDS_IN_DECIMAL_SECOND).round(),
  );

  /// Returns a [Duration] that is long enough to crush your enemies, see
  /// them driven before you, and to hear the lamentation of their women.
  Duration get conanTheBarbarian =>
      Duration(microseconds: (this * MICROSECONDS_FOR_CROM).round());

  /// Returns a [Duration] that is long enough to crush your enemies, see
  /// them driven before you, and to hear the lamentation of their women.
  Duration get conanTheBarbarians =>
      Duration(microseconds: (this * MICROSECONDS_FOR_CROM).round());
}

/// An extension on [num] that provides duration creation getters for generic
/// or mixed numeric types.
extension SimpleDurationsNum on num {
  /// Returns a [Duration] of this many microseconds.
  Duration get us => Duration(microseconds: toInt());

  /// Returns a [Duration] of this many microseconds.
  Duration get um => Duration(microseconds: toInt());

  /// Returns a [Duration] of this many microseconds.
  Duration get microsecond => Duration(microseconds: toInt());

  /// Returns a [Duration] of this many microseconds.
  Duration get microseconds => Duration(microseconds: toInt());

  /// Returns a [Duration] of this many milliseconds.
  Duration get ms => Duration(microseconds: (toDouble() * 1000).round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get millisecond =>
      Duration(microseconds: (toDouble() * 1000).round());

  /// Returns a [Duration] of this many milliseconds.
  Duration get milliseconds =>
      Duration(microseconds: (toDouble() * 1000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get s => Duration(microseconds: (toDouble() * 1000000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get second => Duration(microseconds: (toDouble() * 1000000).round());

  /// Returns a [Duration] of this many seconds.
  Duration get seconds =>
      Duration(microseconds: (toDouble() * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get m => Duration(microseconds: (toDouble() * 60 * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get minute =>
      Duration(microseconds: (toDouble() * 60 * 1000000).round());

  /// Returns a [Duration] of this many minutes.
  Duration get minutes =>
      Duration(microseconds: (toDouble() * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get h =>
      Duration(microseconds: (toDouble() * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get hour =>
      Duration(microseconds: (toDouble() * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many hours.
  Duration get hours =>
      Duration(microseconds: (toDouble() * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get d =>
      Duration(microseconds: (toDouble() * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get day =>
      Duration(microseconds: (toDouble() * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many days.
  Duration get days =>
      Duration(microseconds: (toDouble() * 24 * 60 * 60 * 1000000).round());

  /// Returns a [Duration] of this many weeks.
  Duration get w => Duration(
    microseconds: (toDouble() * DAYS_IN_WEEK * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many weeks.
  Duration get week => Duration(
    microseconds: (toDouble() * DAYS_IN_WEEK * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many weeks.
  Duration get weeks => Duration(
    microseconds: (toDouble() * DAYS_IN_WEEK * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many years.
  Duration get y => Duration(
    microseconds: (toDouble() * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many years.
  Duration get year => Duration(
    microseconds: (toDouble() * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [Duration] of this many years.
  Duration get years => Duration(
    microseconds: (toDouble() * DAYS_IN_YEAR * 24 * 60 * 60 * 1000000).round(),
  );

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get planck => PlanckDuration.fromPlancks(toDouble());

  /// Returns a [PlanckDuration] of this many planck times.
  PlanckDuration get plancks => PlanckDuration.fromPlancks(toDouble());

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get ns =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanosecond =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many nanoseconds.
  PlanckDuration get nanoseconds =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_NANOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get ps =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picosecond =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many picoseconds.
  PlanckDuration get picoseconds =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_PICOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get fs =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtosecond =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many femtoseconds.
  PlanckDuration get femtoseconds =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_FEMTOSECOND);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptosecond =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_ZEPTOSECOND);

  /// Returns a [PlanckDuration] of this many zeptoseconds.
  PlanckDuration get zeptoseconds =>
      PlanckDuration.fromPlancks(toDouble() * PLANCKS_IN_ZEPTOSECOND);
}

/// Utility extensions on [Duration].
extension DurationUtilities on Duration {
  /// Converts this [Duration] to a [PlanckDuration].
  PlanckDuration toPlanckDuration() => PlanckDuration.fromDuration(this);

  /// Waits for this duration to elapse.
  ///
  /// Example:
  /// ```dart
  /// await 500.ms.delay();
  /// ```
  // ignore: use_to_and_as_if_applicable
  Future<void> delay() => Future<void>.delayed(this);

  /// The number of whole weeks in this duration.
  int get inWeeks => inDays ~/ DAYS_IN_WEEK;

  /// The fractional number of weeks in this duration.
  double get inFractionalWeeks => inMicroseconds / (DAYS_IN_WEEK * 86400000000);

  /// The number of whole years in this duration (based on a 365-day year).
  int get inYears => inDays ~/ DAYS_IN_YEAR;

  /// The fractional number of years in this duration (based on a 365-day year).
  double get inFractionalYears => inMicroseconds / (DAYS_IN_YEAR * 86400000000);

  /// The number of whole fortnights (14 days) in this duration.
  int get inFortnights => inDays ~/ FORTNIGHT;

  /// The fractional number of fortnights in this duration.
  double get inFractionalFortnights =>
      inMicroseconds / (FORTNIGHT * 86400000000);

  /// The number of whole decades (10 years) in this duration.
  int get inDecades => inDays ~/ (DAYS_IN_YEAR * DECADE);

  /// The fractional number of decades in this duration.
  double get inFractionalDecades =>
      inMicroseconds / (DAYS_IN_YEAR * DECADE * 86400000000);

  /// The number of whole centuries (100 years) in this duration.
  int get inCenturies => inDays ~/ (DAYS_IN_YEAR * CENTURY);

  /// The fractional number of centuries in this duration.
  double get inFractionalCenturies =>
      inMicroseconds / (DAYS_IN_YEAR * CENTURY * 86400000000);
}
