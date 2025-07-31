import 'package:simple_durations/simple_durations.dart';

/// ignoring non_constant_identifier_names to align with standard
/// DateTime abbreviations for Month
// ignore_for_file: non_constant_identifier_names

/// Extension to provide readable duration getters for [int].
extension SimpleDurations on int {
  /// Microseconds as [Duration].
  Duration get um => Duration(microseconds: this);

  /// Microseconds as [Duration].
  Duration get microseconds => Duration(microseconds: this);

  /// Milliseconds as [Duration].
  Duration get ms => Duration(milliseconds: this);

  /// Milliseconds as [Duration].
  Duration get milliseconds => Duration(milliseconds: this);

  /// Seconds as [Duration].
  Duration get s => Duration(seconds: this);

  /// Seconds as [Duration].
  Duration get seconds => Duration(seconds: this);

  /// Minutes as [Duration].
  Duration get m => Duration(minutes: this);

  /// Minutes as [Duration].
  Duration get minutes => Duration(minutes: this);

  /// February (non-leap) months as [Duration].
  Duration get Mf => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// February (non-leap) months as [Duration].
  Duration get monthFeb => Duration(days: this * DAYS_IN_MONTH_FEB);

  /// February (leap) months as [Duration].
  Duration get Mlf => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// February (leap) months as [Duration].
  Duration get monthLeapFeb => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);

  /// 30-day months as [Duration].
  Duration get M30 => Duration(days: this * DAYS_IN_MONTH_30);

  /// 30-day months as [Duration].
  Duration get month30 => Duration(days: this * DAYS_IN_MONTH_30);

  /// 31-day months as [Duration].
  Duration get M31 => Duration(days: this * DAYS_IN_MONTH_31);

  /// 31-day months as [Duration].
  Duration get month31 => Duration(days: this * DAYS_IN_MONTH_31);

  /// Hours as [Duration].
  Duration get h => Duration(hours: this);

  /// Hours as [Duration].
  Duration get hours => Duration(hours: this);

  /// Days as [Duration].
  Duration get d => Duration(days: this);

  /// Days as [Duration].
  Duration get days => Duration(days: this);

  /// Weeks as [Duration].
  Duration get w => Duration(days: this * DAYS_IN_WEEK);

  /// Weeks as [Duration].
  Duration get weeks => Duration(days: this * DAYS_IN_WEEK);

  /// Years as [Duration].
  Duration get y => Duration(days: this * DAYS_IN_YEAR);

  /// Years as [Duration].
  Duration get years => Duration(days: this * DAYS_IN_YEAR);

  // --- Planck and subsecond measures ---

  /// Planck times as [PlanckDuration].
  PlanckDuration get plancks => PlanckDuration(plancks: this);

  /// Quectoseconds as [PlanckDuration].
  PlanckDuration get quectoseconds => PlanckDuration(quectoseconds: this);

  /// Rontoseconds as [PlanckDuration].
  PlanckDuration get rontoseconds => PlanckDuration(rontoseconds: this);

  /// Yoctoseconds as [PlanckDuration].
  PlanckDuration get yoctoseconds => PlanckDuration(yoctoseconds: this);

  /// Physics jiffys as [PlanckDuration].
  PlanckDuration get jiffyPhysics => PlanckDuration(physicsJiffys: this);

  /// Zeptoseconds as [PlanckDuration].
  PlanckDuration get zeptosecond => PlanckDuration(zeptoseconds: this);

  /// Attoseconds as [PlanckDuration].
  PlanckDuration get attoseconds => PlanckDuration(attoseconds: this);

  /// Atomic units as [PlanckDuration].
  PlanckDuration get atomics => PlanckDuration(atomics: this);

  /// Femtoseconds as [PlanckDuration].
  PlanckDuration get femtoseconds => PlanckDuration(femtoseconds: this);

  /// Svedbergs as [PlanckDuration].
  PlanckDuration get svedbergs => PlanckDuration(svedbergs: this);

  /// Picoseconds as [PlanckDuration].
  PlanckDuration get picoseconds => PlanckDuration(picoseconds: this);

  /// Nanoseconds as [PlanckDuration].
  PlanckDuration get nanoseconds => PlanckDuration(nanoseconds: this);

  /// Shakes as [PlanckDuration].
  PlanckDuration get shakes => PlanckDuration(shakes: this);

  // --- Extended duration measures ---

  /// Centiseconds as [Duration].
  Duration get centiseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTISECOND);

  /// Deciseconds as [Duration].
  Duration get deciseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_DECISECOND);

  /// Decaseconds as [Duration].
  Duration get decaseconds => Duration(seconds: this * DECASECOND);

  /// Hectoseconds as [Duration].
  Duration get hectoseconds => Duration(seconds: this * HECTOSECOND);

  /// Moments (90s) as [Duration].
  Duration get moments => Duration(seconds: this * MOMENT);

  /// Kiloseconds as [Duration].
  Duration get kiloseconds => Duration(seconds: this * KILOSECOND.toInt());

  /// Megaseconds as [Duration].
  Duration get megaseconds => Duration(seconds: this * MEGASECOND.toInt());

  /// Gigaseconds as [Duration].
  Duration get gigaseconds => Duration(seconds: this * GIGASECOND.toInt());

  /// Teraseconds as [Duration].
  Duration get teraseconds => Duration(seconds: this * TERASECOND.toInt());

  /// Petaseconds as [Duration].
  Duration get petaseconds => Duration(seconds: this * PETASECOND.toInt());

  /// Exaseconds as [Duration].
  Duration get exaseconds => Duration(seconds: this * EXASECOND.toInt());

  /// Zettaseconds as [Duration].
  Duration get zettaseconds => Duration(seconds: this * ZETTASECOND.toInt());

  /// Yottaseconds as [Duration].
  Duration get yottaseconds => Duration(seconds: this * YOTTASECOND.toInt());

  /// Ronnaseconds as [Duration].
  Duration get ronnaseconds => Duration(seconds: this * RONNASECOND.toInt());

  /// Quettaseconds as [Duration].
  Duration get quettaseconds => Duration(seconds: this * QUETTASECOND.toInt());

  // --- Day measures ---

  /// Millidays as [Duration].
  Duration get milliday =>
      Duration(microseconds: this * MICROSECONDS_IN_MILLIDAY.toInt());

  /// Centidays as [Duration].
  Duration get centiday =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTIDAY.toInt());

  /// Decidays as [Duration].
  Duration get deciday =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIDAY.toInt());

  /// Decadays as [Duration].
  Duration get decaday => Duration(days: this * DECADAY);

  /// Fortnights as [Duration].
  Duration get fortnight => Duration(days: this * FORTNIGHT);

  /// Quarantines (40 days) as [Duration].
  Duration get quarantine => Duration(days: this * QUARANTINE);

  /// Hectodays as [Duration].
  Duration get hectoday => Duration(days: this * HECTODAY);

  /// Lunar years as [Duration].
  Duration get lunarYear => Duration(
    days: this * 354,
    microseconds: this * MICROSECONDS_IN_37OFAYEAR.toInt(),
  );

  /// Leap years as [Duration].
  Duration get leapYear => Duration(days: this * LEAP_YEAR);

  /// Tropical years as [Duration].
  Duration get tropicalYear =>
      Duration(microseconds: this * MICROSECONDS_IN_TROPICAL_YEAR.toInt());

  /// Gregorian years as [Duration].
  Duration get gregorianYear =>
      Duration(microseconds: this * MICROSECONDS_IN_GREGORIAN_YEAR.toInt());

  /// Sidereal years as [Duration].
  Duration get siderealYear =>
      Duration(microseconds: this * MICROSECONDS_IN_SIDEREAL_YEAR.toInt());

  // --- Week measures ---

  /// Semesters (18 weeks) as [Duration].
  Duration get semester => Duration(days: this * (SEMESTER * DAYS_IN_WEEK));

  // --- Year measures ---

  /// Olympiads (4 years) as [Duration].
  Duration get olympiad => Duration(days: this * (DAYS_IN_YEAR * OLYMPIAD));

  /// Lustrums (5 years) as [Duration].
  Duration get lustrum => Duration(days: this * (DAYS_IN_YEAR * LUSTRUM));

  /// Decades (10 years) as [Duration].
  Duration get decade => Duration(days: this * (DAYS_IN_YEAR * DECADE));

  /// Indictions (15 years) as [Duration].
  Duration get indiction => Duration(days: this * (DAYS_IN_YEAR * INDICTION));

  /// Jubilees (50 years) as [Duration].
  Duration get jubilee => Duration(days: this * (DAYS_IN_YEAR * JUBILEE));

  /// Centuries (100 years) as [Duration].
  Duration get century => Duration(days: this * (DAYS_IN_YEAR * CENTURY));

  /// Millenia (1000 years) as [Duration].
  Duration get millenia => Duration(days: this * (DAYS_IN_YEAR * MILLENIA));

  /// Ages (2148 2/3 years) as [Duration].
  Duration get age => Duration(
    days: this * (DAYS_IN_YEAR * AGE_YEARS),
    microseconds: this * MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
  );

  /// Megaannum (1 million years) as [Duration].
  Duration get megaannum =>
      Duration(days: this * (DAYS_IN_YEAR * MEGAANNUM).toInt());

  /// Galactic years as [Duration].
  Duration get galacticYear =>
      Duration(days: this * (DAYS_IN_YEAR * GALACTIC_YEAR).toInt());

  /// Eons as [Duration].
  Duration get eon => Duration(days: this * (DAYS_IN_YEAR * EON).toInt());

  /// Kalpas as [Duration].
  Duration get kalpa => Duration(days: this * (DAYS_IN_YEAR * KALPA).toInt());
}
