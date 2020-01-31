# Sample Code for Cordova with Tealeaf Instrumented

Built with: 
* Ionic 5.0.0-beta.21
* Cordova 8.1.2
* Cordova plugin 7.1.4 (Android) and 4.5.3 (iOS)
* Android Studio 3.2.1
* Gradle version 2.3.3

Support AndroidX, API level 16 to 28.
No AndroidX support.

## Requirements

* Node 8+
* npm 6+
* cordova 9+

## Install Instructions

Go to **SampleCordova** directory and run

**npm install**
**cordova build**

This will download all the third party tools.

## Additional iOS instructions

After npm install, goto platforms/ios folder and depending on how old your repo is run

**pod install**

or

**pod update**

By default IBMTealeafDebug pod will be used. If you want to use IBMTealeaf pod then open the Podfile under platforms/ios and change pod 'IBMTealeafDebug' to pod 'IBMTealeaf'

When building with xcode 10.2 or earlier; in your xcode, go to File Menu >> Workspace Settings and select "Legacy Build System" for "Build System:"


# Notes
**DOM Diff** is now supported in **SaaS** only. This application has **DOM Diff** enabled. If you need to test for onpremise system. You will need to change from:

**diffEnabled: true,**

to 

**diffEnabled: false,**

## In the following files:

* defaultNativeDomCaptureConfiguration.js
* defaultNativeDomCaptureGesturesConfigurationHammer1.js
