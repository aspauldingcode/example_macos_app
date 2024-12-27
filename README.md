# Simple macOS Hello World App

A minimal example of a native macOS application written in Objective-C using Cocoa framework.

## Building

To build and run the application:

```sh
make test
```

This will compile the source code, create the application bundle, and open it in the Finder.

## Project Structure

- `AppDelegate.h/m` - Main application delegate that creates and manages the window
- `main.m` - Application entry point
- `Info.plist` - Application bundle configuration
- `Makefile` - Build configuration

## Requirements

- macOS 10.10 or later
- Command Line Tools for Xcode (for clang compiler)

## License

MIT License (or choose your preferred license)
