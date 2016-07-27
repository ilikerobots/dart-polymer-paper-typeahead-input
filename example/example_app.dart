@HtmlImport('example_app.html')
library polymer_paper_typeahead_input.lib.example_app;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';


import 'package:polymer_elements/paper_material.dart';

import 'package:polymer_paper_typeahead_input/paper_typeahead_input.dart';

@PolymerRegister('example-app')
class ExampleApp extends PolymerElement with PolymerMixin, PolymerBase, JsProxy{

  @property bool isSearching = false;

  @property List searchable = ["name","nickname"];

  @property List states = [
    "Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware",
    "District Of Columbia", "Federated States Of Micronesia", "Florida", "Georgia", "Guam", "Hawaii", "Idaho",
    "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Marshall Islands", "Maryland",
    "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada",
    "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota",
    "Northern Mariana Islands", "Ohio", "Oklahoma", "Oregon", "Palau", "Pennsylvania", "Puerto Rico", "Rhode Island",
    "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virgin Islands", "Virginia",
    "Washington", "West Virginia", "Wisconsin", "Wyoming"
  ];

  ExampleApp.created() : super.created();
}
