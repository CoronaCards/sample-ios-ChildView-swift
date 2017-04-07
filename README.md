sample-ios-OverlayChildView
===========================

This example shows you how to __overlay__ a CoronaView on top of an existing view hierarchy. The background of the CoronaView is transparent so that you can see the existing views underneath.

### `license.ccdata`

In order for any CoronaCards project to work, you must put a valid `license.ccdata` file into the `Corona`  folder (near `main.lua`), otherwise you'll get a black screen and error message in the console.

# Code Overview

## CoronaView setup (Obj-C)

The CoronaView is instantiated just like any normal UIView. A `CoronaView` is paired with an instance of `CoronaViewController`.

This example sets up the `CoronaViewController` as a child of `ViewController` which is the root view controller of the app. This enables the `CoronaView` to be inserted anywhere in the view hierachy of the app.

## CoronaView contents (Lua)

The contents of the `CoronaView` are determined via Lua. In this project, the `CoronaView` is told to look for Lua files in the `Corona` subfolder of the .app bundle. 

NOTE: The Xcode project is setup to automatically copy the contents of `OverlayChildView/Corona` to a `Corona` subfolder in the destination .app bundle, so you are free to modify/add/delete the Lua files as well as other asset files.

## Transparent background

In the code, the transparent background effect is achieved by:

* setting the background color of the CoronaView to a clear color (Obj-C)
* telling OpenGL to use a clear color (Lua)


# Setup

The sample expects `CoronaCards.framework` to be installed at `/Users/Shared/CoronaLabs/ios/CoronaCards.framework`. 

See [CoronaCards Setup (iOS)](http://docs.coronalabs.com/coronacards/ios/setup.html) for more info.


# Requirements

See [System Requirements](http://docs.coronalabs.com/coronacards/ios/setup.html#system-requirements).


# Version Notes

If you are using an older version of CoronaCards (2014.2174 and earlier), you will need to modify the Xcode project with the following settings:

* Dead Code Stripping: `NO`
* Other Linker Flags: `-ObjC -all_load -lobjc -lsqlite3`
