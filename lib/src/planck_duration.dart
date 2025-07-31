import 'package:simple_durations/simple_durations.dart';

class PlanckDuration {
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

  const PlanckDuration._plancks(double plancks) : _plancks = plancks + 0;

  final double _plancks;

  double get inPlancks => _plancks;

  double get inQuectoseconds => _plancks / PLANCKS_IN_QUECTOSECOND;

  double get inRontoseconds => _plancks / PLANCKS_IN_RONTOSECOND;

  double get inYoctoseconds => _plancks / PLANCKS_IN_YOCTOSECOND;

  double get inPhysicsJiffy => _plancks / PLANCKS_IN_JIFFY_PHYSICS;

  double get inZeptoseconds => _plancks / PLANCKS_IN_ZEPTOSECOND;

  double get inAttoseconds => _plancks / PLANCKS_IN_ATTOSECOND;

  double get inAtomics => _plancks / PLANCKS_IN_ATOMIC;

  double get inFemtoseconds => _plancks / PLANCKS_IN_FEMTOSECOND;

  double get inSvedbergs => _plancks / PLANCKS_IN_SVEDBERG;

  double get inPicoseconds => _plancks / PLANCKS_IN_PICOSECOND;

  double get inNanoseconds => _plancks / PLANCKS_IN_NANOSECOND;

  double get inShakes => _plancks / PLANCKS_IN_SHAKE;

  double get inMicroseconds => _plancks / PLANCKS_IN_MICROSECOND;

  double get inMilliseconds => _plancks / PLANCKS_IN_MILLISECOND;

  double get inSeconds => _plancks / PLANCKS_IN_SECOND;

  double get inMinutes => _plancks / PLANCKS_IN_MINUTE;

  double get inHours => _plancks / PLANCKS_IN_HOUR;

  double get inDays => _plancks / PLANCKS_IN_DAY;

  @override
  bool operator ==(Object other) =>
      other is PlanckDuration && _plancks == other.inPlancks;

  @override
  int get hashCode => _plancks.hashCode;

  int compareTo(PlanckDuration other) => _plancks.compareTo(other._plancks);
}
