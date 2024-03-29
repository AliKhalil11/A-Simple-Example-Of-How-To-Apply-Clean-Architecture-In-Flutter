
// ignore_for_file: file_names, duplicate_ignore, camel_case_types, unnecessary_string_interpolations

import 'package:book_market/features/home/presentation/manager/cubit/fetch_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entity/book_entity.dart';
import 'custom_ListView_image_item.dart';

class Custom_Listview_Image extends StatelessWidget {
  const Custom_Listview_Image({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookEntity> books;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
        builder: (context, state) {
      
          if (state is FetchFeaturedBooksSuccess){
            books = (state).books;
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Custom_Listview_Image_Item(
                    image: '${books[index].imageauthername}',),
                );
              });
          }
          else if (state is FetchFeaturedBooksFailure){
            return Text(state.errMessage);
            
          }
          else{
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
