import 'package:flutter/foundation.dart';
import 'package:simple_durations/simple_durations.dart';

/// Represents a duration measured in Planck times.
@immutable
class PlanckDuration {
  /// Constructs a [PlanckDuration] from various time units.
  const PlanckDuration({
    int days = 0,
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
    int microseconds = 0,
    int shakes = 0,
    int nanoseconds = 0,
    int picoseconds = 0,
    int svedbergs = 0,
    int femtoseconds = 0,
    int atomics = 0,
    int attoseconds = 0,
    int zeptoseconds = 0,
    int physicsJiffys = 0,
    int yoctoseconds = 0,
    int rontoseconds = 0,
    int quectoseconds = 0,
    int plancks = 0,
  }) : this._plancks(
         days * PLANCKS_IN_DAY +
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
             plancks,
       );

  /// Constructs a [PlanckDuration] from a raw Planck value.
  const PlanckDuration._plancks(double plancks) : _plancks = plancks + 0;

  /// The duration in Planck times.
  final double _plancks;

  /// Returns the duration in Planck times.
  double get inPlancks => _plancks;

  /// Returns the duration in quectoseconds.
  double get inQuectoseconds => _plancks / PLANCKS_IN_QUECTOSECOND;

  /// Returns the duration in rontoseconds.
  double get inRontoseconds => _plancks / PLANCKS_IN_RONTOSECOND;

  /// Returns the duration in yoctoseconds.
  double get inYoctoseconds => _plancks / PLANCKS_IN_YOCTOSECOND;

  /// Returns the duration in physics jiffys.
  double get inPhysicsJiffy => _plancks / PLANCKS_IN_JIFFY_PHYSICS;

  /// Returns the duration in zeptoseconds.
  double get inZeptoseconds => _plancks / PLANCKS_IN_ZEPTOSECOND;

  /// Returns the duration in attoseconds.
  double get inAttoseconds => _plancks / PLANCKS_IN_ATTOSECOND;

  /// Returns the duration in atomic units.
  double get inAtomics => _plancks / PLANCKS_IN_ATOMIC;

  /// Returns the duration in femtoseconds.
  double get inFemtoseconds => _plancks / PLANCKS_IN_FEMTOSECOND;

  /// Returns the duration in svedbergs.
  double get inSvedbergs => _plancks / PLANCKS_IN_SVEDBERG;

  /// Returns the duration in picoseconds.
  double get inPicoseconds => _plancks / PLANCKS_IN_PICOSECOND;

  /// Returns the duration in nanoseconds.
  double get inNanoseconds => _plancks / PLANCKS_IN_NANOSECOND;

  /// Returns the duration in shakes.
  double get inShakes => _plancks / PLANCKS_IN_SHAKE;

  /// Returns the duration in microseconds.
  double get inMicroseconds => _plancks / PLANCKS_IN_MICROSECOND;

  /// Returns the duration in milliseconds.
  double get inMilliseconds => _plancks / PLANCKS_IN_MILLISECOND;

  /// Returns the duration in seconds.
  double get inSeconds => _plancks / PLANCKS_IN_SECOND;

  /// Returns the duration in minutes.
  double get inMinutes => _plancks / PLANCKS_IN_MINUTE;

  /// Returns the duration in hours.
  double get inHours => _plancks / PLANCKS_IN_HOUR;

  /// Returns the duration in days.
  double get inDays => _plancks / PLANCKS_IN_DAY;

  /// Checks equality with another [PlanckDuration].
  @override
  bool operator ==(Object other) =>
      other is PlanckDuration && _plancks == other.inPlancks;

  /// Returns the hash code for this duration.
  @override
  int get hashCode => _plancks.hashCode;

  /// Compares this duration to another [PlanckDuration].
  int compareTo(PlanckDuration other) => _plancks.compareTo(other._plancks);
}
