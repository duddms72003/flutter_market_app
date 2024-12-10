import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/product_detail/widgets/product_detail_actions.dart';
import 'package:flutter_market_app/ui/pages/product_detail/widgets/product_detail_body.dart';
import 'package:flutter_market_app/ui/pages/product_detail/widgets/product_detail_bottom_sheet.dart';
import 'package:flutter_market_app/ui/pages/product_detail/widgets/product_detail_picture.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //safeArea 크기 구하는 법
    //항상 Scaffold 가 사용되는 위치에서 호출해야함.

    return Scaffold(
      appBar: AppBar(
        actions: [
          ProductDetailActions(),
        ],
      ),
      bottomSheet:
          ProductDetailBottomSheet((MediaQuery.of(context).padding.bottom)),
      body: ListView(
        children: [
          ProductDetailPicture(),
          ProductDetailBody(),
        ],
      ),
    );
  }
}
