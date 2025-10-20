// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addTodoButton": MessageLookupByLibrary.simpleMessage("ToDo hinzufügen"),
    "anErrorOccured": MessageLookupByLibrary.simpleMessage(
      "Ein Fehler ist aufgetreten: ",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Meine ToDo-Liste"),
    "buttonAdd": MessageLookupByLibrary.simpleMessage("Hinzufügen"),
    "buttonCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "emptyListMessage": MessageLookupByLibrary.simpleMessage(
      "Füge deine erste Aufgabe hinzu!",
    ),
    "hintTodoTitle": MessageLookupByLibrary.simpleMessage("ToDo-Titel"),
    "newTodoTitle": MessageLookupByLibrary.simpleMessage(
      "Neue ToDo hinzufügen",
    ),
    "showLastData": MessageLookupByLibrary.simpleMessage(
      "Anzeige der letzten bekannten Daten.",
    ),
    "startingAppText": MessageLookupByLibrary.simpleMessage("Starte App..."),
    "unknownState": MessageLookupByLibrary.simpleMessage("Unbekannter Zustand"),
  };
}
