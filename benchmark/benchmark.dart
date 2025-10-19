// Benchmark file intentionally uses print statements for output
// ignore_for_file: avoid_print

import 'package:simple_durations/simple_durations.dart';

/// Performance benchmarks for simple_durations package.
///
/// This file contains benchmarks to measure the performance of various
/// operations in the simple_durations package, particularly for large
/// calculations and frequent operations.
void main() async {
  print('Running simple_durations benchmarks...\n');

  await benchmarkDurationCreation();
  await benchmarkPlanckDurationCreation();
  await benchmarkArithmeticOperations();
  await benchmarkLargeCalculations();
  await benchmarkToStringOperations();

  print('\nBenchmarks completed!');
}

/// Benchmark duration creation operations.
Future<void> benchmarkDurationCreation() async {
  print('Benchmarking Duration creation...');

  final stopwatch = Stopwatch()..start();
  const iterations = 1000000;

  for (var i = 0; i < iterations; i++) {
    final duration = i.seconds;
    // Prevent optimization
    if (duration.inSeconds == -1) break;
  }

  stopwatch.stop();
  print(
    '  Created $iterations Duration objects in '
    '${stopwatch.elapsedMilliseconds}ms',
  );
  print(
    '  Average: ${stopwatch.elapsedMicroseconds / iterations}μs per '
    'creation\n',
  );
}

/// Benchmark PlanckDuration creation operations.
Future<void> benchmarkPlanckDurationCreation() async {
  print('Benchmarking PlanckDuration creation...');

  final stopwatch = Stopwatch()..start();
  const iterations = 100000;

  for (var i = 0; i < iterations; i++) {
    final duration = i.nanoseconds;
    // Prevent optimization
    if (duration.inNanoseconds == -1) break;
  }

  stopwatch.stop();
  print(
    '  Created $iterations PlanckDuration objects in '
    '${stopwatch.elapsedMilliseconds}ms',
  );
  print(
    '  Average: ${stopwatch.elapsedMicroseconds / iterations}μs per '
    'creation\n',
  );
}

/// Benchmark arithmetic operations.
Future<void> benchmarkArithmeticOperations() async {
  print('Benchmarking arithmetic operations...');

  final duration1 = 1.seconds;
  final duration2 = 2.seconds;
  final planck1 = 1.nanoseconds;
  final planck2 = 2.nanoseconds;

  const iterations = 1000000;

  // Duration arithmetic
  var stopwatch = Stopwatch()..start();
  for (var i = 0; i < iterations; i++) {
    final result = duration1 + duration2;
    if (result.inSeconds == -1) break;
  }
  stopwatch.stop();
  print(
    '  Duration addition: ${stopwatch.elapsedMicroseconds / iterations}μs per '
    'operation',
  );

  // PlanckDuration arithmetic
  stopwatch = Stopwatch()..start();
  for (var i = 0; i < iterations; i++) {
    final result = planck1 + planck2;
    if (result.inNanoseconds == -1) break;
  }
  stopwatch.stop();
  print(
    '  PlanckDuration addition: '
    '${stopwatch.elapsedMicroseconds / iterations}μs per operation',
  );

  // PlanckDuration multiplication
  stopwatch = Stopwatch()..start();
  for (var i = 0; i < iterations; i++) {
    final result = planck1 * 2.5;
    if (result.inNanoseconds == -1) break;
  }
  stopwatch.stop();
  print(
    '  PlanckDuration multiplication: '
    '${stopwatch.elapsedMicroseconds / iterations}μs per operation\n',
  );
}

/// Benchmark large calculations.
Future<void> benchmarkLargeCalculations() async {
  print('Benchmarking large calculations...');

  const iterations = 10000;

  // Large Duration calculations
  var stopwatch = Stopwatch()..start();
  var result = 0.seconds;
  for (var i = 0; i < iterations; i++) {
    result = result + i.seconds;
  }
  stopwatch.stop();
  print(
    '  Large Duration sum ($iterations terms): '
    '${stopwatch.elapsedMilliseconds}ms',
  );
  print('  Result: ${result.inSeconds} seconds');

  // Large PlanckDuration calculations
  stopwatch = Stopwatch()..start();
  var planckResult = 0.nanoseconds;
  for (var i = 0; i < iterations; i++) {
    planckResult = planckResult + i.nanoseconds;
  }
  stopwatch.stop();
  print(
    '  Large PlanckDuration sum ($iterations terms): '
    '${stopwatch.elapsedMilliseconds}ms',
  );
  print('  Result: ${planckResult.inNanoseconds} nanoseconds\n');
}

/// Benchmark toString operations.
Future<void> benchmarkToStringOperations() async {
  print('Benchmarking toString operations...');

  const iterations = 100000;

  // Duration toString
  final duration = 123.seconds;
  var stopwatch = Stopwatch()..start();
  for (var i = 0; i < iterations; i++) {
    final str = duration.toString();
    if (str.isEmpty) break;
  }
  stopwatch.stop();
  print(
    '  Duration toString: ${stopwatch.elapsedMicroseconds / iterations}μs per '
    'operation',
  );

  // PlanckDuration toString
  final planckDuration = 123.nanoseconds;
  stopwatch = Stopwatch()..start();
  for (var i = 0; i < iterations; i++) {
    final str = planckDuration.toString();
    if (str.isEmpty) break;
  }
  stopwatch.stop();
  print(
    '  PlanckDuration toString: '
    '${stopwatch.elapsedMicroseconds / iterations}μs per operation\n',
  );
}
