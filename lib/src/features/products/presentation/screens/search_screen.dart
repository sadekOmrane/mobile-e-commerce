import 'package:flutter/material.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/search/search_app_bar_widget.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/search/search_result_list_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSearching = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SearchAppBarWidget(),
            SearchResultListWidget(),
          ], //<Widget>[]
        ),
      ),
    );
  }
}
