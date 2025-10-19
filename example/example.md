# Simple Durations - Example Usage

This package provides convenient extensions for creating `Duration` and `PlanckDuration` objects from integers and doubles.

## Basic Usage

```dart
import 'package:simple_durations/simple_durations.dart';

void main() {
  // Basic duration creation
  final microsecondsDuration = 500.us; // or 500.microseconds
  final secondsDuration = 5.s; // or 5.seconds
  final daysDuration = 10.d; // or 10.days
  
  print(microsecondsDuration); // 0:00:00.000500
  print(secondsDuration); // 0:00:05.000000
  print(daysDuration); // 10:00:00.000000
}
```

## Double Extensions for Fractional Values

```dart
void main() {
  // Fractional durations
  final halfSecond = 0.5.seconds;
  final twoAndHalfMinutes = 2.5.minutes;
  final quarterHour = 0.25.hours;
  
  print(halfSecond); // 0:00:00.500000
  print(twoAndHalfMinutes); // 0:02:30.000000
  print(quarterHour); // 0:15:00.000000
}
```

## PlanckDuration for Ultra-Precise Measurements

```dart
void main() {
  // Ultra-precise durations
  final nanoseconds = 1.5.nanoseconds;
  final picoseconds = 2.5.picoseconds;
  final femtoseconds = 3.5.femtoseconds;
  
  print(nanoseconds); // 1.500000 nanoseconds
  print(picoseconds); // 2.500000 picoseconds
  print(femtoseconds); // 3.500000 femtoseconds
  
  // Arithmetic operations
  final sum = nanoseconds + picoseconds;
  final scaled = femtoseconds * 2.0;
  
  print(sum); // 1.500002 nanoseconds
  print(scaled); // 7.000000 femtoseconds
}
```

## Advanced Operations

```dart
void main() {
  // Comparison operations
  final duration1 = 1.seconds;
  final duration2 = 2.seconds;
  final planck1 = 1.nanoseconds;
  final planck2 = 2.nanoseconds;
  
  print(duration1 < duration2); // true
  print(planck1 == planck1); // true
  print(planck1 <= planck2); // true
  
  // Conversion to Duration
  final planckDuration = 1000.nanoseconds;
  final standardDuration = planckDuration.toDuration();
  print(standardDuration.inMicroseconds); // 1
  
  // Complex calculations
  final total = 1.seconds + 500.milliseconds + 250.microseconds;
  print(total); // 0:00:01.500250
}
```

## Scientific and Exotic Time Units

```dart
void main() {
  // Scientific units
  final planckTime = 1.plancks;
  final quectoseconds = 1.quectoseconds;
  final yoctoseconds = 1.yoctoseconds;
  
  // Exotic units
  final jiffy = 1.jiffyPhysics;
  final shake = 1.shakes;
  final svedberg = 1.svedbergs;
  
  // Large time units
  final galacticYear = 1.galacticYear;
  final eon = 1.eon;
  final kalpa = 1.kalpa;
  
  print(planckTime); // 1.000000 planck times
  print(jiffy); // 0.000000 picoseconds
  print(galacticYear); // 230000000.000000 years
}
```

## Error Handling

```dart
void main() {
  try {
    // This will throw an ArgumentError
    final invalidDuration = const PlanckDuration(seconds: -1);
  } catch (e) {
    print('Error: $e'); // Error: Days cannot be negative: -1
  }
}
```

## Performance Considerations

For high-performance applications, consider:

- Use integer extensions when possible (faster than double extensions)
- Cache frequently used durations
- Use `PlanckDuration` only when sub-microsecond precision is needed
- Consider the overhead of arithmetic operations in tight loops