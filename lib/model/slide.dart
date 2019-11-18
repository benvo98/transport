import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'xe1.png',
    title: 'This is transport in HCM city',
    description:
        'Đây là một trong những dự án mới của chúng tôi, hiện tại đang được thử nghiệm trong khu vực TPHCM, là ứng dụng vận chuyển nhà...',
  ),
  Slide(
    imageUrl: 'xe2.png',
    title: 'Have been confirmed',
    description: 'Được chính quyền xác nhận, an toàn, uy tín,...',
  ),
  Slide(
    imageUrl: 'alarm-clock.png',
    title: 'Save your time',
    description:
        'Nhờ sự phát triển app và đội ngủ. Chúng tôi sẽ giúp bạn tiết kiệm được thời gian',
  ),
];
