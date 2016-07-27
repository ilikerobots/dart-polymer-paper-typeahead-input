# dart-polymer-paper-typeahead-input

[![Pub](https://img.shields.io/pub/v/polymer_paper_typeahead_input.svg?maxAge=2592000?style=flat-square)](https://pub.dartlang.org/packages/polymer_paper_typeahead_input)
[![Travis](https://img.shields.io/travis/ilikerobots/dart-polymer-paper-typeahead-input.svg?maxAge=2592000?style=flat-square)](https://github.com/ilikerobots/dart-polymer-paper-typeahead-input)


Dart polymer wrappers for [paper-typeahead-input](https://github.com/cheonhyangzhang/paper-typeahead-input) Polymer elements.  Thanks to [Tianxiang Zhang](https://github.com/cheonhyangzhang) for the original polymer.

## Usage

Import the element dart as normal, but note the target dart differes from the package name, in order to keep consistency with the polymer element.

```dart
import 'package:polymer_paper_typeahead_input/paper_typeahead_input.dart';
```

Within html, the component is named 'paper-typeahead-input'.  

## Examples

Examples may be served in debug/release mode via pub.

```sh
pub serve examples
```


## Testing

The original polymer tests are in the process of being ported.  The ported tests can be run as normal dart tests.  For example, to run on dartium (default): ```pub run test```  As usual, tests can be run on other platforms with ```-p<platform>```

To run tests as javascript, the pub serve and test execution must be performed separately. Run ```pub serve test --port=8080``` from one terminal and ```pub run test -pchrome --pub-serve=8080``` from a second.

Note that tests are specifically blocked from running on Firefox currently in order to utilize [Travis CI](https://pub.dartlang.org/packages/dart-polymer-paper-typeahead-input).


## Rebuilding

Although not necessary for normal use, this package can be rebuilt from the original polymer source using the procedure
below.  The specific version used as a basis can be specified in bower.json.

1. Fetch the polymer element source and deps
```sh
bower install
```

2. Build the Dart wrapper API

```sh
pub run custom_element_apigen:update_paper_typeahead_input_dart.yaml
```

For more information on using custom_element_apigen, see <https://pub.dartlang.org/packages/custom_element_apigen>

