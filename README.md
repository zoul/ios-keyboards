# iOS Keyboard Catalogue

An overview of the layouts and sizes used by the system keyboard in iOS. The repository contains an iOS app that showcases the various keyboard types (see the App folder), and a collection of keyboard images that can be displayed and compared in the [interactive HTML sampler](http://zoul.github.io/ios-keyboards).

## Keyboard Sizes

### iPhone 4

* Portrait 320✕216 points (640✕432 px)
* Landscape 480✕162 points (960✕324 px)

### iPhone 5

* Portrait 320✕216 points (640✕432 px)
* Landscape 568✕162 points (1134✕324 px)

### iPhone 6

* Portrait 375✕216 points (750✕432 px)
* Landscape 667✕162 points (1334✕324 px)

### iPhone 6 Plus

* Portrait 414✕226 points (1242✕678 px)
* Landscape 736✕162 points (2208✕486 px)

For a great explanation of the conversion between logical display points and pixels see the [Ultimate Guide to iPhone Resolutions](http://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions).

## Keyboard Types

* `UIKeyboardTypeDefault`
* `UIKeyboardTypeASCIICapable`
* `UIKeyboardTypeNumbersAndPunctuation`
* `UIKeyboardTypeURL`
* `UIKeyboardTypeNumberPad`
* `UIKeyboardTypePhonePad`
* `UIKeyboardTypeNamePhonePad`
* `UIKeyboardTypeEmailAddress`
* `UIKeyboardTypeDecimalPad`
* `UIKeyboardTypeTwitter`
* `UIKeyboardTypeWebSearch`

## Random Design Remarks

* Most keyboard types have two alternate “planes” that can be switched to using special keys – a number plane (the `123` key) and a symbol plane (the `#+=` key).
* The `UIKeyboardTypeNumbersAndPunctuation` keyboard type is simply the `UIKeyboardTypeDefault` type switched to the number plane by default.
* The `UIKeyboardTypeURL` and `UIKeyboardTypeEmailAddress` keyboard types have number and symbol planes with different layout and different characters from the rest of the keyboard types.
* If there is just one keyboard installed, the globe key used for keyboard switching is replaced using an emoji key.
* The `123` key on the `UIKeyboardTypeNamePhonePad` keyboard leads to a unique phone-pad plane (almost like the `UIKeyboardTypePhonePad` type, only the bottom-left `+*#` key is replaced by a `ABC` key to switch back to the alpha plane).
* The decimal separator in the `UIKeyboardTypeDecimalPad` keyboard is adjusted according to current locale (as an example, it uses the “`,`” character on a Czech phone).
* The `UIKeyboardTypePhonePad` and `UIKeyboardTypeNamePhonePad` currently don’t seem to support keyboard extensions (as of iOS 8.1). Even if the keyboard extension supports the keyboard type, the system uses its own keyboard.
