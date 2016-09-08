@TestOn('browser && !firefox')
library polymer_paper_typeahead_input.test.typeahead_feature;

import 'dart:async';
import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_paper_typeahead_input/paper_typeahead_input.dart';
import 'package:test/test.dart';
import 'package:web_components/web_components.dart';
import 'common.dart';


main() async {
  List states = [
    "Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware",
    "District Of Columbia", "Federated States Of Micronesia", "Florida", "Georgia", "Guam", "Hawaii", "Idaho",
    "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Marshall Islands", "Maryland",
    "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada",
    "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota",
    "Northern Mariana Islands", "Ohio", "Oklahoma", "Oregon", "Palau", "Pennsylvania", "Puerto Rico", "Rhode Island",
    "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virgin Islands", "Virginia",
    "Washington", "West Virginia", "Wisconsin", "Wyoming"
  ];

  await initWebComponents();

  group('typeahead should have the correct value when user types different values', () {
    PaperTypeaheadInput myEl;

    setUp(() async {
      myEl = fixture('typeahead-value');
      myEl.localCandidates = states;
    });

    test('typeahead start with empty', () {
      expect(myEl.jsElement['_typeahead'], equals(""));
    });

    test('typeahead display correct value when user types', () {
      myEl.inputValue = 'ala';
      myEl.jsElement.callMethod('_search', [myEl.inputValue.trim()]);
      expect(myEl.jsElement['_typeahead'], equals("Alabama"));
      expect(myEl.suggestions, equals(["Alabama","Alaska","Palau"]));
      myEl.inputValue = 'al';
      myEl.jsElement.callMethod('_search', [myEl.inputValue.trim()]);
      expect(myEl.jsElement['_typeahead'], equals("Alabama"));
      expect(myEl.suggestions.length, 5);
      myEl.inputValue = '';
      myEl.jsElement.callMethod('_search', [myEl.inputValue.trim()]);
      expect(myEl.jsElement['_typeahead'], equals(""));
      myEl.inputValue = 'G';
      myEl.jsElement.callMethod('_search', [myEl.inputValue.trim()]);
      expect(myEl.jsElement['_typeahead'], equals("Georgia"));
      myEl.inputValue = 'bama';
      myEl.jsElement.callMethod('_search', [myEl.inputValue.trim()]);
      expect(myEl.jsElement['_typeahead'], equals(""));
    });
  });

  group('typeahead should have the correct display value when user types different values', () {
    PaperTypeaheadInput myEl;
    setUp(() async {
      myEl = fixture('typeahead-display-value');
      myEl.localCandidates = states;
    });

    test('typeahead display correct display value when user types', () {
      myEl.inputValue = 'ala';
      myEl.jsElement.callMethod('_search',[myEl.inputValue.trim()]);
      expect(myEl.jsElement.callMethod('_getTypeaheadDisplay', [myEl.jsElement['_typeahead']]), equals("alabama"));
      myEl.inputValue = 'al';
      myEl.jsElement.callMethod('_search',[myEl.inputValue.trim()]);
      expect(myEl.jsElement.callMethod('_getTypeaheadDisplay', [myEl.jsElement['_typeahead']]), equals("alabama"));
      myEl.inputValue = '';
      myEl.jsElement.callMethod('_search',[myEl.inputValue.trim()]);
      expect(myEl.jsElement.callMethod('_getTypeaheadDisplay', [myEl.jsElement['_typeahead']]), equals(""));
      myEl.inputValue = 'G';
      myEl.jsElement.callMethod('_search',[myEl.inputValue.trim()]);
      expect(myEl.jsElement.callMethod('_getTypeaheadDisplay', [myEl.jsElement['_typeahead']]), equals("Georgia"));
      myEl.inputValue = 'g';
      myEl.jsElement.callMethod('_search',[myEl.inputValue.trim()]);
      expect(myEl.jsElement.callMethod('_getTypeaheadDisplay', [myEl.jsElement['_typeahead']]), equals("georgia"));
      myEl.inputValue = 'bama';
      myEl.jsElement.callMethod('_search',[myEl.inputValue.trim()]);
      expect(myEl.jsElement.callMethod('_getTypeaheadDisplay', [myEl.jsElement['_typeahead']]), equals(""));
    });
  });

  group('typeahead should have the correct display classes', () {
    PaperTypeaheadInput myEl;
    setUp(() async {
      myEl = fixture('typeahead-display-style');
      myEl.localCandidates = states;
    });
    test('typeahead display correct display classes', () {
      expect(myEl.jsElement.callMethod('_getTypeaheadClasses', [true]), equals("typeahead-without-label"));
      expect(myEl.jsElement.callMethod('_getTypeaheadClasses', [false]), equals("typeahead-with-label"));
    });
  });
}

