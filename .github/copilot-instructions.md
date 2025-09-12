# Copilot Instructions

This document provides instructions for using AI coding agents, like GitHub Copilot, in the `simple_durations` project.

## Project Overview

The `simple_durations` package provides a set of extensions on the `int` type to easily create `Duration` objects for various units of time, from standard units like seconds and days to more esoteric ones like Planck time and galactic years. For durations smaller than a microsecond, a custom class `PlanckDuration` is used.

The main goal is to offer a highly readable and convenient way to express time durations in Dart code.

## Architecture

The core logic is split into three main files:

-   `lib/src/simple_durations.dart`: This file contains the `SimpleDurations` extension on `int`. This is where the convenient getters like `.seconds`, `.days`, etc., are defined. It's the primary interface for the user.
-   `lib/src/planck_duration.dart`: This file defines the `PlanckDuration` class, which is used for time units smaller than a microsecond. The standard `Duration` class in Dart doesn't support such high precision.
-   `lib/src/constants.dart`: This file contains all the conversion constants. It defines how many of a smaller unit (like Planck time) make up a larger unit (like a second).

The main file `lib/simple_durations.dart` simply exports these three files.

### Adding New Duration Units

To add a new time unit:

1.  **Add a constant** in `lib/src/constants.dart` that defines its value in a base unit (usually seconds or planck time).
2.  **Add a getter** to the `SimpleDurations` extension in `lib/src/simple_durations.dart`.
    -   If the unit is a microsecond or larger, create a `Duration` object.
    -   If the unit is smaller than a microsecond, create a `PlanckDuration` object.
3.  **Add a test** in `test/simple_durations_test.dart` to verify the new getter works correctly.

## Developer Workflow

### Running Tests

Tests are written using the standard `test` package. To run all tests, execute the following command in your terminal:

```sh
dart test
```

When adding new features, please add corresponding tests in the `test` directory.

-   Tests for the `SimpleDurations` extension are in `test/simple_durations_test.dart`.
-   Tests for the `PlanckDuration` class are in `test/planck_duration_test.dart`.
