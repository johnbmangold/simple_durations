import 'package:simple_durations/simple_durations.dart';
import 'package:test/test.dart';

void main() {
  group('PlanckDuration', () {
    test('onCompare compares correctly', () {
      expect(
        const PlanckDuration(
          plancks: 10,
        ).compareTo(const PlanckDuration(plancks: 5)),
        isPositive,
      );
      expect(
        const PlanckDuration(
          plancks: 10,
        ).compareTo(const PlanckDuration(plancks: 10)),
        isZero,
      );
      expect(
        const PlanckDuration(
          plancks: 10,
        ).compareTo(const PlanckDuration(plancks: 15)),
        isNegative,
      );
    });

    test('hashcode hashes correctly', () {
      expect(
        const PlanckDuration(plancks: 10).hashCode,
        const PlanckDuration(plancks: 10).hashCode,
      );
      expect(
        const PlanckDuration(plancks: 10).hashCode,
        isNot(equals(const PlanckDuration(plancks: 5).hashCode)),
      );
    });

    test('quectoseconds', () {
      expect(
        const PlanckDuration(quectoseconds: 10).inQuectoseconds,
        equals(10),
      );
    });

    test('rontoseconds', () {
      expect(const PlanckDuration(rontoseconds: 10).inRontoseconds, equals(10));
    });

    test('yoctoseconds', () {
      expect(const PlanckDuration(yoctoseconds: 10).inYoctoseconds, equals(10));
    });

    test('physicsJiffy', () {
      expect(
        const PlanckDuration(physicsJiffys: 10).inPhysicsJiffy,
        equals(10),
      );
    });

    test('zeptoseconds', () {
      expect(const PlanckDuration(zeptoseconds: 10).inZeptoseconds, equals(10));
    });

    test('attoseconds', () {
      expect(const PlanckDuration(attoseconds: 10).inAttoseconds, equals(10));
    });

    test('atomics', () {
      expect(const PlanckDuration(atomics: 10).inAtomics, equals(10));
    });

    test('femtoseconds', () {
      expect(const PlanckDuration(femtoseconds: 10).inFemtoseconds, equals(10));
    });

    test('svedbergs', () {
      expect(const PlanckDuration(svedbergs: 10).inSvedbergs, equals(10));
    });

    test('picoseconds', () {
      expect(const PlanckDuration(picoseconds: 10).inPicoseconds, equals(10));
    });

    test('nanoseconds', () {
      expect(const PlanckDuration(nanoseconds: 10).inNanoseconds, equals(10));
    });

    test('shakes', () {
      expect(const PlanckDuration(shakes: 10).inShakes, equals(10));
    });

    test('microseconds', () {
      expect(const PlanckDuration(microseconds: 10).inMicroseconds, equals(10));
    });

    test('milliseconds', () {
      expect(const PlanckDuration(milliseconds: 10).inMilliseconds, equals(10));
    });

    test('seconds', () {
      expect(const PlanckDuration(seconds: 10).inSeconds, equals(10));
    });

    test('minutes', () {
      expect(const PlanckDuration(minutes: 10).inMinutes, equals(10));
    });

    test('hours', () {
      expect(const PlanckDuration(hours: 10).inHours, equals(10));
    });

    test('days', () {
      expect(const PlanckDuration(days: 10).inDays, equals(10));
    });
  });
}
