// ignore_for_file: non_constant_identifier_names, camel_case_types, file_names

import 'package:book_market/features/home/domain/entity/book_entity.dart';
import 'package:book_market/features/home/presentation/manager/cubit/fetch_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utilis/assets.dart';
import 'book_ListView_item.dart';

class Books_List_View extends StatelessWidget {
  const Books_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookEntity>books;
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if(state is FetchFeaturedBooksSuccess){
          books = (state).books;

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: books.length,
          itemBuilder: ((context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(
                title: '${books[index].booktitle}',
                 price:30,
                 autherName: "Ali",
                  image1: '${Assets.test5}',),
            );
          }),
        );}
        else if (state is FetchFeaturedBooksFailure){
          return Text(state.errMessage);

        }
        else{
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
