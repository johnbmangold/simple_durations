// ignore_for_file: non_constant_identifier_names

import 'package:easy_durations/src/constants.dart';
import 'package:easy_durations/src/planck_duration.dart';

extension EasyDurations on int {
  Duration get um => Duration(microseconds: this);
  Duration get microseconds => Duration(microseconds: this);
  Duration get ms => Duration(milliseconds: this);
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get s => Duration(seconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get m => Duration(minutes: this);
  Duration get minutes => Duration(minutes: this);
  Duration get Mf => Duration(days: this * DAYS_IN_MONTH_FEB);
  Duration get monthFeb => Duration(days: this * DAYS_IN_MONTH_FEB);
  Duration get Mlf => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);
  Duration get monthLeapFeb => Duration(days: this * DAYS_IN_MONTH_LEAP_FEB);
  Duration get M30 => Duration(days: this * DAYS_IN_MONTH_30);
  Duration get month30 => Duration(days: this * DAYS_IN_MONTH_30);
  Duration get M31 => Duration(days: this * DAYS_IN_MONTH_31);
  Duration get month31 => Duration(days: this * DAYS_IN_MONTH_31);
  Duration get h => Duration(hours: this);
  Duration get hours => Duration(hours: this);
  Duration get d => Duration(days: this);
  Duration get days => Duration(days: this);
  Duration get w => Duration(days: this * DAYS_IN_WEEK);
  Duration get weeks => Duration(days: this * DAYS_IN_WEEK);
  Duration get y => Duration(days: this * DAYS_IN_YEAR);
  Duration get years => Duration(days: this * DAYS_IN_YEAR);

  // second measures***************************************
  PlanckDuration get plancks => PlanckDuration(plancks: this);
  PlanckDuration get quectoseconds => PlanckDuration(quectoseconds: this);
  PlanckDuration get rontoseconds => PlanckDuration(rontoseconds: this);
  PlanckDuration get yoctoseconds => PlanckDuration(yoctoseconds: this);
  PlanckDuration get jiffyPhysics => PlanckDuration(physicsJiffys: this);
  PlanckDuration get zeptosecond => PlanckDuration(zeptoseconds: this);
  PlanckDuration get attoseconds => PlanckDuration(attoseconds: this);
  PlanckDuration get atomics => PlanckDuration(atomics: this);
  PlanckDuration get femtoseconds => PlanckDuration(femtoseconds: this);
  PlanckDuration get svedbergs => PlanckDuration(svedbergs: this);
  PlanckDuration get picoseconds => PlanckDuration(picoseconds: this);
  PlanckDuration get nanoseconds => PlanckDuration(nanoseconds: this);
  PlanckDuration get shakes => PlanckDuration(shakes: this);

  // start normal duration******************************
  Duration get centiseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTISECOND);
  Duration get deciseconds =>
      Duration(microseconds: this * MICROSECONDS_IN_DECISECOND);
  Duration get decaseconds => Duration(seconds: this * DECASECOND);
  Duration get hectoseconds => Duration(seconds: this * HECTOSECOND);
  Duration get moments => Duration(seconds: this * MOMENT);
  Duration get kiloseconds => Duration(seconds: this * KILOSECOND.toInt());
  Duration get megaseconds => Duration(seconds: this * MEGASECOND.toInt());
  Duration get gigaseconds => Duration(seconds: this * GIGASECOND.toInt());
  Duration get teraseconds => Duration(seconds: this * TERASECOND.toInt());
  Duration get petaseconds => Duration(seconds: this * PETASECOND.toInt());
  Duration get exaseconds => Duration(seconds: this * EXASECOND.toInt());
  Duration get zettaseconds => Duration(seconds: this * ZETTASECOND.toInt());
  Duration get yottaseconds => Duration(seconds: this * YOTTASECOND.toInt());
  Duration get ronnaseconds => Duration(seconds: this * RONNASECOND.toInt());
  Duration get quettaseconds => Duration(seconds: this * QUETTASECOND.toInt());

  // // day measures***************************************
  Duration get milliday =>
      Duration(microseconds: this * MICROSECONDS_IN_MILLIDAY.toInt());
  Duration get centiday =>
      Duration(microseconds: this * MICROSECONDS_IN_CENTIDAY.toInt());
  Duration get deciday =>
      Duration(microseconds: this * MICROSECONDS_IN_DECIDAY.toInt());
  Duration get decaday => Duration(days: this * DECADAY);
  Duration get fortnight => Duration(days: this * FORTNIGHT);
  Duration get quarantine => Duration(days: this * QUARANTINE);
  Duration get hectoday => Duration(days: this * HECTODAY);
  Duration get lunarYear => Duration(
    days: this * 354,
    microseconds: this * MICROSECONDS_IN_37OFAYEAR.toInt(),
  );
  Duration get leapYear => Duration(days: this * LEAP_YEAR);
  Duration get tropicalYear =>
      Duration(microseconds: this * MICROSECONDS_IN_TROPICAL_YEAR.toInt());
  Duration get gregorianYear =>
      Duration(microseconds: this * MICROSECONDS_IN_GREGORIAN_YEAR.toInt());
  Duration get siderealYear =>
      Duration(microseconds: this * MICROSECONDS_IN_SIDEREAL_YEAR.toInt());

  // // week measures***************************************
  Duration get semester => Duration(days: this * (SEMESTER * DAYS_IN_WEEK));

  // // year measures***************************************
  Duration get olympiad => Duration(days: this * (DAYS_IN_YEAR * OLYMPIAD));
  Duration get lustrum => Duration(days: this * (DAYS_IN_YEAR * LUSTRUM));
  Duration get decade => Duration(days: this * (DAYS_IN_YEAR * DECADE));
  Duration get indiction => Duration(days: this * (DAYS_IN_YEAR * INDICTION));
  Duration get jubilee => Duration(days: this * (DAYS_IN_YEAR * JUBILEE));
  Duration get century => Duration(days: this * (DAYS_IN_YEAR * CENTURY));
  Duration get millenia => Duration(days: this * (DAYS_IN_YEAR * MILLENIA));
  Duration get age => Duration(
    days: this * (DAYS_IN_YEAR * AGE_YEARS),
    microseconds: this * MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
  );
  Duration get megaannum =>
      Duration(days: this * (DAYS_IN_YEAR * MEGAANNUM).toInt());
  Duration get galacticYear =>
      Duration(days: this * (DAYS_IN_YEAR * GALACTIC_YEAR).toInt());
  Duration get eon => Duration(days: this * (DAYS_IN_YEAR * EON).toInt());
  Duration get kalpa => Duration(days: this * (DAYS_IN_YEAR * KALPA).toInt());
}
