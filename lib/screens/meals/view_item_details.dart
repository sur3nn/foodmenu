import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmenu/cubits/favorites_cubit/favorites_cubit.dart';

import '../../model/meals_model.dart';

class ViewItemDetails extends StatelessWidget {
  final DummyMeals data;
  const ViewItemDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          actions: [
            BlocBuilder<FavoritesCubit, List<DummyMeals>>(
              builder: (context, state) {
                return IconButton(
                    onPressed: () {
                      context.read<FavoritesCubit>().addItem(data, context);
                    },
                    icon: Icon(state.any((e) => e.id == data.id)
                        ? Icons.favorite
                        : Icons.favorite_outline));
              },
            )
          ],
          title: Text(data.title ?? ""),
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
              fit: BoxFit.cover,
              data.imageUrl ?? "",
              height: size.height / 3,
              width: size.width,
            ),
            const Text(
              "Ingredients",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: data.ingredients?.length ?? 0,
                itemBuilder: (context, index) {
                  return Text(
                    data.ingredients?[index] ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  );
                }),
            const SizedBox(height: 20),
            const Text(
              "Steps",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: data.steps?.length ?? 0,
                itemBuilder: (context, index) {
                  return Text(data.steps?[index] ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white));
                })
          ]),
        ));
  }
}
