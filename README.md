# AnimationObserver
Observe SwiftUI animation progress with ease! 🔬

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/AnimationObserver", exact: .init(0, 0, 1))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Usage

```swift
public struct CustomView {
    @Binding private var playing: Bool
    @State private var progress: Double

    public init(playing: Binding<Bool>) {
        self._playing = playing
        self.progress = playing.wrappedValue ? .zero : 1
    }

    public var body: some View {
        // ...
        .animationObserver(for: progress) {
            playing = true
        } onComplete: {
            playing = false
        }
    }
}
```

For details see the Example app.

## Example

<p style="text-align:center;"><img src="https://github.com/stateman92/AnimationObserver/blob/main/Resources/screenrecording.gif?raw=true" width="50%" alt="Example"></p>
