// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Schools",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var resources in searchTerms) {
      if (resources.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(resources);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var resources in searchTerms) {
      if (resources.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(resources);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
