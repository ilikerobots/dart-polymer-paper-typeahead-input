// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_typeahead_input`.
@HtmlImport('paper_typeahead_input_nodart.html')
library polymer_paper_typeahead_input.lib.src.paper_typeahead_input.paper_typeahead_input;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/paper_input.dart';
import 'package:polymer_elements/paper_menu.dart';
import 'package:polymer_elements/paper_item.dart';
import 'package:polymer_elements/iron_ajax.dart';
import 'package:polymer_elements/paper_material.dart';

/// paper-typeahead-input is an element providing typeahead feature for input.
///
/// Basic use of paper-typeahead-input. Use a predefined list of suggestions.
///
///     <paper-typeahead-input label="US states" local-candidates="{{states}}"
///      placeholder="Please enter value" max-suggestions="4">
///     </paper-typeahead-input>
///
/// For now, there are three types of sources for suggetions. localCandidates, prefetchUrl, and remoteUrl. The candidates combined from these three ways becomes the potential candidates for input.
///
///
/// <b>Installation</b>
///
/// Install with bower
///
///     bower install paper-typeahead-input
///
/// If you want to save it in bower.json file, remember to add flag --save
///
///     bower install --save paper-typeahead-input
@CustomElementProxy('paper-typeahead-input')
class PaperTypeaheadInput extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  PaperTypeaheadInput.created() : super.created();
  factory PaperTypeaheadInput() => new Element.tag('paper-typeahead-input');

  /// Bind this to the <paper-input>'s alwaysFloatLabel property.
  bool get alwaysFloatLabel => jsElement[r'alwaysFloatLabel'];
  set alwaysFloatLabel(bool value) { jsElement[r'alwaysFloatLabel'] = value; }

  /// Bind this to the <paper-input>'s autofocus property.
  bool get autofocus => jsElement[r'autofocus'];
  set autofocus(bool value) { jsElement[r'autofocus'] = value; }

  /// Bind this to the <paper-input>'s autoValidate property.
  bool get autoValidate => jsElement[r'autoValidate'];
  set autoValidate(bool value) { jsElement[r'autoValidate'] = value; }

  /// Bind this to the <paper-input>'s charCounter property.
  bool get charCounter => jsElement[r'charCounter'];
  set charCounter(bool value) { jsElement[r'charCounter'] = value; }

  /// Bind this to the <paper-input>'s disabled property.
  bool get disabled => jsElement[r'disabled'];
  set disabled(bool value) { jsElement[r'disabled'] = value; }

  /// The property in json object that should be chosen for the paper-input value when an element is selected from the suggestions.
  /// This property only makes sense when property isCandidatesJson set to be true.
  String get displayProp => jsElement[r'displayProp'];
  set displayProp(String value) { jsElement[r'displayProp'] = value; }

  /// Bind this to the <paper-input>'s errorMessage property.
  String get errorMessage => jsElement[r'errorMessage'];
  set errorMessage(String value) { jsElement[r'errorMessage'] = value; }

  /// Input object.
  get inputObject => jsElement[r'inputObject'];
  set inputObject(value) { jsElement[r'inputObject'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Input value.
  String get inputValue => jsElement[r'inputValue'];
  set inputValue(String value) { jsElement[r'inputValue'] = value; }

  /// A boolean property to indicate if elements in the candidates list are json dictionary.
  /// When this property set up to be true, the candidates will be treated as list of json objects. Otherwise will be treated as list of strings.
  bool get isCandidatesJson => jsElement[r'isCandidatesJson'];
  set isCandidatesJson(bool value) { jsElement[r'isCandidatesJson'] = value; }

  /// The label that will show up as the label for tags input. It not specified, no label will show up.
  String get label => jsElement[r'label'];
  set label(String value) { jsElement[r'label'] = value; }

  /// The candidates from local variable.
  List get localCandidates => jsElement[r'localCandidates'];
  set localCandidates(List value) { jsElement[r'localCandidates'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Bind this to the <paper-input>'s maxlength property.
  num get maxlength => jsElement[r'maxlength'];
  set maxlength(num value) { jsElement[r'maxlength'] = value; }

  /// Maximum number of suggestions to show up in typeahead.
  num get maxSuggestions => jsElement[r'maxSuggestions'];
  set maxSuggestions(num value) { jsElement[r'maxSuggestions'] = value; }

  /// Bind this to the <paper-input>'s minlength property.
  num get minlength => jsElement[r'minlength'];
  set minlength(num value) { jsElement[r'minlength'] = value; }

  /// Bind this to the <paper-input>'s noLabelFloat property.
  bool get noLabelFloat => jsElement[r'noLabelFloat'];
  set noLabelFloat(bool value) { jsElement[r'noLabelFloat'] = value; }

  /// Bind this to the <paper-input>'s pattern property.
  String get pattern => jsElement[r'pattern'];
  set pattern(String value) { jsElement[r'pattern'] = value; }

  /// The placeholder for the paper-input element.
  String get placeholder => jsElement[r'placeholder'];
  set placeholder(String value) { jsElement[r'placeholder'] = value; }

  /// Url for a prefectched list in json format for the list of suggestion candidates. The response should be something like: ["a","b"]
  String get prefetchUrl => jsElement[r'prefetchUrl'];
  set prefetchUrl(String value) { jsElement[r'prefetchUrl'] = value; }

  /// Bind this to the <paper-input>'s readonly property.
  bool get readonly => jsElement[r'readonly'];
  set readonly(bool value) { jsElement[r'readonly'] = value; }

  /// Remote url to perform a search using the value in the input. The input value will be passed in as url parameter. The placeholder should be %QUERY.
  String get remoteUrl => jsElement[r'remoteUrl'];
  set remoteUrl(String value) { jsElement[r'remoteUrl'] = value; }

  /// A boolean property to indicate if there is a searching going on to remoteUrl.
  /// This propery only makes sense if remoteUrl is set up.
  bool get remoteUrlSearching => jsElement[r'remoteUrlSearching'];
  set remoteUrlSearching(bool value) { jsElement[r'remoteUrlSearching'] = value; }

  /// Number of milliseconds to wait after user types a character.
  /// This is helpful to reduce number of calls to remoteUrl based on performance consideration if it's set up properly based on how fast user usually types.
  /// Default is undefined which means the search request to remoteUrl will be fired immediately after user types a character.
  /// This propery only makes sense if remoteUrl is set up.
  num get remoteUrlWaitMs => jsElement[r'remoteUrlWaitMs'];
  set remoteUrlWaitMs(num value) { jsElement[r'remoteUrlWaitMs'] = value; }

  /// Bind this to the <paper-input>'s required property.
  bool get required => jsElement[r'required'];
  set required(bool value) { jsElement[r'required'] = value; }

  /// An array to tell what property in the json object of candidate is searchable.
  /// This property only makes sense when property isCandidatesJson set to be true.
  List get searchableProps => jsElement[r'searchableProps'];
  set searchableProps(List value) { jsElement[r'searchableProps'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}
}
