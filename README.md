# ObjCProtoExample

This is an example project that uses protocol buffers for Objective-C, using
[Google's officially supported runtime](https://github.com/google/protobuf/tree/master/objectivec)
and its corresponding [Protobuf Pod](https://cocoapods.org/pods/Protobuf).

## Setup

```
git clone https://github.com/stevenle/ObjCProtoExample.git
cd ObjCProtoExample
pod install
open ObjCProtoExample.xcworkspace
```

Then run the app using the simulator and you should see an example message
serialized within the log console.

## Details

* A pre-built "protoc" binary is available in the bin/ folder
* The proto files are automatically compiled on build using a custom run script

Note that this example was written during the protocol buffers v3.0.0-alpha-3
alpha period and will likely be outdated very quickly.
