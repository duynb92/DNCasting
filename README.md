# DNCasting

Tired of casting from type to type, try this ! :see_no_evil:

## Installation

- **For iOS 8+ projects** with [CocoaPods](https://cocoapods.org):

    ```ruby
    pod 'DNCasting', :git => 'https://github.com/duynb92/DNCasting.git'
    ```

- **For iOS 8+ projects** with [Carthage](https://github.com/Carthage/Carthage):

    ```
    github "duynb92/DNCasting"
    ```

- **Using [Swift Package Manager](https://swift.org/package-manager)**:

    Coming soon

## API

- **String**
```swift
toInt()
toInt32()
toInt64()
toDouble()
toFloat()
toBool()
findAllInts() //Find all integers in string 
```

- **Int**
```swift
toString()
toDouble()
toFloat()
toBool()
```

- **Double**
```swift
toString()
toString(minDigits: Int, maxDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US"))
toString(exactFractionDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US")) 
toInt()
toFloat()
toBool()
```

- **Float**
```swift
toString()
toString(minDigits: Int, maxDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US"))
toString(exactFractionDigits: Int, roundingMode: NumberFormatter.RoundingMode = .halfEven, locale : Locale = Locale(identifier: "en_US")) 
toInt()
toBool()
```

- **Bool**
```swift
toString()
toInt()
toDouble()
toFloat()
```

All are self-explanatory. No headache anymore :wink: !

## License

**DNCasting** is under MIT license. See the [LICENSE](LICENSE) file for more info.

## Buy me a coffee

If this snippet really, i mean really, save your time.


 <a href="https://www.paypal.me/DuyN92" target="_blank">
<img src="http://androiduiux.files.wordpress.com/2013/10/support-button.png" width="200px">
</a>
