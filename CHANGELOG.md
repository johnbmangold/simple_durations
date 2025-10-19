# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- `toString()` method to `PlanckDuration` class for better debugging and display
- Arithmetic operators (`+`, `-`, `*`, `/`) to `PlanckDuration` class
- Comparison operators (`<`, `>`, `<=`, `>=`) to `PlanckDuration` class
- `toDuration()` method to convert `PlanckDuration` to `Duration`
- Input validation for negative values in `PlanckDuration` constructor
- `SimpleDurationsDouble` extension for `double` values with fractional precision
- Comprehensive test coverage for new features and edge cases
- Enhanced documentation with examples

### Changed
- Improved error messages for negative value validation
- Enhanced `PlanckDuration` constructor with validation

### Fixed
- Better precision handling in double extensions
- Improved toString() display logic for various time units

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