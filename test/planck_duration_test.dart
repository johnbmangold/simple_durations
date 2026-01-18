import 'package:simple_durations/simple_durations.dart';
import 'package:test/test.dart';

void main() {
  group('PlanckDuration', () {
    test('onCompare compares correctly', () {
      expect(
        PlanckDuration(
          plancks: 10,
        ).compareTo(PlanckDuration(plancks: 5)),
        isPositive,
      );
      expect(
        PlanckDuration(
          plancks: 10,
        ).compareTo(PlanckDuration(plancks: 10)),
        isZero,
      );
      expect(
        PlanckDuration(
          plancks: 10,
        ).compareTo(PlanckDuration(plancks: 15)),
        isNegative,
      );
    });

    test('hashcode hashes correctly', () {
      expect(
        PlanckDuration(plancks: 10).hashCode,
        PlanckDuration(plancks: 10).hashCode,
      );
      expect(
        PlanckDuration(plancks: 10).hashCode,
        isNot(equals(PlanckDuration(plancks: 5).hashCode)),
      );
    });

    test('quectoseconds', () {
      expect(
        PlanckDuration(quectoseconds: 10).inQuectoseconds,
        equals(10),
      );
    });

    test('rontoseconds', () {
      expect(PlanckDuration(rontoseconds: 10).inRontoseconds, equals(10));
    });

    test('yoctoseconds', () {
      expect(PlanckDuration(yoctoseconds: 10).inYoctoseconds, equals(10));
    });

    test('physicsJiffy', () {
      expect(
        PlanckDuration(physicsJiffys: 10).inPhysicsJiffy,
        equals(10),
      );
    });

    test('zeptoseconds', () {
      expect(PlanckDuration(zeptoseconds: 10).inZeptoseconds, equals(10));
    });

    test('attoseconds', () {
      expect(PlanckDuration(attoseconds: 10).inAttoseconds, equals(10));
    });

    test('atomics', () {
      expect(PlanckDuration(atomics: 10).inAtomics, equals(10));
    });

    test('femtoseconds', () {
      expect(PlanckDuration(femtoseconds: 10).inFemtoseconds, equals(10));
    });

    test('svedbergs', () {
      expect(PlanckDuration(svedbergs: 10).inSvedbergs, equals(10));
    });

    test('picoseconds', () {
      expect(PlanckDuration(picoseconds: 10).inPicoseconds, equals(10));
    });

    test('nanoseconds', () {
      expect(PlanckDuration(nanoseconds: 10).inNanoseconds, equals(10));
    });

    test('shakes', () {
      expect(PlanckDuration(shakes: 10).inShakes, equals(10));
    });

    test('microseconds', () {
      expect(PlanckDuration(microseconds: 10).inMicroseconds, equals(10));
    });

    test('milliseconds', () {
      expect(PlanckDuration(milliseconds: 10).inMilliseconds, equals(10));
    });

    test('seconds', () {
      expect(PlanckDuration(seconds: 10).inSeconds, equals(10));
    });

    test('minutes', () {
      expect(PlanckDuration(minutes: 10).inMinutes, equals(10));
    });

    test('hours', () {
      expect(PlanckDuration(hours: 10).inHours, equals(10));
    });

    test('days', () {
      expect(PlanckDuration(days: 10).inDays, equals(10));
    });

    test('toString displays appropriate units', () {
      expect(PlanckDuration().toString(), equals('0 planck times'));
      expect(PlanckDuration(seconds: 1).toString(), contains('seconds'));
      expect(
        PlanckDuration(milliseconds: 1).toString(),
        contains('milliseconds'),
      );
      expect(
        PlanckDuration(microseconds: 1).toString(),
        contains('microseconds'),
      );
      expect(
        PlanckDuration(nanoseconds: 1).toString(),
        contains('nanoseconds'),
      );
      expect(
        PlanckDuration(picoseconds: 1).toString(),
        contains('picoseconds'),
      );
      expect(
        PlanckDuration(femtoseconds: 1).toString(),
        contains('femtoseconds'),
      );
      expect(
        PlanckDuration(attoseconds: 1).toString(),
        contains('attoseconds'),
      );
      expect(
        PlanckDuration(zeptoseconds: 1).toString(),
        contains('zeptoseconds'),
      );
      expect(
        PlanckDuration(yoctoseconds: 1).toString(),
        contains('yoctoseconds'),
      );
      expect(
        PlanckDuration(rontoseconds: 1).toString(),
        contains('rontoseconds'),
      );
      expect(
        PlanckDuration(quectoseconds: 1).toString(),
        contains('quectoseconds'),
      );
    });

    test('arithmetic operators work correctly', () {
      final duration1 = PlanckDuration(seconds: 1);
      final duration2 = PlanckDuration(seconds: 2);

      expect((duration1 + duration2).inSeconds, closeTo(3.0, 1e-10));
      expect((duration2 - duration1).inSeconds, closeTo(1.0, 1e-10));
      expect((duration1 * 2.5).inSeconds, closeTo(2.5, 1e-10));
      expect((duration2 / 2.0).inSeconds, closeTo(1.0, 1e-10));
    });

    test('comparison operators work correctly', () {
      final duration1 = PlanckDuration(seconds: 1);
      final duration2 = PlanckDuration(seconds: 2);
      final duration3 = PlanckDuration(seconds: 1);

      expect(duration1 < duration2, isTrue);
      expect(duration1 <= duration2, isTrue);
      expect(duration1 <= duration3, isTrue);
      expect(duration2 > duration1, isTrue);
      expect(duration2 >= duration1, isTrue);
      expect(duration1 >= duration3, isTrue);
      expect(duration1 == duration3, isTrue);
    });

    test('toDuration converts correctly', () {
      final planckDuration = PlanckDuration(microseconds: 1000);
      final duration = planckDuration.toDuration();
      expect(duration.inMicroseconds, equals(1000));
    });

    test('constructor validates negative values', () {
      expect(
        () => PlanckDuration(seconds: -1),
        throwsA(isA<ArgumentError>()),
      );
      expect(
        () => PlanckDuration(milliseconds: -1),
        throwsA(isA<ArgumentError>()),
      );
      expect(
        () => PlanckDuration(plancks: -1),
        throwsA(isA<ArgumentError>()),
      );
    });
    test('Comparable interface implemented', () {
      final list = [
        PlanckDuration(seconds: 10),
        PlanckDuration(seconds: 1),
        PlanckDuration(seconds: 5),
      ]..sort();
      expect(list[0].inSeconds, equals(1));
      expect(list[1].inSeconds, equals(5));
      expect(list[2].inSeconds, equals(10));
    });
  });

  group('SimpleDurationsDouble', () {
    test('double extensions work correctly', () {
      expect(2.5.seconds.inMicroseconds, equals(2500000));
      expect(1.5.milliseconds.inMicroseconds, equals(1500));
      expect(0.5.minutes.inSeconds, equals(30));
      expect(1.5.nanoseconds.inPicoseconds, closeTo(1500.0, 1e-6));
      expect(2.5.picoseconds.inFemtoseconds, closeTo(2500.0, 1e-10));
    });

    test('double extensions handle fractional values', () {
      expect(1.5.seconds.toString(), equals('0:00:01.500000'));
      expect(0.5.minutes.toString(), equals('0:00:30.000000'));
      expect(2.25.hours.toString(), equals('2:15:00.000000'));
    });
  });
}
