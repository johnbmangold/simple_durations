import 'package:meta/meta.dart';
import 'package:simple_durations/simple_durations.dart';

/// A class that represents a duration of time, measured in Planck time.
///
/// This class is useful for representing durations that are smaller than a
/// microsecond, which is the smallest unit of time that can be represented
/// by the [Duration] class.
///
/// Planck time is the smallest meaningful unit of time in physics,
/// approximately 5.39 × 10^-44 seconds. This class provides ultra-precise
/// time measurements for scientific and high-precision applications.
///
/// ## Features
///
/// - **Ultra-precise measurements**: Support for durations smaller than
///   microseconds
/// - **Arithmetic operations**: Add, subtract, multiply, and divide durations
/// - **Comparison operations**: Compare durations using standard operators
/// - **Unit conversion**: Convert to standard [Duration] objects
/// - **Input validation**: Prevents negative time values
/// - **Flexible display**: Smart toString() that shows appropriate units
///
/// ## Examples
///
/// ```dart
/// import 'package:simple_durations/simple_durations.dart';
///
/// void main() {
///   // Create PlanckDuration objects
///   final nano1 = 1.nanoseconds;
///   final nano2 = 2.nanoseconds;
///
///   // Arithmetic operations
///   final sum = nano1 + nano2; // 3 nanoseconds
///   final diff = nano2 - nano1; // 1 nanosecond
///   final scaled = nano1 * 2.5; // 2.5 nanoseconds
///   final divided = nano2 / 2.0; // 1 nanosecond
///
///   // Comparison operations
///   print(nano1 < nano2); // true
///   print(nano1 == nano1); // true
///
///   // Convert to Duration
///   final duration = nano1.toDuration();
///   print(duration.inMicroseconds); // 0 (too small for microseconds)
///
///   // Display with appropriate units
///   print(nano1.toString()); // "1.000000 nanoseconds"
///   print(1.seconds.toString()); // "1.000000 seconds"
/// }
/// ```
///
/// ## Precision Notes
///
/// - Planck time is approximately 5.39 × 10^-44 seconds
/// - This class maintains precision for all supported time units
/// - Conversion to [Duration] may lose precision for very small values
/// - All arithmetic operations preserve precision within floating-point limits
@immutable
class PlanckDuration implements Comparable<PlanckDuration> {
  /// Creates a new [PlanckDuration] object.
  ///
  /// The duration can be specified in any of the following units:
  ///
  /// * [days]
  /// * [hours]
  /// * [minutes]
  /// * [seconds]
  /// * [milliseconds]
  /// * [microseconds]
  /// * [shakes]
  /// * [nanoseconds]
  /// * [picoseconds]
  /// * [svedbergs]
  /// * [femtoseconds]
  /// * [atomics]
  /// * [attoseconds]
  /// * [zeptoseconds]
  /// * [physicsJiffys]
  /// * [yoctoseconds]
  /// * [rontoseconds]
  /// * [quectoseconds]
  /// * [plancks]
  PlanckDuration({
    num days = 0,
    num hours = 0,
    num minutes = 0,
    num seconds = 0,
    num milliseconds = 0,
    num microseconds = 0,
    num shakes = 0,
    num nanoseconds = 0,
    num picoseconds = 0,
    num svedbergs = 0,
    num femtoseconds = 0,
    num atomics = 0,
    num attoseconds = 0,
    num zeptoseconds = 0,
    num physicsJiffys = 0,
    num yoctoseconds = 0,
    num rontoseconds = 0,
    num quectoseconds = 0,
    double plancks = 0,
  }) : _plancks = _validateAndCalculate(
         days,
         hours,
         minutes,
         seconds,
         milliseconds,
         microseconds,
         shakes,
         nanoseconds,
         picoseconds,
         svedbergs,
         femtoseconds,
         atomics,
         attoseconds,
         zeptoseconds,
         physicsJiffys,
         yoctoseconds,
         rontoseconds,
         quectoseconds,
         plancks,
       );

  /// Validates input parameters and calculates total planck times.
  static double _validateAndCalculate(
    num days,
    num hours,
    num minutes,
    num seconds,
    num milliseconds,
    num microseconds,
    num shakes,
    num nanoseconds,
    num picoseconds,
    num svedbergs,
    num femtoseconds,
    num atomics,
    num attoseconds,
    num zeptoseconds,
    num physicsJiffys,
    num yoctoseconds,
    num rontoseconds,
    num quectoseconds,
    double plancks,
  ) {
    // Validate that all parameters are non-negative
    if (days < 0) throw ArgumentError('Days cannot be negative: $days');
    if (hours < 0) throw ArgumentError('Hours cannot be negative: $hours');
    if (minutes < 0) {
      throw ArgumentError('Minutes cannot be negative: $minutes');
    }
    if (seconds < 0) {
      throw ArgumentError('Seconds cannot be negative: $seconds');
    }
    if (milliseconds < 0) {
      throw ArgumentError('Milliseconds cannot be negative: $milliseconds');
    }
    if (microseconds < 0) {
      throw ArgumentError('Microseconds cannot be negative: $microseconds');
    }
    if (shakes < 0) throw ArgumentError('Shakes cannot be negative: $shakes');
    if (nanoseconds < 0) {
      throw ArgumentError('Nanoseconds cannot be negative: $nanoseconds');
    }
    if (picoseconds < 0) {
      throw ArgumentError('Picoseconds cannot be negative: $picoseconds');
    }
    if (svedbergs < 0) {
      throw ArgumentError('Svedbergs cannot be negative: $svedbergs');
    }
    if (femtoseconds < 0) {
      throw ArgumentError('Femtoseconds cannot be negative: $femtoseconds');
    }
    if (atomics < 0) {
      throw ArgumentError('Atomics cannot be negative: $atomics');
    }
    if (attoseconds < 0) {
      throw ArgumentError('Attoseconds cannot be negative: $attoseconds');
    }
    if (zeptoseconds < 0) {
      throw ArgumentError('Zeptoseconds cannot be negative: $zeptoseconds');
    }
    if (physicsJiffys < 0) {
      throw ArgumentError('Physics jiffys cannot be negative: $physicsJiffys');
    }
    if (yoctoseconds < 0) {
      throw ArgumentError('Yoctoseconds cannot be negative: $yoctoseconds');
    }
    if (rontoseconds < 0) {
      throw ArgumentError('Rontoseconds cannot be negative: $rontoseconds');
    }
    if (quectoseconds < 0) {
      throw ArgumentError('Quectoseconds cannot be negative: $quectoseconds');
    }
    if (plancks < 0) {
      throw ArgumentError('Plancks cannot be negative: $plancks');
    }

    return days * PLANCKS_IN_DAY +
        hours * PLANCKS_IN_HOUR +
        minutes * PLANCKS_IN_MINUTE +
        seconds * PLANCKS_IN_SECOND +
        milliseconds * PLANCKS_IN_MILLISECOND +
        microseconds * PLANCKS_IN_MICROSECOND +
        shakes * PLANCKS_IN_SHAKE +
        nanoseconds * PLANCKS_IN_NANOSECOND +
        picoseconds * PLANCKS_IN_PICOSECOND +
        svedbergs * PLANCKS_IN_SVEDBERG +
        femtoseconds * PLANCKS_IN_FEMTOSECOND +
        atomics * PLANCKS_IN_ATOMIC +
        attoseconds * PLANCKS_IN_ATTOSECOND +
        zeptoseconds * PLANCKS_IN_ZEPTOSECOND +
        physicsJiffys * PLANCKS_IN_JIFFY_PHYSICS +
        yoctoseconds * PLANCKS_IN_YOCTOSECOND +
        rontoseconds * PLANCKS_IN_RONTOSECOND +
        quectoseconds * PLANCKS_IN_QUECTOSECOND +
        plancks;
  }

  final double _plancks;

  /// The number of whole planck times in this duration.
  double get inPlancks => _plancks;

  /// The number of whole quectoseconds in this duration.
  double get inQuectoseconds => _plancks / PLANCKS_IN_QUECTOSECOND;

  /// The number of whole rontoseconds in this duration.
  double get inRontoseconds => _plancks / PLANCKS_IN_RONTOSECOND;

  /// The number of whole yoctoseconds in this duration.
  double get inYoctoseconds => _plancks / PLANCKS_IN_YOCTOSECOND;

  /// The number of whole physics jiffys in this duration.
  double get inPhysicsJiffy => _plancks / PLANCKS_IN_JIFFY_PHYSICS;

  /// The number of whole zeptoseconds in this duration.
  double get inZeptoseconds => _plancks / PLANCKS_IN_ZEPTOSECOND;

  /// The number of whole attoseconds in this duration.
  double get inAttoseconds => _plancks / PLANCKS_IN_ATTOSECOND;

  /// The number of whole atomic units of time in this duration.
  double get inAtomics => _plancks / PLANCKS_IN_ATOMIC;

  /// The number of whole femtoseconds in this duration.
  double get inFemtoseconds => _plancks / PLANCKS_IN_FEMTOSECOND;

  /// The number of whole svedbergs in this duration.
  double get inSvedbergs => _plancks / PLANCKS_IN_SVEDBERG;

  /// The number of whole picoseconds in this duration.
  double get inPicoseconds => _plancks / PLANCKS_IN_PICOSECOND;

  /// The number of whole nanoseconds in this duration.
  double get inNanoseconds => _plancks / PLANCKS_IN_NANOSECOND;

  /// The number of whole shakes in this duration.
  double get inShakes => _plancks / PLANCKS_IN_SHAKE;

  /// The number of whole microseconds in this duration.
  double get inMicroseconds => _plancks / PLANCKS_IN_MICROSECOND;

  /// The number of whole milliseconds in this duration.
  double get inMilliseconds => _plancks / PLANCKS_IN_MILLISECOND;

  /// The number of whole seconds in this duration.
  double get inSeconds => _plancks / PLANCKS_IN_SECOND;

  /// The number of whole minutes in this duration.
  double get inMinutes => _plancks / PLANCKS_IN_MINUTE;

  /// The number of whole hours in this duration.
  double get inHours => _plancks / PLANCKS_IN_HOUR;

  /// The number of whole days in this duration.
  double get inDays => _plancks / PLANCKS_IN_DAY;

  @override
  bool operator ==(Object other) =>
      other is PlanckDuration && _plancks == other.inPlancks;

  @override
  int get hashCode => _plancks.hashCode;

  /// Compares this [PlanckDuration] to [other], returning zero if the values
  /// are equal.
  ///
  /// Returns a negative value if this duration is shorter than [other], or a
  /// positive value if it is longer.
  ///
  /// A [PlanckDuration] is shorter than another [PlanckDuration] if it has a
  /// smaller number of planck times.
  @override
  int compareTo(PlanckDuration other) => _plancks.compareTo(other._plancks);

  /// Adds this [PlanckDuration] to [other].
  ///
  /// Returns a new [PlanckDuration] representing the sum of the two durations.
  PlanckDuration operator +(PlanckDuration other) =>
      PlanckDuration(plancks: _plancks + other._plancks);

  /// Subtracts [other] from this [PlanckDuration].
  ///
  /// Returns a new [PlanckDuration] representing the difference of the two
  /// durations.
  PlanckDuration operator -(PlanckDuration other) =>
      PlanckDuration(plancks: _plancks - other._plancks);

  /// Multiplies this [PlanckDuration] by [factor].
  ///
  /// Returns a new [PlanckDuration] representing the scaled duration.
  PlanckDuration operator *(double factor) =>
      PlanckDuration(plancks: _plancks * factor);

  /// Divides this [PlanckDuration] by [divisor].
  ///
  /// Returns a new [PlanckDuration] representing the divided duration.
  PlanckDuration operator /(double divisor) =>
      PlanckDuration(plancks: _plancks / divisor);

  /// Returns true if this [PlanckDuration] is less than [other].
  bool operator <(PlanckDuration other) => _plancks < other._plancks;

  /// Returns true if this [PlanckDuration] is less than or equal to [other].
  bool operator <=(PlanckDuration other) => _plancks <= other._plancks;

  /// Returns true if this [PlanckDuration] is greater than [other].
  bool operator >(PlanckDuration other) => _plancks > other._plancks;

  /// Returns true if this [PlanckDuration] is greater than or equal to [other].
  bool operator >=(PlanckDuration other) => _plancks >= other._plancks;

  /// Converts this [PlanckDuration] to a [Duration].
  ///
  /// Returns a [Duration] object representing the same time period.
  /// Note: This conversion may lose precision for very small durations
  /// since [Duration] can only represent microsecond precision.
  Duration toDuration() {
    final totalMicroseconds = _plancks / PLANCKS_IN_MICROSECOND;
    return Duration(microseconds: totalMicroseconds.round());
  }

  @override
  String toString() {
    if (_plancks == 0) return '0 planck times';

    // Find the most appropriate unit to display
    if (_plancks >= PLANCKS_IN_DAY) {
      return '${(_plancks / PLANCKS_IN_DAY).toStringAsFixed(6)} days';
    } else if (_plancks >= PLANCKS_IN_HOUR) {
      return '${(_plancks / PLANCKS_IN_HOUR).toStringAsFixed(6)} hours';
    } else if (_plancks >= PLANCKS_IN_MINUTE) {
      return '${(_plancks / PLANCKS_IN_MINUTE).toStringAsFixed(6)} minutes';
    } else if (_plancks >= PLANCKS_IN_SECOND) {
      return '${(_plancks / PLANCKS_IN_SECOND).toStringAsFixed(6)} seconds';
    } else if (_plancks >= PLANCKS_IN_MILLISECOND) {
      return '${(_plancks / PLANCKS_IN_MILLISECOND).toStringAsFixed(6)} '
          'milliseconds';
    } else if (_plancks >= PLANCKS_IN_MICROSECOND) {
      return '${(_plancks / PLANCKS_IN_MICROSECOND).toStringAsFixed(6)} '
          'microseconds';
    } else if (_plancks >= PLANCKS_IN_NANOSECOND) {
      return '${(_plancks / PLANCKS_IN_NANOSECOND).toStringAsFixed(6)} '
          'nanoseconds';
    } else if (_plancks >= PLANCKS_IN_PICOSECOND) {
      return '${(_plancks / PLANCKS_IN_PICOSECOND).toStringAsFixed(6)} '
          'picoseconds';
    } else if (_plancks >= PLANCKS_IN_FEMTOSECOND) {
      return '${(_plancks / PLANCKS_IN_FEMTOSECOND).toStringAsFixed(6)} '
          'femtoseconds';
    } else if (_plancks >= PLANCKS_IN_ATTOSECOND) {
      return '${(_plancks / PLANCKS_IN_ATTOSECOND).toStringAsFixed(6)} '
          'attoseconds';
    } else if (_plancks >= PLANCKS_IN_ZEPTOSECOND) {
      return '${(_plancks / PLANCKS_IN_ZEPTOSECOND).toStringAsFixed(6)} '
          'zeptoseconds';
    } else if (_plancks >= PLANCKS_IN_YOCTOSECOND) {
      return '${(_plancks / PLANCKS_IN_YOCTOSECOND).toStringAsFixed(6)} '
          'yoctoseconds';
    } else if (_plancks >= PLANCKS_IN_RONTOSECOND) {
      return '${(_plancks / PLANCKS_IN_RONTOSECOND).toStringAsFixed(6)} '
          'rontoseconds';
    } else if (_plancks >= PLANCKS_IN_QUECTOSECOND) {
      return '${(_plancks / PLANCKS_IN_QUECTOSECOND).toStringAsFixed(6)} '
          'quectoseconds';
    } else {
      return '${_plancks.toStringAsFixed(6)} planck times';
    }
  }
}
