Using SSDB CocoaPod (recommended)
----------------------------------------

Add this to your Podfile:

	platform :ios, '9.0'
	inhibit_all_warnings!

	target 'ssdb-ios' do
	    pod 'SSDB', :podspec => 'https://raw.github.com/mysteriouss/ssdb.framework.iOS/master/ssdb.podspec'
	end

Run in Terminal or Cocoapods App:

	$ pod install

Include headers:

	#import <SSDB/SSDB.h>

In case of build error, change ssdb-dummy.m file type in "Identify and Type" pannel to

        Objective-C++ Source

Or rename SSDB-dummy.m to

	SSDB-dummy.mm

Or simply upgrade cocoapods to the latest version

	brew install cocoapods
