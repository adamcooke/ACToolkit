# ACToolkit

This library contains a number of useful extensions & classes which I've creared to help with the development of applications on the iOS platform. These are only tested using iOS 7 and higher at present and there are no plans to support earlier versions.

## Installation

At present this tool is in development however it will be released as a Cocoapod shortly.

## Extensions

A number of extensions are provided to built-in classes. The following sections provide examples of how these methods can be invoked.

### NSThread+MainThread

```objective-c
// Run a block of code on the main application thread
[NSThread onMainThread:^{
    [self.tableView reloadData];
}];

// Run a method on an NSObject instance
[NSThread onMainThread:@(methodName) target:self];
```

### UIAlertView+AlertShortcuts

```objective-c
// Show an alert box with a single 'Close' button.
[UIAlertView showAlert:@"Coming Soon" text:@"Further information."];

// Show an alert box with the title 'Error' and a 'Close' button'
[UIAlertView showAlert:@"An error occurred while performing your request."];

// Show an alert box with a custom button text
[UIAlertView showAlert:@"Coming Soon" text:@"Further information." button:@"OK - thanks!"];

```

### UIColor+HexString

```objective-c
// Return a UIColor instance for a given color
UIColor *myColor = [UIColor colorWithHexString:@"172a37"];
```

## Classes

This section of this document outlines the various classes which are provided in this library along with usage examples.

### ACColorKit

This class provides support for defining a set of colors which can be used within your application without any requirement to reinitialize UIColor instances.

#### Usage

When your application starts, you should define the colors you wish to use throughout your application. The mostly likely place you'll want to do this is within your AppDelgate.

```objective-c
// Set a color with a UIColor instance
UIColor *color = [UIColor redColor];
[[ACColorKit sharedKit] addColor:color withName:@"ticketUpdatePrivateNote"];

// Set some colours from hex strings
[[ACColorKit sharedKit] addColorWithHexString:@"FFF6F6" withName:@"ticketUpdatePrivateNote"];
```

When you wish to use a color which has been defined, you can pull it straight out from your sharedKit.

```objective-c
UIColor *color = [[ACColorKit sharedKit] colorWithName:@"ticketUpdatePrivateNote"];
```
