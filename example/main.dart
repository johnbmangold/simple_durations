import 'package:simple_durations/simple_durations.dart';

void main() {
  print('--- Simple Durations Example ---');

  // Basic Duration creation
  final duration = 5.minutes;
  print('5.minutes: $duration');

  // Fractional Duration
  final halfMinute = 0.5.minutes;
  print('0.5.minutes: $halfMinute');

  // PlanckDuration with high precision
  final preciseNano = 1.5.nanoseconds;
  print('1.5.nanoseconds: $preciseNano');

  // Verify precision (should be 1500 picoseconds, not 2000 if rounded)
  print('in Picoseconds: ${preciseNano.inPicoseconds.toStringAsFixed(1)}');

  // Arithmetic
  final sum = 1.nanoseconds + 0.5.nanoseconds;
  print('1.ns + 0.5.ns = $sum');

  // Comparisons
  final small = 1.nanoseconds;
  final large = 2.nanoseconds;
  print('1.ns < 2.ns: ${small < large}');

  // Sorting (Comparable)
  final list = [large, small, preciseNano];
  print('Original list: $list');
  list.sort();
  print('Sorted list:   $list');

  print('--------------------------------');
}
