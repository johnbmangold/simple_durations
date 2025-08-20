import 'package:meta/meta.dart';
import 'package:simple_durations/simple_durations.dart';

/// A class that represents a duration of time, measured in Planck time.
///
/// This class is useful for representing durations that are smaller than a
/// microsecond, which is the smallest unit of time that can be represented
/// by the [Duration] class.
@immutable
class PlanckDuration {
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
  }) : _plancks =
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
           plancks;

  const PlanckDuration._plancks(double plancks) : _plancks = plancks;

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
  int compareTo(PlanckDuration other) => _plancks.compareTo(other._plancks);
}
