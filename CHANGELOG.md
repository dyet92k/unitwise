# Unitwise Changelog

All notable changes to Unitwise will be documented in this file, starting at
version 1.0.0.

Unitwise uses semantic versioning.

## Unreleased

### Fixed
- Move conditional dependencies to Gemfile in order to allow proper 
  installation issues on rbx and jruby.

## 1.0.0 - 2014-08-25

### Added
- Uniwise() now accepts a Unitwise::Measurement as the first argument.
- Unitwise::Measurement now supports #round.

### Fixed
- Respect Rationals when inspecting/printing a Unitwise::Measurement.
- Dynamically created methods from unitwise/ext now work with #respond_to?
  and #methods appropriately.

### Deprecated
- Unitwise() and Unitwise::Measurement.new() now requires two non-optional
  arguments (value and unit).
- Unitwise::Measurement no longer has an implicit Integer conversion.