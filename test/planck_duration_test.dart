import 'package:simple_durations/simple_durations.dart';
import 'package:test/test.dart';

void main() {
  group('PlanckDuration', () {
    test('onCompare compares correctly', () {
      expect(
        PlanckDuration(plancks: 10).compareTo(PlanckDuration(plancks: 5)),
        isPositive,
      );
      expect(
        PlanckDuration(plancks: 10).compareTo(PlanckDuration(plancks: 10)),
        isZero,
      );
      expect(
        PlanckDuration(plancks: 10).compareTo(PlanckDuration(plancks: 15)),
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
        closeTo(10, 1e-9),
      );
    });

    test('rontoseconds', () {
      expect(
        PlanckDuration(rontoseconds: 10).inRontoseconds,
        closeTo(10, 1e-9),
      );
    });

    test('yoctoseconds', () {
      expect(
        PlanckDuration(yoctoseconds: 10).inYoctoseconds,
        closeTo(10, 1e-9),
      );
    });

    test('physicsJiffy', () {
      expect(
        PlanckDuration(physicsJiffys: 10).inPhysicsJiffy,
        closeTo(10, 1e-9),
      );
    });

    test('zeptoseconds', () {
      expect(
        PlanckDuration(zeptoseconds: 10).inZeptoseconds,
        closeTo(10, 1e-9),
      );
    });

    test('attoseconds', () {
      expect(PlanckDuration(attoseconds: 10).inAttoseconds, closeTo(10, 1e-9));
    });

    test('atomics', () {
      expect(PlanckDuration(atomics: 10).inAtomics, closeTo(10, 1e-9));
    });

    test('femtoseconds', () {
      expect(
        PlanckDuration(femtoseconds: 10).inFemtoseconds,
        closeTo(10, 1e-9),
      );
    });

    test('svedbergs', () {
      expect(PlanckDuration(svedbergs: 10).inSvedbergs, closeTo(10, 1e-9));
    });

    test('picoseconds', () {
      expect(PlanckDuration(picoseconds: 10).inPicoseconds, closeTo(10, 1e-9));
    });

    test('nanoseconds', () {
      expect(PlanckDuration(nanoseconds: 10).inNanoseconds, closeTo(10, 1e-9));
    });

    test('shakes', () {
      expect(PlanckDuration(shakes: 10).inShakes, closeTo(10, 1e-9));
    });

    test('microseconds', () {
      expect(
        PlanckDuration(microseconds: 10).inMicroseconds,
        closeTo(10, 1e-9),
      );
    });

    test('milliseconds', () {
      expect(
        PlanckDuration(milliseconds: 10).inMilliseconds,
        closeTo(10, 1e-9),
      );
    });

    test('seconds', () {
      expect(PlanckDuration(seconds: 10).inSeconds, closeTo(10, 1e-9));
    });

    test('minutes', () {
      expect(PlanckDuration(minutes: 10).inMinutes, closeTo(10, 1e-9));
    });

    test('hours', () {
      expect(PlanckDuration(hours: 10).inHours, closeTo(10, 1e-9));
    });

    test('days', () {
      expect(PlanckDuration(days: 10).inDays, closeTo(10, 1e-9));
    });

    test('toString displays appropriate units', () {
      expect(PlanckDuration().toString(), equals('0 planck times'));
      expect(PlanckDuration(days: 1).toString(), contains('days'));
      expect(PlanckDuration(hours: 1).toString(), contains('hours'));
      expect(PlanckDuration(minutes: 1).toString(), contains('minutes'));
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
      expect(
        PlanckDuration.fromPlancks(0.5).toString(),
        contains('planck times'),
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
      expect(() => PlanckDuration(days: -1), throwsArgumentError);
      expect(() => PlanckDuration(hours: -1), throwsArgumentError);
      expect(() => PlanckDuration(minutes: -1), throwsArgumentError);
      expect(() => PlanckDuration(seconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(milliseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(microseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(shakes: -1), throwsArgumentError);
      expect(() => PlanckDuration(nanoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(picoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(svedbergs: -1), throwsArgumentError);
      expect(() => PlanckDuration(femtoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(atomics: -1), throwsArgumentError);
      expect(() => PlanckDuration(attoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(zeptoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(physicsJiffys: -1), throwsArgumentError);
      expect(() => PlanckDuration(yoctoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(rontoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(quectoseconds: -1), throwsArgumentError);
      expect(() => PlanckDuration(plancks: -1), throwsArgumentError);
      expect(() => PlanckDuration.fromPlancks(-1), throwsArgumentError);
    });
    test('zero and isZero', () {
      expect(PlanckDuration.zero.inPlancks, equals(0));
      expect(PlanckDuration.zero.isZero, isTrue);
      expect(PlanckDuration(seconds: 1).isZero, isFalse);
    });

    test('fromDuration converts accurately', () {
      const dur = Duration(seconds: 2, microseconds: 500);
      final planckDur = PlanckDuration.fromDuration(dur);
      expect(planckDur.toDuration(), equals(dur));
      expect(
        () => PlanckDuration.fromDuration(const Duration(seconds: -1)),
        throwsArgumentError,
      );
    });

    test('abs returns equivalent duration', () {
      final dur = PlanckDuration(nanoseconds: 10);
      expect(dur.abs(), equals(dur));
    });

    test('clamp limits duration', () {
      final min = PlanckDuration(seconds: 1);
      final max = PlanckDuration(seconds: 10);

      expect(PlanckDuration.zero.clamp(min, max), equals(min));
      expect(
        PlanckDuration(seconds: 5).clamp(min, max),
        equals(PlanckDuration(seconds: 5)),
      );
      expect(PlanckDuration(seconds: 15).clamp(min, max), equals(max));
      expect(() => min.clamp(max, min), throwsArgumentError);
    });

    test('truncating division operator ~/', () {
      final dur = PlanckDuration(nanoseconds: 10);
      expect((dur ~/ 2).inNanoseconds, closeTo(5, 1e-9));
      expect(() => dur ~/ 0, throwsArgumentError);
    });

    test('modulo operator % and remainder', () {
      final dur = PlanckDuration(seconds: 5);
      final mod = PlanckDuration(seconds: 2);
      expect((dur % mod).inSeconds, closeTo(1, 1e-9));
      expect(dur.remainder(mod).inSeconds, closeTo(1, 1e-9));
      expect(() => dur % PlanckDuration.zero, throwsArgumentError);
    });

    test('addDuration and subtractDuration', () {
      final dur = PlanckDuration(seconds: 5);
      expect(
        dur.addDuration(const Duration(seconds: 2)).inSeconds,
        closeTo(7, 1e-9),
      );
      expect(
        dur.subtractDuration(const Duration(seconds: 2)).inSeconds,
        closeTo(3, 1e-9),
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
