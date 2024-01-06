import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/widgets/circular_loading_widget.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/cart/presentation/widgets/cart_list_item_widget.dart';

class CartListWidget extends StatefulWidget {
  const CartListWidget({super.key});

  @override
  State<CartListWidget> createState() => _CartListWidgetState();
}

class _CartListWidgetState extends State<CartListWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CartRemoteBloc>(context).add(CartRemoteGetItemsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartRemoteBloc, CartRemoteState>(
      listener: (context, state) {
        if (state is CartRemoteAddItemLoaded ||
            state is CartRemoteRemoveItemLoaded) {
          BlocProvider.of<CartRemoteBloc>(context)
              .add(CartRemoteGetItemsEvent());
        }
      },
      builder: (context, state) {
        if (state is CartRemoteGetItemsLoading) {
          return CircularLoadingWidget();
        } else if (state is CartRemoteGetItemsLoaded) {
          return SliverList.builder(
            itemBuilder: (context, index) {
              return CartListItemWidget(product: state.products![index]);
            },
            itemCount: state.products!.length,
          );
        } else if (state is CartRemoteGetItemsError) {
          return SliverToBoxAdapter(
            child: IconButton(
              onPressed: () {
                BlocProvider.of<CartRemoteBloc>(context)
                    .add(CartRemoteGetItemsEvent());
              },
              icon: Icon(
                Bootstrap.arrow_clockwise,
              ),
            ),
          );
        }
        return SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      },
    );
  }
}
