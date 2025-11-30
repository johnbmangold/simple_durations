This package was inspired by the extensions in the `flutter_animate` package.
Main durations are implemented along with several more eccentric units of time.

## Support

If you find this package useful, consider supporting the project:

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/johnbmangold)

## Features

- Shorthand ways to create Durations
- All the main units are covered
- Durations smaller than microseconds use a new class `PlanckDuration`

## Getting started

```dart
import 'package:simple_durations/simple_durations.dart';
```

## Usage

```dart
// returns Duration
final  microseconds = 15.us;
final longForm = 15.microseconds;
final milliseconds = 10.ms;
final days = 3.d;
final longFormDays = 3.days;

// returns PlanckDuration
final yoctoseconds = 21.yoctoseconds;
final rontoseconds = 500.rontoseconds;
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
