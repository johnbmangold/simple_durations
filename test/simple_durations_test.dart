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
      expect(1.plancks, equals(const PlanckDuration(plancks: 1)));
      expect(2.plancks.inPicoseconds, closeTo(2 * 5.39e-32, 1e-10));
    });

    test('should return correct quectoseconds duration', () {
      expect(1.quectoseconds, equals(const PlanckDuration(quectoseconds: 1)));
      expect(2.quectoseconds.inPicoseconds, closeTo(2 * 1e-18, 1e-10));
    });

    test('should return correct rontoseconds duration', () {
      expect(1.rontoseconds, equals(const PlanckDuration(rontoseconds: 1)));
      expect(2.rontoseconds.inPicoseconds, closeTo(2 * 1e-15, 1e-10));
    });

    test('should return correct yoctoseconds duration', () {
      expect(1.yoctoseconds, const PlanckDuration(yoctoseconds: 1));
      expect(2.yoctoseconds.inPicoseconds, closeTo(2 * 1e-12, 1e-10));
    });

    test('should return correct jiffyPhysics duration', () {
      expect(1.jiffyPhysics, equals(const PlanckDuration(physicsJiffys: 1)));
      expect(2.jiffyPhysics.inPicoseconds, closeTo(2 * 3e-12, 1e-10));
    });

    test('should return correct zeptosecond duration', () {
      expect(1.zeptosecond, equals(const PlanckDuration(zeptoseconds: 1)));
      expect(2.zeptosecond.inPicoseconds, closeTo(2 * 1e-9, 1e-10));
    });

    test('should return correct attoseconds duration', () {
      expect(1.attoseconds, equals(const PlanckDuration(attoseconds: 1)));
      expect(2.attoseconds.inPicoseconds, closeTo(2 * 1e-6, 1e-10));
    });

    test('should return correct atomics duration', () {
      expect(1.atomics, equals(const PlanckDuration(atomics: 1)));
      expect(2.atomics.inPlancks, closeTo(2 * 4.5304884038389e26, 1e-10));
    });

    test('should return correct femtoseconds duration', () {
      expect(1.femtoseconds, equals(const PlanckDuration(femtoseconds: 1)));
      expect(2.femtoseconds.inPicoseconds, closeTo(2 * 1e-3, 1e-10));
    });

    test('should return correct svedbergs duration', () {
      expect(1.svedbergs, equals(const PlanckDuration(svedbergs: 1)));
      expect(2.svedbergs.inPlancks, closeTo(2 * 1.872966181142e30, 1e-10));
    });

    test('should return correct picoseconds duration', () {
      expect(1.picoseconds, equals(const PlanckDuration(picoseconds: 1)));
      expect(2.picoseconds.inPicoseconds, closeTo(2.0, 1e-10));
    });

    test('should return correct nanoseconds duration', () {
      expect(1.nanoseconds, equals(const PlanckDuration(nanoseconds: 1)));
      expect(2.nanoseconds.inPicoseconds, closeTo(2 * 1000.0, 1e-10));
    });

    test('should return correct shakes duration', () {
      expect(1.shakes, equals(const PlanckDuration(shakes: 1)));
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
  });
}
