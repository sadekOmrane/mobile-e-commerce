import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/favorite_product_card_widget.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/favorites_app_bar_widget.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int crossAxisCount = 2;
  ProductEntity p = ProductEntity(
    uuid: '1',
    name: 'Product 1',
    discountValue: 16,
    finalPrice: 299,
    mainPhoto:
        'https://w7.pngwing.com/pngs/60/414/png-transparent-iphone-14-thumbnail.png',
    isActivated: true,
    marque: 'Marque 1',
    starsAvg: 4,
    initPrice: 399,
    isDiscounted: true,
    isSponsored: true,
    quantity: 100,
    starsCount: 50,
    stockStatus: 'In Stock',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            FavoritesAppBar(),
            _buildFilterBar(),
            _buildFavoritesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoritesList() {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: crossAxisCount == 2 ? 0.5 : 0.9),
      itemCount: 8,
      itemBuilder: (context, index) {
        return FavoriteProductCard(product: p);
      },
    );
  }

  Widget _buildFilterBar() {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Bootstrap.grid),
          ),
        ],
      ),
    );
  }
}
