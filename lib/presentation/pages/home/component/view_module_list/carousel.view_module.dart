import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/view_module/view_module.model.dart';
import 'view_module_factory/view_module_widget.dart';

class CarouselViewModule extends StatefulWidget with ViewModuleWidget {
  const CarouselViewModule({required this.info, super.key});
  final ViewModule info;

  @override
  State<CarouselViewModule> createState() => _CarouselViewModuleState();
}

class _CarouselViewModuleState extends State<CarouselViewModule> {
  final PageController _pageController = PageController();
  int currentPage = 1;

  late Timer _timer;
  Timer periodicTimer() {
    // 4초마다 반복.
    return Timer.periodic(const Duration(seconds: 4), (timer) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500), // 페이지 전환을 몇초동안 실행될지
        curve: Curves.ease, // 애니메이션 속도 변화 곡선 정의
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _timer = periodicTimer(); // 기존에 사용하던 timer를 추적하기 위한 할당.
  }

  @override
  void dispose() {
    super.dispose();
    // _timer 에 할당하지 않고 periodicTimer().cancel() 사용시엔
    // 또 다른 객체를 생성후 cancel() 하는것과 동일하다.
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final products = widget.info.products;

    //AspectRatio 자식의 가로세로 비율을 유지하도록 도와주는 위젯 [부모 위젯의 사이즈 제약이 필요]
    return AspectRatio(
      aspectRatio: 375 / 340,
      // 페이지 단위로 스와이프(넘기기) 할 수 있는 뷰, 일반적으로 수평 스크롤이 기본, 한번에 한페이지씩 보여준다.
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemBuilder: (_, index) {
              final src = products[index % products.length].imageUrl;
              //인터넷 URL을 통해 이미지를 불러오는 위젯 비동기로 이미지를 로드, 로딩중 및 실패시 대체 UI 삽입가능.
              return Image.network(src, fit: BoxFit.cover);
            },
            onPageChanged: (page) {
              //print('what is value : $page : ${page % products.length}');
              setState(() {
                currentPage = page % products.length + 1;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: PageCountWidget(
                currentPage: currentPage,
                totalPage: products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageCountWidget extends StatelessWidget {
  const PageCountWidget({
    required this.currentPage,
    required this.totalPage,
    super.key,
  });
  final int currentPage;
  final int totalPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47.w,
      height: 20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.h)),
        color: Theme.of(
          context,
        ).colorScheme.inverseSurface.withAlpha((0.74 * 255).round()),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 8.w),
        child: Text(
          '$currentPage / $totalPage',
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
