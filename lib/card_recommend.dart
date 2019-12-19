import 'package:flutter/material.dart';
import 'package:my_app/base_card.dart';

/// 本周推荐
class CardRecommend extends BaseCard {
  @override
  BaseCardState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  bottomContent() {
    // 高度撑开
    return Expanded(
        child: Container(
          constraints: BoxConstraints.expand(), // 通过BoxConstraints尽可能撑满父容器
      margin: EdgeInsets.only(top: 20),
      child: Image.network(
        'http://www.devio.org/io/flutter_beauty/card_1.jpg',
        fit: BoxFit.cover,
      ),
    ));
  }

  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  subTitle(String title) {
    return super.subTitle('送你一天无限卡，全场书籍免费读');
  }
}
