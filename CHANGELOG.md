# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2024-12-30

**Note:** This is a major version bump due to a breaking change in the API. The `PlanckDuration` constructor is no longer `const` to support runtime validation. If you were using `const PlanckDuration(...)`, you'll need to remove the `const` keyword. This release also includes many new features and improvements.

### Added
- `toString()` method to `PlanckDuration` class for better debugging and display
- Arithmetic operators (`+`, `-`, `*`, `/`) to `PlanckDuration` class
- Comparison operators (`<`, `>`, `<=`, `>=`) to `PlanckDuration` class
- `toDuration()` method to convert `PlanckDuration` to `Duration`
- Input validation for negative values in `PlanckDuration` constructor
- `SimpleDurationsDouble` extension for `double` values with fractional precision
- Comprehensive test coverage for new features and edge cases
- Enhanced documentation with examples
- Performance benchmarks in `benchmark/benchmark.dart`
- CHANGELOG.md for tracking version history

### Changed
- Improved error messages for negative value validation
- Enhanced `PlanckDuration` constructor with validation
- Updated `PlanckDuration` to accept `double` for `plancks` parameter for better precision
- Code formatting improvements to comply with Dart linting standards
- Updated README.md with Buy Me a Coffee support section
- SDK requirement set to `^3.8.0` for maximum compatibility (supports Dart 3.8.0 and above)

### Fixed
- Better precision handling in double extensions
- Improved toString() display logic for various time units
- All linting issues resolved (line length, code formatting)

### Breaking Changes
- `PlanckDuration` constructor is no longer `const` (removed to support runtime validation). Code using `const PlanckDuration(...)` will need to remove the `const` keyword.

## [1.0.7] - 2024-01-XX

### Added
- Initial release with comprehensive time duration extensions
- Support for planck time and sub-microsecond precision
- Extensive collection of time units from planck time to galactic years
- `PlanckDuration` class for ultra-precise time measurements
- Support for both integer and fractional time values

### Features
- Extensions on `int` for creating `Duration` objects
- Custom `PlanckDuration` class for sub-microsecond precision
- Over 50 different time units supported
- Comprehensive test coverage
- Well-documented API with examples