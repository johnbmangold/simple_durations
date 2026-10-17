import 'package:simple_durations/simple_durations.dart';
import 'package:test/test.dart';

void main() {
  group('SimpleDurations', () {
    test('should return correct microseconds duration', () {
      expect(10.um, equals(const Duration(microseconds: 10)));
      expect(10.microseconds, equals(const Duration(microseconds: 10)));
    });

    test('should return correct milliseconds duration', () {
      expect(10.ms, equals(const Duration(milliseconds: 10)));
      expect(10.milliseconds, equals(const Duration(milliseconds: 10)));
    });

    test('should return correct seconds duration', () {
      expect(10.s, equals(const Duration(seconds: 10)));
      expect(10.seconds, equals(const Duration(seconds: 10)));
    });

    test('should return correct minutes duration', () {
      expect(10.m, equals(const Duration(minutes: 10)));
      expect(10.minutes, equals(const Duration(minutes: 10)));
    });

    test('should return correct hours duration', () {
      expect(10.h, equals(const Duration(hours: 10)));
      expect(10.hours, equals(const Duration(hours: 10)));
    });

    test('should return correct days duration', () {
      expect(10.d, equals(const Duration(days: 10)));
      expect(10.days, equals(const Duration(days: 10)));
    });

    test('should return correct weeks duration', () {
      expect(1.w, equals(const Duration(days: 7)));
      expect(2.weeks, equals(const Duration(days: 14)));
    });

    test('should return correct years duration', () {
      expect(1.y, equals(const Duration(days: 365)));
      expect(2.years, equals(const Duration(days: 730)));
    });

    test('should return correct monthFeb duration', () {
      expect(1.Mf, equals(const Duration(days: 28)));
      expect(2.monthFeb, equals(const Duration(days: 56)));
    });

    test('should return correct monthLeapFeb duration', () {
      expect(1.Mlf, equals(const Duration(days: 29)));
      expect(2.monthLeapFeb, equals(const Duration(days: 58)));
    });

    test('should return correct month30 duration', () {
      expect(1.M30, equals(const Duration(days: 30)));
      expect(2.month30, equals(const Duration(days: 60)));
    });

    test('should return correct month31 duration', () {
      expect(1.M31, equals(const Duration(days: 31)));
      expect(2.month31, equals(const Duration(days: 62)));
    });

    test('should return correct plancks duration', () {
      expect(1.plancks, equals(PlanckDuration(plancks: 1)));
      expect(2.plancks.inPicoseconds, closeTo(2 * 5.39e-32, 1e-10));
    });

    test('should return correct quectoseconds duration', () {
      expect(1.quectoseconds, equals(PlanckDuration(quectoseconds: 1)));
      expect(2.quectoseconds.inPicoseconds, closeTo(2 * 1e-18, 1e-10));
    });

    test('should return correct rontoseconds duration', () {
      expect(1.rontoseconds, equals(PlanckDuration(rontoseconds: 1)));
      expect(2.rontoseconds.inPicoseconds, closeTo(2 * 1e-15, 1e-10));
    });

    test('should return correct yoctoseconds duration', () {
      expect(1.yoctoseconds, PlanckDuration(yoctoseconds: 1));
      expect(2.yoctoseconds.inPicoseconds, closeTo(2 * 1e-12, 1e-10));
    });

    test('should return correct jiffyPhysics duration', () {
      expect(1.jiffyPhysics, equals(PlanckDuration(physicsJiffys: 1)));
      expect(2.jiffyPhysics.inPicoseconds, closeTo(2 * 3e-12, 1e-10));
    });

    test('should return correct zeptosecond duration', () {
      expect(1.zeptosecond, equals(PlanckDuration(zeptoseconds: 1)));
      expect(2.zeptosecond.inPicoseconds, closeTo(2 * 1e-9, 1e-10));
    });

    test('should return correct attoseconds duration', () {
      expect(1.attoseconds, equals(PlanckDuration(attoseconds: 1)));
      expect(2.attoseconds.inPicoseconds, closeTo(2 * 1e-6, 1e-10));
    });

    test('should return correct atomics duration', () {
      expect(1.atomics, equals(PlanckDuration(atomics: 1)));
      expect(2.atomics.inPlancks, closeTo(2 * 4.5304884038389e26, 1e-10));
    });

    test('should return correct femtoseconds duration', () {
      expect(1.femtoseconds, equals(PlanckDuration(femtoseconds: 1)));
      expect(2.femtoseconds.inPicoseconds, closeTo(2 * 1e-3, 1e-10));
    });

    test('should return correct svedbergs duration', () {
      expect(1.svedbergs, equals(PlanckDuration(svedbergs: 1)));
      expect(2.svedbergs.inPlancks, closeTo(2 * 1.872966181142e30, 1e-10));
    });

    test('should return correct picoseconds duration', () {
      expect(1.picoseconds, equals(PlanckDuration(picoseconds: 1)));
      expect(2.picoseconds.inPicoseconds, closeTo(2.0, 1e-10));
    });

    test('should have the correct value for PICOSECOND', () {
      expect(PICOSECOND, equals(1e-12));
    });

    test('should return correct nanoseconds duration', () {
      expect(1.nanoseconds, equals(PlanckDuration(nanoseconds: 1)));
      expect(2.nanoseconds.inPicoseconds, closeTo(2 * 1000.0, 1e-10));
    });

    test('should return correct shakes duration', () {
      expect(1.shakes, equals(PlanckDuration(shakes: 1)));
      expect(2.shakes.inPicoseconds, closeTo(2 * 10000.0, 1e-10));
    });

    test('should return correct centiseconds duration', () {
      expect(
        1.centiseconds,
        equals(const Duration(microseconds: 1 * MICROSECONDS_IN_CENTISECOND)),
      );
      expect(
        2.centiseconds,
        equals(const Duration(microseconds: 2 * MICROSECONDS_IN_CENTISECOND)),
      );
    });

    test('should return correct deciseconds duration', () {
      expect(
        1.deciseconds,
        equals(const Duration(microseconds: 1 * MICROSECONDS_IN_DECISECOND)),
      );
      expect(
        2.deciseconds,
        equals(const Duration(microseconds: 2 * MICROSECONDS_IN_DECISECOND)),
      );
    });

    test('should return correct decaseconds duration', () {
      expect(1.decaseconds, equals(const Duration(seconds: 1 * DECASECOND)));
      expect(2.decaseconds, equals(const Duration(seconds: 2 * DECASECOND)));
    });

    test('should return correct hectoseconds duration', () {
      expect(1.hectoseconds, equals(const Duration(seconds: 1 * HECTOSECOND)));
      expect(2.hectoseconds, equals(const Duration(seconds: 2 * HECTOSECOND)));
    });

    test('should return correct moments duration', () {
      expect(1.moments, equals(const Duration(seconds: 1 * MOMENT)));
      expect(2.moments, equals(const Duration(seconds: 2 * MOMENT)));
    });

    test('should return correct kiloseconds duration', () {
      expect(1.kiloseconds, equals(Duration(seconds: 1 * KILOSECOND.toInt())));
      expect(2.kiloseconds, equals(Duration(seconds: 2 * KILOSECOND.toInt())));
    });

    test('should return correct megaseconds duration', () {
      expect(1.megaseconds, equals(Duration(seconds: 1 * MEGASECOND.toInt())));
      expect(2.megaseconds, equals(Duration(seconds: 2 * MEGASECOND.toInt())));
    });

    test('should return correct gigaseconds duration', () {
      expect(1.gigaseconds, equals(Duration(seconds: 1 * GIGASECOND.toInt())));
      expect(2.gigaseconds, equals(Duration(seconds: 2 * GIGASECOND.toInt())));
    });

    test('should return correct teraseconds duration', () {
      expect(1.teraseconds, equals(Duration(seconds: 1 * TERASECOND.toInt())));
      expect(2.teraseconds, equals(Duration(seconds: 2 * TERASECOND.toInt())));
    });

    test('should return correct petaseconds duration', () {
      expect(1.petaseconds, equals(Duration(seconds: 1 * PETASECOND.toInt())));
      expect(2.petaseconds, equals(Duration(seconds: 2 * PETASECOND.toInt())));
    });

    test('should return correct exaseconds duration', () {
      expect(1.exaseconds, equals(Duration(seconds: 1 * EXASECOND.toInt())));
      expect(2.exaseconds, equals(Duration(seconds: 2 * EXASECOND.toInt())));
    });

    test('should return correct zettaseconds duration', () {
      expect(
        1.zettaseconds,
        equals(Duration(seconds: 1 * ZETTASECOND.toInt())),
      );
      expect(
        2.zettaseconds,
        equals(Duration(seconds: 2 * ZETTASECOND.toInt())),
      );
    });

    test('should return correct yottaseconds duration', () {
      expect(
        1.yottaseconds,
        equals(Duration(seconds: 1 * YOTTASECOND.toInt())),
      );
      expect(
        2.yottaseconds,
        equals(Duration(seconds: 2 * YOTTASECOND.toInt())),
      );
    });

    test('should return correct ronnaseconds duration', () {
      expect(
        1.ronnaseconds,
        equals(Duration(seconds: 1 * RONNASECOND.toInt())),
      );
      expect(
        2.ronnaseconds,
        equals(Duration(seconds: 2 * RONNASECOND.toInt())),
      );
    });

    test('should return correct quettaseconds duration', () {
      expect(
        1.quettaseconds,
        equals(Duration(seconds: 1 * QUETTASECOND.toInt())),
      );
      expect(
        2.quettaseconds,
        equals(Duration(seconds: 2 * QUETTASECOND.toInt())),
      );
    });

    test('should return correct milliday duration', () {
      expect(
        1.milliday,
        equals(Duration(microseconds: 1 * MICROSECONDS_IN_MILLIDAY.toInt())),
      );
      expect(
        2.milliday,
        equals(Duration(microseconds: 2 * MICROSECONDS_IN_MILLIDAY.toInt())),
      );
    });

    test('should return correct centiday duration', () {
      expect(
        1.centiday,
        equals(Duration(microseconds: 1 * MICROSECONDS_IN_CENTIDAY.toInt())),
      );
      expect(
        2.centiday,
        equals(Duration(microseconds: 2 * MICROSECONDS_IN_CENTIDAY.toInt())),
      );
    });

    test('should return correct deciday duration', () {
      expect(
        1.deciday,
        equals(Duration(microseconds: 1 * MICROSECONDS_IN_DECIDAY.toInt())),
      );
      expect(
        2.deciday,
        equals(Duration(microseconds: 2 * MICROSECONDS_IN_DECIDAY.toInt())),
      );
    });

    test('should return correct decaday duration', () {
      expect(1.decaday, equals(const Duration(days: 1 * DECADAY)));
      expect(2.decaday, equals(const Duration(days: 2 * DECADAY)));
    });

    test('should return correct fortnight duration', () {
      expect(1.fortnight, equals(const Duration(days: 1 * FORTNIGHT)));
      expect(2.fortnight, equals(const Duration(days: 2 * FORTNIGHT)));
    });

    test('should return correct quarantine duration', () {
      expect(1.quarantine, equals(const Duration(days: 1 * QUARANTINE)));
      expect(2.quarantine, equals(const Duration(days: 2 * QUARANTINE)));
    });

    test('should return correct hectoday duration', () {
      expect(1.hectoday, equals(const Duration(days: 1 * HECTODAY)));
      expect(2.hectoday, equals(const Duration(days: 2 * HECTODAY)));
    });

    test('should return correct lunarYear duration', () {
      expect(
        1.lunarYear,
        equals(
          Duration(days: 354, microseconds: MICROSECONDS_IN_37OFAYEAR.toInt()),
        ),
      );
      expect(
        2.lunarYear,
        equals(
          Duration(
            days: 708,
            microseconds: 2 * MICROSECONDS_IN_37OFAYEAR.toInt(),
          ),
        ),
      );
    });

    test('should return correct leapYear duration', () {
      expect(1.leapYear, equals(const Duration(days: 366)));
      expect(2.leapYear, equals(const Duration(days: 732)));
    });

    test('should return correct tropicalYear duration', () {
      expect(
        1.tropicalYear,
        equals(
          Duration(microseconds: 1 * MICROSECONDS_IN_TROPICAL_YEAR.toInt()),
        ),
      );
      expect(
        2.tropicalYear,
        equals(
          Duration(microseconds: 2 * MICROSECONDS_IN_TROPICAL_YEAR.toInt()),
        ),
      );
    });

    test('should return correct gregorianYear duration', () {
      expect(
        1.gregorianYear,
        equals(
          Duration(microseconds: 1 * MICROSECONDS_IN_GREGORIAN_YEAR.toInt()),
        ),
      );
      expect(
        2.gregorianYear,
        equals(
          Duration(microseconds: 2 * MICROSECONDS_IN_GREGORIAN_YEAR.toInt()),
        ),
      );
    });

    test('should return correct siderealYear duration', () {
      expect(
        1.siderealYear,
        equals(
          Duration(microseconds: 1 * MICROSECONDS_IN_SIDEREAL_YEAR.toInt()),
        ),
      );
      expect(
        2.siderealYear,
        equals(
          Duration(microseconds: 2 * MICROSECONDS_IN_SIDEREAL_YEAR.toInt()),
        ),
      );
    });

    test('should return correct semester duration', () {
      expect(
        1.semester,
        equals(const Duration(days: 1 * SEMESTER * DAYS_IN_WEEK)),
      );
      expect(
        2.semester,
        equals(const Duration(days: 2 * SEMESTER * DAYS_IN_WEEK)),
      );
    });

    test('should return correct olympiad duration', () {
      expect(
        1.olympiad,
        equals(const Duration(days: 1 * DAYS_IN_YEAR * OLYMPIAD)),
      );
      expect(
        2.olympiad,
        equals(const Duration(days: 2 * DAYS_IN_YEAR * OLYMPIAD)),
      );
    });

    test('should return correct lustrum duration', () {
      expect(
        1.lustrum,
        equals(const Duration(days: 1 * DAYS_IN_YEAR * LUSTRUM)),
      );
      expect(
        2.lustrum,
        equals(const Duration(days: 2 * DAYS_IN_YEAR * LUSTRUM)),
      );
    });

    test('should return correct decade duration', () {
      expect(1.decade, equals(const Duration(days: 1 * DAYS_IN_YEAR * DECADE)));
      expect(2.decade, equals(const Duration(days: 2 * DAYS_IN_YEAR * DECADE)));
    });

    test('should return correct indiction duration', () {
      expect(
        1.indiction,
        equals(const Duration(days: 1 * DAYS_IN_YEAR * INDICTION)),
      );
      expect(
        2.indiction,
        equals(const Duration(days: 2 * DAYS_IN_YEAR * INDICTION)),
      );
    });

    test('should return correct jubilee duration', () {
      expect(
        1.jubilee,
        equals(const Duration(days: 1 * DAYS_IN_YEAR * JUBILEE)),
      );
      expect(
        2.jubilee,
        equals(const Duration(days: 2 * DAYS_IN_YEAR * JUBILEE)),
      );
    });

    test('should return correct century duration', () {
      expect(
        1.century,
        equals(const Duration(days: 1 * DAYS_IN_YEAR * CENTURY)),
      );
      expect(
        2.century,
        equals(const Duration(days: 2 * DAYS_IN_YEAR * CENTURY)),
      );
    });

    test('should return correct millenia duration', () {
      expect(
        1.millenia,
        equals(const Duration(days: 1 * DAYS_IN_YEAR * MILLENIA)),
      );
      expect(
        2.millenia,
        equals(const Duration(days: 2 * DAYS_IN_YEAR * MILLENIA)),
      );
    });

    test('should return correct age duration', () {
      expect(
        1.age,
        equals(
          Duration(
            days: 1 * DAYS_IN_YEAR * AGE_YEARS,
            microseconds: MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
          ),
        ),
      );
      expect(
        2.age,
        equals(
          Duration(
            days: 2 * DAYS_IN_YEAR * AGE_YEARS,
            microseconds: 2 * MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR.toInt(),
          ),
        ),
      );
    });

    test('should return correct megaannum duration', () {
      expect(
        1.megaannum,
        equals(Duration(days: 1 * DAYS_IN_YEAR * MEGAANNUM.toInt())),
      );
      expect(
        2.megaannum,
        equals(Duration(days: 2 * DAYS_IN_YEAR * MEGAANNUM.toInt())),
      );
    });

    test('should return correct galacticYear duration', () {
      expect(
        1.galacticYear,
        equals(Duration(days: 1 * DAYS_IN_YEAR * GALACTIC_YEAR.toInt())),
      );
      expect(
        2.galacticYear,
        equals(Duration(days: 2 * DAYS_IN_YEAR * GALACTIC_YEAR.toInt())),
      );
    });

    test('should return correct eon duration', () {
      expect(1.eon, equals(Duration(days: 1 * DAYS_IN_YEAR * EON.toInt())));
      expect(2.eon, equals(Duration(days: 2 * DAYS_IN_YEAR * EON.toInt())));
    });

    test('should return correct kalpa duration', () {
      expect(1.kalpa, equals(Duration(days: 1 * DAYS_IN_YEAR * KALPA.toInt())));
      expect(2.kalpa, equals(Duration(days: 2 * DAYS_IN_YEAR * KALPA.toInt())));
    });

    test('decimalSeconds should return the correct duration', () {
      // Test with a simple integer value
      final duration1 = 1.decimalSeconds;
      expect(
        duration1,
        equals(
          Duration(microseconds: 1 * MICROSECONDS_IN_DECIMAL_SECOND.toInt()),
        ),
      );

      // Test with a decimal value
      final duration2 = 2.decimalSeconds;
      expect(
        duration2,
        equals(
          Duration(microseconds: 2 * MICROSECONDS_IN_DECIMAL_SECOND.toInt()),
        ),
      );
    });

    test('decimalMinutes should return the correct duration', () {
      final microsecondsInDecimalMinute =
          100 * MICROSECONDS_IN_DECIMAL_SECOND.toInt();

      // Test with a simple integer value
      final duration1 = 1.decimalMinutes;
      expect(
        duration1,
        equals(Duration(microseconds: microsecondsInDecimalMinute)),
      );

      // Test with a decimal value
      final duration2 = 1.decimalMinutes;
      expect(
        duration2,
        equals(Duration(microseconds: 1 * microsecondsInDecimalMinute)),
      );
    });

    test('decimalHours should return the correct duration', () {
      final microsecondsInDecimalHour =
          10000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt();

      // Test with a simple integer value
      final duration1 = 1.decimalHours;
      expect(
        duration1,
        equals(Duration(microseconds: microsecondsInDecimalHour)),
      );

      // Test with a decimal value
      final duration2 = 1.decimalHours;
      expect(
        duration2,
        equals(Duration(microseconds: 1 * microsecondsInDecimalHour)),
      );
    });

    test('decimalDays should return the correct duration', () {
      final microsecondsInDecimalDay =
          1000000 * MICROSECONDS_IN_DECIMAL_SECOND.toInt();

      // Test with a simple integer value
      final duration1 = 1.decimalDays;
      expect(
        duration1,
        equals(Duration(microseconds: microsecondsInDecimalDay)),
      );

      // Test with a decimal value
      final duration2 = 2.decimalDays;
      expect(
        duration2,
        equals(Duration(microseconds: 2 * microsecondsInDecimalDay)),
      );
    });

    test('conanTheBarbarians', () {
      expect(
        1.conanTheBarbarians.inMicroseconds,
        equals(MICROSECONDS_FOR_CROM),
      );

      expect(
        2.conanTheBarbarians.inMicroseconds,
        equals(2 * MICROSECONDS_FOR_CROM),
      );
    });

    test('should support singular and shorthand getters', () {
      expect(10.us, equals(10.microseconds));
      expect(1.microsecond, equals(1.microseconds));
      expect(1.millisecond, equals(1.milliseconds));
      expect(1.second, equals(1.seconds));
      expect(1.minute, equals(1.minutes));
      expect(1.hour, equals(1.hours));
      expect(1.day, equals(1.days));
      expect(1.week, equals(1.weeks));
      expect(1.year, equals(1.years));
      expect(1.ns, equals(1.nanoseconds));
      expect(1.nanosecond, equals(1.nanoseconds));
      expect(1.ps, equals(1.picoseconds));
      expect(1.picosecond, equals(1.picoseconds));
      expect(1.fs, equals(1.femtoseconds));
      expect(1.femtosecond, equals(1.femtoseconds));
      expect(1.planck, equals(1.plancks));
      expect(1.quectosecond, equals(1.quectoseconds));
      expect(1.rontosecond, equals(1.rontoseconds));
      expect(1.yoctosecond, equals(1.yoctoseconds));
      expect(1.physicsJiffy, equals(1.jiffyPhysics));
      expect(1.physicsJiffys, equals(1.jiffyPhysics));
      expect(1.zeptoseconds, equals(1.zeptosecond));
      expect(1.attosecond, equals(1.attoseconds));
      expect(1.atomic, equals(1.atomics));
      expect(1.svedberg, equals(1.svedbergs));
      expect(1.shake, equals(1.shakes));
      expect(1.centisecond, equals(1.centiseconds));
      expect(1.decisecond, equals(1.deciseconds));
      expect(1.decasecond, equals(1.decaseconds));
      expect(1.hectosecond, equals(1.hectoseconds));
      expect(1.moment, equals(1.moments));
      expect(1.kilosecond, equals(1.kiloseconds));
      expect(1.megasecond, equals(1.megaseconds));
      expect(1.gigasecond, equals(1.gigaseconds));
      expect(1.terasecond, equals(1.teraseconds));
      expect(1.petasecond, equals(1.petaseconds));
      expect(1.exasecond, equals(1.exaseconds));
      expect(1.zettasecond, equals(1.zettaseconds));
      expect(1.yottasecond, equals(1.yottaseconds));
      expect(1.ronnasecond, equals(1.ronnaseconds));
      expect(1.quettasecond, equals(1.quettaseconds));
      expect(1.monthFebruary, equals(1.monthFeb));
      expect(1.monthLeapFebruary, equals(1.monthLeapFeb));
      expect(1.millidays, equals(1.milliday));
      expect(1.centidays, equals(1.centiday));
      expect(1.decidays, equals(1.deciday));
      expect(1.decadays, equals(1.decaday));
      expect(1.fortnights, equals(1.fortnight));
      expect(1.quarantines, equals(1.quarantine));
      expect(1.hectodays, equals(1.hectoday));
      expect(1.lunarYears, equals(1.lunarYear));
      expect(1.leapYears, equals(1.leapYear));
      expect(1.tropicalYears, equals(1.tropicalYear));
      expect(1.gregorianYears, equals(1.gregorianYear));
      expect(1.siderealYears, equals(1.siderealYear));
      expect(1.semesters, equals(1.semester));
      expect(1.olympiads, equals(1.olympiad));
      expect(1.lustrums, equals(1.lustrum));
      expect(1.decades, equals(1.decade));
      expect(1.indictions, equals(1.indiction));
      expect(1.jubilees, equals(1.jubilee));
      expect(1.centuries, equals(1.century));
      expect(1.millennium, equals(1.millenia));
      expect(1.millennia, equals(1.millenia));
      expect(1.ages, equals(1.age));
      expect(1.megaannums, equals(1.megaannum));
      expect(1.galacticYears, equals(1.galacticYear));
      expect(1.eons, equals(1.eon));
      expect(1.kalpas, equals(1.kalpa));
      expect(1.decimalSecond, equals(1.decimalSeconds));
      expect(1.decimalMinute, equals(1.decimalMinutes));
      expect(1.decimalHour, equals(1.decimalHours));
      expect(1.decimalDay, equals(1.decimalDays));
      expect(1.conanTheBarbarian, equals(1.conanTheBarbarians));
    });
  });

  group('SimpleDurationsDouble extended units', () {
    test('supports all units and shorthands on double', () {
      expect(1.5.us, equals(const Duration(microseconds: 2)));
      expect(1.5.um, equals(const Duration(microseconds: 2)));
      expect(1.5.microsecond, equals(const Duration(microseconds: 2)));
      expect(1.0.s, equals(1.0.second));
      expect(1.0.m, equals(1.0.minute));
      expect(1.0.h, equals(1.0.hour));
      expect(1.0.d, equals(1.0.day));
      expect(1.0.w, equals(1.0.week));
      expect(1.0.y, equals(1.0.year));
      expect(1.0.planck, equals(1.0.plancks));
      expect(1.0.quectosecond, equals(1.0.quectoseconds));
      expect(1.0.rontosecond, equals(1.0.rontoseconds));
      expect(1.0.yoctosecond, equals(1.0.yoctoseconds));
      expect(1.0.physicsJiffy, equals(1.0.jiffyPhysics));
      expect(1.0.physicsJiffys, equals(1.0.jiffyPhysics));
      expect(1.0.zeptoseconds, equals(1.0.zeptosecond));
      expect(1.0.attosecond, equals(1.0.attoseconds));
      expect(1.0.atomic, equals(1.0.atomics));
      expect(1.0.fs, equals(1.0.femtoseconds));
      expect(1.0.femtosecond, equals(1.0.femtoseconds));
      expect(1.0.svedberg, equals(1.0.svedbergs));
      expect(1.0.ps, equals(1.0.picoseconds));
      expect(1.0.picosecond, equals(1.0.picoseconds));
      expect(1.0.ns, equals(1.0.nanoseconds));
      expect(1.0.nanosecond, equals(1.0.nanoseconds));
      expect(1.0.shake, equals(1.0.shakes));
      expect(1.0.centisecond, equals(1.0.centiseconds));
      expect(1.0.decisecond, equals(1.0.deciseconds));
      expect(1.0.decasecond, equals(1.0.decaseconds));
      expect(1.0.hectosecond, equals(1.0.hectoseconds));
      expect(1.0.moment, equals(1.0.moments));
      expect(1.0.kilosecond, equals(1.0.kiloseconds));
      expect(1.0.megasecond, equals(1.0.megaseconds));
      expect(1.0.gigasecond, equals(1.0.gigaseconds));
      expect(1.0.terasecond, equals(1.0.teraseconds));
      expect(1.0.petasecond, equals(1.0.petaseconds));
      expect(1.0.exasecond, equals(1.0.exaseconds));
      expect(1.0.zettasecond, equals(1.0.zettaseconds));
      expect(1.0.yottasecond, equals(1.0.yottaseconds));
      expect(1.0.ronnasecond, equals(1.0.ronnaseconds));
      expect(1.0.quettasecond, equals(1.0.quettaseconds));
      expect(1.0.Mf, equals(1.0.monthFeb));
      expect(1.0.monthFebruary, equals(1.0.monthFeb));
      expect(1.0.Mlf, equals(1.0.monthLeapFeb));
      expect(1.0.monthLeapFebruary, equals(1.0.monthLeapFeb));
      expect(1.0.M30, equals(1.0.month30));
      expect(1.0.M31, equals(1.0.month31));
      expect(1.0.milliday, equals(1.0.millidays));
      expect(1.0.centiday, equals(1.0.centidays));
      expect(1.0.deciday, equals(1.0.decidays));
      expect(1.0.decaday, equals(1.0.decadays));
      expect(1.0.fortnight, equals(1.0.fortnights));
      expect(1.0.quarantine, equals(1.0.quarantines));
      expect(1.0.hectoday, equals(1.0.hectodays));
      expect(1.0.lunarYear, equals(1.0.lunarYears));
      expect(1.0.leapYear, equals(1.0.leapYears));
      expect(1.0.tropicalYear, equals(1.0.tropicalYears));
      expect(1.0.gregorianYear, equals(1.0.gregorianYears));
      expect(1.0.siderealYear, equals(1.0.siderealYears));
      expect(1.0.semester, equals(1.0.semesters));
      expect(1.0.olympiad, equals(1.0.olympiads));
      expect(1.0.lustrum, equals(1.0.lustrums));
      expect(1.0.decade, equals(1.0.decades));
      expect(1.0.indiction, equals(1.0.indictions));
      expect(1.0.jubilee, equals(1.0.jubilees));
      expect(1.0.century, equals(1.0.centuries));
      expect(1.0.millennium, equals(1.0.millenia));
      expect(1.0.millennia, equals(1.0.millenia));
      expect(1.0.age, equals(1.0.ages));
      expect(1.0.megaannum, equals(1.0.megaannums));
      expect(1.0.galacticYear, equals(1.0.galacticYears));
      expect(1.0.eon, equals(1.0.eons));
      expect(1.0.kalpa, equals(1.0.kalpas));
      expect(1.0.decimalSecond, equals(1.0.decimalSeconds));
      expect(1.0.decimalMinute, equals(1.0.decimalMinutes));
      expect(1.0.decimalHour, equals(1.0.decimalHours));
      expect(1.0.decimalDay, equals(1.0.decimalDays));
      expect(1.0.conanTheBarbarian, equals(1.0.conanTheBarbarians));
    });

    test('fractional calculations are accurate', () {
      expect(0.5.days, equals(const Duration(hours: 12)));
      expect(0.5.weeks, equals(const Duration(days: 3, hours: 12)));
      expect(0.5.fortnights, equals(const Duration(days: 7)));
      expect(0.5.decades, equals(const Duration(days: 1825)));
    });
  });

  group('SimpleDurationsNum', () {
    test('works on num typed variables', () {
      const num n1 = 5;
      const num n2 = 2.5;

      expect(n1.us, equals(const Duration(microseconds: 5)));
      expect(n1.um, equals(const Duration(microseconds: 5)));
      expect(n1.microsecond, equals(const Duration(microseconds: 5)));
      expect(n1.microseconds, equals(const Duration(microseconds: 5)));
      expect(n1.ms, equals(const Duration(milliseconds: 5)));
      expect(n1.millisecond, equals(const Duration(milliseconds: 5)));
      expect(n1.milliseconds, equals(const Duration(milliseconds: 5)));
      expect(n1.s, equals(const Duration(seconds: 5)));
      expect(n1.second, equals(const Duration(seconds: 5)));
      expect(n1.seconds, equals(const Duration(seconds: 5)));
      expect(n1.m, equals(const Duration(minutes: 5)));
      expect(n1.minute, equals(const Duration(minutes: 5)));
      expect(n1.minutes, equals(const Duration(minutes: 5)));
      expect(n1.h, equals(const Duration(hours: 5)));
      expect(n1.hour, equals(const Duration(hours: 5)));
      expect(n1.hours, equals(const Duration(hours: 5)));
      expect(n1.d, equals(const Duration(days: 5)));
      expect(n1.day, equals(const Duration(days: 5)));
      expect(n1.days, equals(const Duration(days: 5)));
      expect(n1.w, equals(const Duration(days: 35)));
      expect(n1.week, equals(const Duration(days: 35)));
      expect(n1.weeks, equals(const Duration(days: 35)));
      expect(n1.y, equals(const Duration(days: 1825)));
      expect(n1.year, equals(const Duration(days: 1825)));
      expect(n1.years, equals(const Duration(days: 1825)));
      expect(n1.planck, equals(PlanckDuration.fromPlancks(5)));
      expect(n1.plancks, equals(PlanckDuration.fromPlancks(5)));
      expect(n1.ns, equals(PlanckDuration(nanoseconds: 5)));
      expect(n1.nanosecond, equals(PlanckDuration(nanoseconds: 5)));
      expect(n1.nanoseconds, equals(PlanckDuration(nanoseconds: 5)));
      expect(n1.ps, equals(PlanckDuration(picoseconds: 5)));
      expect(n1.picosecond, equals(PlanckDuration(picoseconds: 5)));
      expect(n1.picoseconds, equals(PlanckDuration(picoseconds: 5)));
      expect(n1.fs, equals(PlanckDuration(femtoseconds: 5)));
      expect(n1.femtosecond, equals(PlanckDuration(femtoseconds: 5)));
      expect(n1.femtoseconds, equals(PlanckDuration(femtoseconds: 5)));
      expect(n1.zeptosecond, equals(PlanckDuration(zeptoseconds: 5)));
      expect(n1.zeptoseconds, equals(PlanckDuration(zeptoseconds: 5)));

      expect(n2.seconds, equals(const Duration(milliseconds: 2500)));
    });
  });

  group('DurationUtilities', () {
    test('conversion to PlanckDuration', () {
      const dur = Duration(milliseconds: 10);
      final planckDur = dur.toPlanckDuration();
      expect(planckDur.inMilliseconds, closeTo(10, 1e-9));
    });

    test('delay executes as expected', () async {
      final sw = Stopwatch()..start();
      await 10.ms.delay();
      sw.stop();
      expect(sw.elapsedMilliseconds, greaterThanOrEqualTo(5));
    });

    test('duration units calculations', () {
      final fortnight = 1.fortnight;
      expect(fortnight.inWeeks, equals(2));
      expect(fortnight.inFractionalWeeks, closeTo(2.0, 1e-9));
      expect(fortnight.inFortnights, equals(1));
      expect(fortnight.inFractionalFortnights, closeTo(1.0, 1e-9));

      final decade = 1.decade;
      expect(decade.inYears, equals(10));
      expect(decade.inFractionalYears, closeTo(10.0, 1e-9));
      expect(decade.inDecades, equals(1));
      expect(decade.inFractionalDecades, closeTo(1.0, 1e-9));

      final century = 1.century;
      expect(century.inCenturies, equals(1));
      expect(century.inFractionalCenturies, closeTo(1.0, 1e-9));
    });
  });

  group('Planck unit consistency', () {
    test(
      '1 second corresponds exactly to 1000 milliseconds and 1e9 nanoseconds',
      () {
        final s = PlanckDuration(seconds: 1);
        expect(s.inMilliseconds, closeTo(1000.0, 1e-9));
        expect(s.inMicroseconds, closeTo(1000000.0, 1e-6));
        expect(s.inNanoseconds, closeTo(1000000000.0, 1e-4));
        expect(
          1.seconds.toPlanckDuration(),
          equals(1000.milliseconds.toPlanckDuration()),
        );
      },
    );
  });
}
