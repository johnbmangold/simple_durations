This package was inspired by the extensions in the `flutter_animate` package.
Main durations are implemented along with several more eccentric units of time.

## Support

If you find this package useful, consider supporting the project:

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/johnbmangold)

## Features

- **Shorthand & Natural syntax**: Easily create Durations directly from `int`, `double`, or `num` (e.g. `5.s`, `1.second`, `5.seconds`, `500.ms`, `15.us`).
- **Singular and Plural**: Support for both forms (`1.minute` and `5.minutes`, `1.fortnight` and `2.fortnights`).
- **All units covered**: From standard units to historical, astronomical, and custom units (fortnights, decades, centuries, eons, and Conan the Barbarians).
- **Sub-microsecond precision with `PlanckDuration`**: Nanoseconds, picoseconds, femtoseconds, attoseconds, yoctoseconds, and Planck time.
- **Convenient Duration Utilities**:
  - `await 500.ms.delay()` for clean asynchronous delays.
  - Higher-level unit conversions: `inWeeks`, `inYears`, `inFortnights`, `inDecades`, `inCenturies`.
  - Seamless two-way conversion: `duration.toPlanckDuration()` and `planckDuration.toDuration()`.

## Getting started

```dart
import 'package:simple_durations/simple_durations.dart';
```

## Usage

```dart
// Returns standard Duration
final micro = 15.us; // or 15.microseconds / 1.microsecond
final milli = 10.ms; // or 10.milliseconds / 1.millisecond
final secs = 5.s; // or 5.seconds / 1.second
final days = 3.d; // or 3.days / 1.day
final weeks = 2.w; // or 2.weeks / 1.week

// Fractional durations (on double or num)
final halfMinute = 0.5.minutes;
final fractionalDays = 2.5.days;
final fortnights = 1.5.fortnights;

// Convenient async delay
await 500.ms.delay();

// Duration utilities
final myDuration = 2.weeks;
print(myDuration.inWeeks); // 2
print(1.decade.inYears); // 10

// Returns PlanckDuration (sub-microsecond precision)
final nano = 1.5.nanoseconds; // or 1.5.ns
final pico = 500.picoseconds; // or 500.ps
final femto = 20.fs;
final yocto = 21.yoctoseconds;

// PlanckDuration arithmetic & comparison
final sum = 1.ns + 0.5.ns; // 1.5 nanoseconds
print(1.ns < 2.ns); // true
final duration = nano.toDuration(); // converted to standard Duration
final backToPlanck = duration.toPlanckDuration();
```

## Complete list of units

- microseconds
- milliseconds
- seconds
- minutes
- hours
- days
- weeks
- month February
- month leap year February
- month thirty days
- month thirty-one days
- year
- leap year
- planck
- quectoseconds
- rontoseconds
- yoctoseconds
- jiffy physics
- jiffy electronics
- zeptoseconds
- attoseconds
- atomic time
- femtoseconds
- svedbergs
- picoseconds
- nanoseconds
- shakes
- centiseconds
- deciseconds
- decaseconds
- hectoseconds
- moments
- kiloseconds
- megaseconds
- gigaseconds
- teraseconds
- petaseconds
- exaseconds
- zettaseconds
- yottaseconds
- ronnaseconds
- quettaseconds
- millidays
- centidays
- decidays
- decadays
- fortnights
- quarantines
- hectodays
- lunar years
- tropical year
- Gregorian year
- sidereal year
- semester
- olympiad
- lustrum
- decade
- indiction
- jubilee
- century
- millenia
- age
- megaannum
- galactic year
- eon
- kalpa
- decimal seconds
- decimal minutes
- decimal hours
- decimal days
- conan the barbarians

## Additional information

To contribute or file issues:
https://github.com/johnbmangold/simple_durations
