// ignore_for_file: file_names

import 'package:book_market/core/utilis/assets.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/utilis/style.dart';
import '../../../../home/presentation/views/widget/book_ListView_item.dart';
import 'Yext_field_details.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(
            title: 'title this book',
             price: 30,
              autherName: 'Ali',
               image1: '${Assets.test5}'
            ,),
        );
      },
    );
  }
}
