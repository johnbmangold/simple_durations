// This example uses print to show output to the user.
// ignore_for_file: avoid_print

import 'package:simple_durations/simple_durations.dart';

void main() {
  print('--- Simple Durations Example ---');

  // Basic Duration creation (singular & plural, shorthand)
  final duration = 5.minutes;
  final singleMinute = 1.minute;
  final shortMicro = 15.us;
  print('5.minutes: $duration, 1.minute: $singleMinute, 15.us: $shortMicro');

  // Fractional Duration
  final halfMinute = 0.5.minutes;
  print('0.5.minutes: $halfMinute');

  // Calendar & custom units
  final fortnight = 1.fortnight;
  final decades = 2.5.decades;
  print('1.fortnight: $fortnight, 2.5.decades: $decades');

  // PlanckDuration with high precision
  final preciseNano = 1.5.nanoseconds;
  print('1.5.nanoseconds: $preciseNano');

  // Verify precision (should be 1500 picoseconds, not 2000 if rounded)
  print('in Picoseconds: ${preciseNano.inPicoseconds.toStringAsFixed(1)}');

  // Arithmetic with shorthands
  final sum = 1.ns + 0.5.ns;
  print('1.ns + 0.5.ns = $sum');

  // Comparisons
  final small = 1.ns;
  final large = 2.ns;
  print('1.ns < 2.ns: ${small < large}');

  // Sorting (Comparable)
  final list = [large, small, preciseNano];
  print('Original list: $list');
  list.sort();
  print('Sorted list:   $list');

  // Duration utility extensions
  print('1.fortnight.inWeeks: ${fortnight.inWeeks} weeks');
  print('To PlanckDuration: ${1.microsecond.toPlanckDuration()}');

  print('--------------------------------');
}
