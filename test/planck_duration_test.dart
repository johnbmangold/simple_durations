import 'package:easy_durations/src/planck_duration.dart';
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
      expect(PlanckDuration(quectoseconds: 10).inQuectoseconds, equals(10));
    });

    test('rontoseconds', () {
      expect(PlanckDuration(rontoseconds: 10).inRontoseconds, equals(10));
    });

    test('yoctoseconds', () {
      expect(PlanckDuration(yoctoseconds: 10).inYoctoseconds, equals(10));
    });

    test('physicsJiffy', () {
      expect(PlanckDuration(physicsJiffys: 10).inPhysicsJiffy, equals(10));
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
  });
}
