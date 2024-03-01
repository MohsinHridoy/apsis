
import 'package:flutter/material.dart';



List<TextSpan> highlightText(String text, String query) {
  List<TextSpan> spans = [];

  // Handle the case when the query is empty
  if (query.isEmpty) {
    spans.add(TextSpan(text: text));
    return spans;
  }

  // Perform case-insensitive search
  String lowerCaseText = text.toLowerCase();
  String lowerCaseQuery = query.toLowerCase();

  int start = 0;
  while (start < text.length) {
    int matchIndex = lowerCaseText.indexOf(lowerCaseQuery, start);
    if (matchIndex == -1) {
      spans.add(TextSpan(text: text.substring(start)));
      break;
    }

    // Add non-matching text
    if (matchIndex > start) {
      spans.add(TextSpan(text: text.substring(start, matchIndex)));
    }

    // Add matching text with green color
    spans.add(TextSpan(
      text: text.substring(matchIndex, matchIndex + query.length),
      style: TextStyle(color: Colors.green),
    ));

    start = matchIndex + query.length;
  }

  return spans;
}