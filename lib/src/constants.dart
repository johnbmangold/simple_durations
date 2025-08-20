// Common time and duration constants for easy reference.
// ignore_for_file: constant_identifier_names

/// Days in a standard week.
const DAYS_IN_WEEK = 7;

/// Days in a standard year (non-leap).
const DAYS_IN_YEAR = 365;

/// Days in a 31-day month.
const DAYS_IN_MONTH_31 = 31;

/// Days in a 30-day month.
const DAYS_IN_MONTH_30 = 30;

/// Days in February (non-leap year).
const DAYS_IN_MONTH_FEB = 28;

/// Days in February (leap year).
const DAYS_IN_MONTH_LEAP_FEB = 29;

// --- Second measures ---

/// Planck time in seconds.
const PLANCK = 5.39e-44;

/// Quectosecond (10^-30 seconds).
const QUECTOSECOND = 1e-30;

/// Rontosecond (10^-27 seconds).
const RONTOSECOND = 1e-27;

/// Yoctosecond (10^-24 seconds).
const YOCTOSECOND = 1e-24;

/// Physics jiffy (3 × 10^-24 seconds).
const JIFFY_PHYSICS = 3e-24;

/// Electronics jiffy (0.02 seconds).
const JIFFY_ELECTRONICS = 2e-2;

/// Zeptosecond (10^-21 seconds).
const ZEPTOSECOND = 1e-21;

/// Attosecond (10^-18 seconds).
const ATTOSECOND = 1e-18;

/// Atomic unit of time (2.41888 × 10^-17 seconds).
const ATOMIC = 2.41888e-17;

/// Femtosecond (10^-15 seconds).
const FEMTOSECOND = 1e-15;

/// Svedberg (10^-13 seconds).
const SVEDBERG = 1e-13;

/// Picosecond (10^-12 seconds).
const PICOSECOND = 1e-12;

/// Nanosecond (10^-9 seconds).
const NANOSECOND = 1e-9;

/// Shake (10^-8 seconds).
const SHAKE = 1e-8;

/// Centisecond (0.01 seconds).
const CENTISECOND = 1e-2;

/// Decisecond (0.1 seconds).
const DECISECOND = 1e-1;

/// Decasecond (10 seconds).
const DECASECOND = 10;

/// Hectosecond (100 seconds).
const HECTOSECOND = 100;

/// Moment (90 seconds).
const MOMENT = 90;

/// Kilosecond (1,000 seconds).
const KILOSECOND = 1e3;

/// Megasecond (1,000,000 seconds).
const MEGASECOND = 1e6;

/// Gigasecond (1,000,000,000 seconds).
const GIGASECOND = 1e9;

/// Terasecond (10^12 seconds).
const TERASECOND = 1e12;

/// Petasecond (10^15 seconds).
const PETASECOND = 1e15;

/// Exasecond (10^18 seconds).
const EXASECOND = 1e18;

/// Zettasecond (10^21 seconds).
const ZETTASECOND = 1e21;

/// Yottasecond (10^24 seconds).
const YOTTASECOND = 1e24;

/// Ronnasecond (10^27 seconds).
const RONNASECOND = 1e27;

/// Quettasecond (10^30 seconds).
const QUETTASECOND = 1e30;

// --- Day measures ---

/// Milliday (0.001 days).
const MILLIDAY = .001;

/// Centiday (0.01 days).
const CENTIDAY = .01;

/// Deciday (0.1 days).
const DECIDAY = .1;

/// Decaday (10 days).
const DECADAY = 10;

/// Fortnight (14 days).
const FORTNIGHT = 14;

/// Quarantine (40 days).
const QUARANTINE = 40;

/// Hectoday (100 days).
const HECTODAY = 100;

/// Lunar year (354.37 days).
const LUNAR_YEAR = 354.37;

/// Leap year (366 days).
const LEAP_YEAR = 366;

// --- Week measures ---

/// Semester (18 weeks).
const SEMESTER = 18;

// --- Year measures ---

/// Olympiad (4 years).
const OLYMPIAD = 4;

/// Lustrum (5 years).
const LUSTRUM = 5;

/// Decade (10 years).
const DECADE = 10;

/// Indiction (15 years).
const INDICTION = 15;

/// Jubilee (50 years).
const JUBILEE = 50;

/// Century (100 years).
const CENTURY = 100;

/// Millenia (1,000 years).
const MILLENIA = 1000;

/// Age (2148 2/3 years).
const double AGE = 2148 + (2 / 3);

/// Age in years (2148 years).
const AGE_YEARS = 2148;

/// Megaannum (1,000,000 years).
const MEGAANNUM = 1e6;

/// Galactic year (230,000,000 years).
const GALACTIC_YEAR = 2.3e8;

/// Eon (1,000,000,000 years).
const EON = 1e9;

/// Kalpa (4,320,000,000 years).
const KALPA = 4.32e9;

// --- Conversion constants ---

/// Planck times in a day.
const PLANCKS_IN_DAY = 1.602801935e48;

/// Planck times in an hour.
const PLANCKS_IN_HOUR = 6.678341396e46;

/// Planck times in a minute.
const PLANCKS_IN_MINUTE = 1.113056899e45;

/// Planck times in a second.
const PLANCKS_IN_SECOND = 1.855094832e43;

/// Planck times in a millisecond.
const PLANCKS_IN_MILLISECOND = 1.8548711699229e40;

/// Planck times in a microsecond.
const PLANCKS_IN_MICROSECOND = 1.855094832e37;

/// Planck times in a shake.
const PLANCKS_IN_SHAKE = 1.855094832e35;

/// Planck times in a nanosecond.
const PLANCKS_IN_NANOSECOND = 1.855094832e34;

/// Planck times in a picosecond.
const PLANCKS_IN_PICOSECOND = 1.855094832e31;

/// Planck times in a svedberg.
const PLANCKS_IN_SVEDBERG = 1.872966181142e30;

/// Planck times in a femtosecond.
const PLANCKS_IN_FEMTOSECOND = 1.855094832e28;

/// Planck times in an atomic unit.
const PLANCKS_IN_ATOMIC = 4.5304884038389e26;

/// Planck times in an attosecond.
const PLANCKS_IN_ATTOSECOND = 1.855094832e25;

/// Planck times in a zeptosecond.
const PLANCKS_IN_ZEPTOSECOND = 1.8548711699229e22;

/// Planck times in a physics jiffy.
const PLANCKS_IN_JIFFY_PHYSICS = 5.565862708719852e19;

/// Planck times in a yoctosecond.
const PLANCKS_IN_YOCTOSECOND = 1.85528756957329998833e19;

/// Planck times in a rontosecond.
const PLANCKS_IN_RONTOSECOND = 1.85528756957329999e16;

/// Planck times in a quectosecond.
const PLANCKS_IN_QUECTOSECOND = 1.8552875695733000e13;

/// Microseconds in a centisecond.
const MICROSECONDS_IN_CENTISECOND = 10000;

/// Microseconds in a decisecond.
const MICROSECONDS_IN_DECISECOND = 100000;

/// Microseconds in a milliday.
const MICROSECONDS_IN_MILLIDAY = 8.64e7;

/// Microseconds in a centiday.
const MICROSECONDS_IN_CENTIDAY = 8.64e8;

/// Microseconds in a deciday.
const MICROSECONDS_IN_DECIDAY = 8.64e9;

/// Microseconds in 37% of a year.
const MICROSECONDS_IN_37OFAYEAR = 1.167631e13;

/// Microseconds in a tropical year.
const MICROSECONDS_IN_TROPICAL_YEAR = 3.1556925445e13;

/// Microseconds in a Gregorian year.
const MICROSECONDS_IN_GREGORIAN_YEAR = 3.1556952e13;

/// Microseconds in a sidereal year.
const MICROSECONDS_IN_SIDEREAL_YEAR = 3.15581497635460e13;

/// Microseconds in two-thirds of a year.
const MICROSECONDS_IN_TWO_THIRDS_OF_A_YEAR = 2.103945e+13;

/// Microseconds in one decimal second.
const MICROSECONDS_IN_DECIMAL_SECOND = 8.64e5;

/// To crush your enemies, see them driven before you, and to hear the
/// lamentation of their women.
const MICROSECONDS_FOR_CROM = 7.74e9;
