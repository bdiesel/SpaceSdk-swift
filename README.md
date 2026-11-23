# SpaceSdk for Swift

NASA Astronomy Picture of the Day and Spaceflight News, from a Kotlin
Multiplatform SDK exported to Swift. Generated from
https://github.com/bdiesel/kmp-spm — do not edit by hand.

## Install

Xcode: **File ▸ Add Package Dependencies…** → `https://github.com/bdiesel/SpaceSdk-swift`
→ version `0.2.0` → product **SpaceSdkLibrary**. Requires iOS 18.

```swift
import SpaceSdk

let sdk = SpaceSdk()
let result = try await sdk.getPictureOfTheDay()
```
