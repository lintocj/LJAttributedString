# LJAttributedString
=================

String class is very rich and great in Swift, but as there is a lot of requirements to have formatted string. 

Using `LJAttributedString` and NSAttributedString we can achieve multiple fonts, color, underline, strikethrough, shadow and a lot more. Let’s explore these class…

- - -

## Installing the library

To use the library, just add the dependency to your `Podfile`:

```ruby
platform :ios
pod 'LJAttributedString'
```

Run `pod install` to install the dependencies.

## Requirements

NSMutableAttributedString requires two properties one is attribute(Dictionary) and second one is NSRange. All keys of attributes are define in NSAttributedString.Key extension class and few keys are below:


    NSAttributedString.Key.foregroundColor // to change color of string
    NSAttributedString.Key.font // to change font of string
    NSAttributedString.Key.backgroundColor // to change background color of string
    NSAttributedString.Key.underlineStyle // underline below text
    NSAttributedString.Key.shadow // add shadow over string
    NSAttributedString.Key.paragraphStyle // for paragraph style
    
## Usage
1. Color Attribute
 Now move to your ViewController and in viewDidLoad function create a string and convert this string to NSMutableAttributedString.
 
       let text = "This is a colorful testing string"
       let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
       attributedText.apply(color: .red, subString: "This")
       attributedText.apply(color: .darkGray, onRange: NSMakeRange(5, 4)) //Range of substring "is a"
       attributedText.apply(color: .purple, subString: "colorful")
       attributedText.apply(color: .blue, subString: "testing")
       attributedText.apply(color: .orange, subString: "string")
       self.firstLabel.attributedText = attributedText


2. Font Attribute

- In this function pass the UIFont object and substring in which you want to apply the font.
- Sometime there may be a case that a string have two substrings, so in this case use the second function and pass UIFont and NSRange object.
- In your ViewController class create a second UILabel and add below code in your viewDidLoad function.

      let text = "This string is having multiple font"
      let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
      attributedText.apply(font: UIFont.boldSystemFont(ofSize: 24), subString: "This")
      attributedText.apply(font: UIFont.boldSystemFont(ofSize: 24), onRange: NSMakeRange(5, 6))
      attributedText.apply(font: UIFont.italicSystemFont(ofSize: 20), subString: "string")
      attributedText.apply(font: UIFont(name: "HelveticaNeue-BoldItalic", size: 20)!, subString: " is")
      attributedText.apply(font: UIFont(name: "HelveticaNeue-ThinItalic", size: 20)!, subString: "having")
      attributedText.apply(color: UIColor.blue, subString: "having")
      attributedText.apply(font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 20)!, subString: "multiple")
      attributedText.apply(color: appRedColor, subString: "multiple")
      self.secondLabel.attributedText = attributedText
      
3. Underline Attribute

 Create a another UILabel in your ViewController class and add below code in your viewDidLoad function.

    let text = "This is underline string"
    let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
    attributedText.underLine(subString: "This is underline string")
    self.thirdLabel.attributedText = attributedText
    

## License

Usage is provided under the [MIT License](http://opensource.org/licenses/mit-license.php).  See LICENSE for the full details.

## Contributions

All contributions are welcome. Please fork the project to add functionalities and submit a pull request to merge them in next releases.

        
        
        




