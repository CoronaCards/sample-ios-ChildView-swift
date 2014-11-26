sample-ios-ChildView-swift
====================

NOTE: This is a Swift-based version of the [ChildView sample](https://github.com/CoronaCards/sample-ios-ChildView).

This example shows you how to **embed** a CoronaView into an existing view hierarchy.

# Code Overview

## CoronaView setup (Swift)

The CoronaView is instantiated just like any normal UIView. A `CoronaView` is paired with an instance of `CoronaViewController`.

This example sets up the `CoronaViewController` as a child of `ViewController` which is the root view controller of the app. This enables the `CoronaView` to be inserted anywhere in the view hierarchy of the app.

## CoronaView contents (Lua)

The contents of the `CoronaView` are determined via Lua. In this project, the `CoronaView` is told to look for Lua files in the `Corona` subfolder of the .app bundle. 

NOTE: The Xcode project is setup to automatically copy the contents of `ChildView/Corona` to a `Corona` subfolder in the destination .app bundle, so you are free to modify/add/delete the Lua files as well as other asset files.

## Swift Interoperatibility

CoronaCards.framework is written in Obj-C/C++. In order to make CoronaCards available to Swift, the following changes were performed after creating this Xcode project using the 'Single View Application' project template:

1. Set `CoronaCards-BridgingHeader.h` as the 'Objective-C Bridging Header'
2. Add `CPlusPlusLinkage.cpp` as an empty stub file to ensure C++ libraries are linked.
3. Add frameworks and libraries required by CoronaCards.framework


# Setup

The sample expects `CoronaCards.framework` to be installed at `/Users/Shared/CoronaLabs/ios/CoronaCards.framework`. 

See [CoronaCards Setup (iOS)](http://docs.coronalabs.com/coronacards/ios/setup.html) for more info.


# Requirements

See [System Requirements](http://docs.coronalabs.com/coronacards/ios/setup.html#system-requirements).


# Version Notes

None