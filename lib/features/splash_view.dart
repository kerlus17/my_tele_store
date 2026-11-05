import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';

const _bgColor = Color(0xFF0E1A3A);
const _pink = Color(0xFFD4537E);
const _pinkDark = Color(0xFF993556);
const _pinkLight = Color(0xFFED93B1);
const _blue = Color(0xFF1E3F86);
const _blueDark = Color(0xFF152B5E);
const _blueDot = Color(0xFF2C4A8C);
const _textSoft = Color(0xFFB5D4F4);

const double _skew = -0.14; // ميل الأشكال الكبيرة
const double _tileSkew = -0.1; // ميل مربع اللوجو

class _SplashPageData {
  const _SplashPageData({
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;
}

// غيّر النصوص والأيقونات هنا براحتك
const _pages = <_SplashPageData>[
  _SplashPageData(
    icon: Icons.shopping_bag_outlined,
    title: 'Tele Store',
    description: 'Everything you need, in one place',
  ),
  _SplashPageData(
    icon: Icons.local_offer_outlined,
    title: 'Best offers daily',
    description: 'Discover new discounts on top products every day',
  ),
  _SplashPageData(
    icon: Icons.local_shipping_outlined,
    title: 'Fast delivery',
    description: 'Order now and track it until it reaches your door',
  ),
];

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final PageController _controller = PageController();
  Timer? _timer;
  int _index = 0;

  bool get _isLast => _index == _pages.length - 1;

  @override
  void initState() {
    super.initState();
    // بعد 6 ثواني يروح للصفحة المناسبة أوتوماتيك
    _timer = Timer(const Duration(seconds: 6), _goNext);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  /// بيحدد الصفحة التالية من الـ SharedPref
  String _nextRoute() {
    final token = SharedPref().getString(prefKeys.accessToken);
    if (token == null) return AppRoutes.login;

    return SharedPref().getString(prefKeys.userRole) == 'admin'
        ? AppRoutes.homeAdmin
        : AppRoutes.homeCustomer;
  }

  void _goNext() {
    _timer?.cancel(); // عشان ميتنفذش مرتين (مثلاً لو دوس Get started)
    if (!mounted) return;
    // بيمسح السبلاش من الـ stack فمفيش رجوع ليه
    Navigator.of(context).pushNamedAndRemoveUntil(
      _nextRoute(),
      (route) => false,
    );
  }

  void _goTo(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutCubic,
    );
  }

  void _onNext() {
    if (_isLast) {
      _goNext();
    } else {
      _goTo(_index + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      body: Stack(
        children: [
          // ===== الأشكال المايلة في الخلفية =====
          _SkewedShape(
            top: -50.h,
            right: -70.w,
            width: 230.w,
            height: 200.h,
            color: _pink,
          ),
          _SkewedShape(
            top: 105.h,
            right: -100.w,
            width: 210.w,
            height: 90.h,
            color: _pinkDark,
          ),
          _SkewedShape(
            bottom: -60.h,
            left: -80.w,
            width: 270.w,
            height: 210.h,
            color: _blue,
            borderColor: _pink,
          ),
          _SkewedShape(
            bottom: 150.h,
            left: -90.w,
            width: 180.w,
            height: 70.h,
            color: _blueDark,
          ),

          // ===== المحتوى =====
          SafeArea(
            child: Column(
              children: [
                // زرار Skip
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.w, top: 8.h),
                    child: Visibility(
                      visible: !_isLast,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: TextButton(
                        onPressed: () => _goTo(_pages.length - 1),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: _textSoft,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // الصفحات (بيتقلب بالسحب)
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _pages.length,
                    onPageChanged: (i) => setState(() => _index = i),
                    itemBuilder: (context, i) => _SplashPage(data: _pages[i]),
                  ),
                ),

                // النقط الثلاثة (بتتحرك وتتدوس)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_pages.length, (i) {
                    final active = i == _index;
                    return GestureDetector(
                      onTap: () => _goTo(i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                        width: active ? 28.w : 15.w,
                        height: 4.h,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: active ? _pinkLight : _blueDot,
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 24.h),

                // زرار Next / Get started
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: _onNext,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _pink,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        child: Text(
                          _isLast ? 'Get started' : 'Next',
                          key: ValueKey(_isLast),
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// صفحة واحدة: لوجو مايل + عنوان + وصف
class _SplashPage extends StatelessWidget {
  const _SplashPage({required this.data});
  final _SplashPageData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 96.r,
            height: 96.r,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.skewY(_tileSkew),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _blue,
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(color: _pinkLight),
                      ),
                    ),
                  ),
                ),
                Icon(data.icon, size: 44.r, color: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _textSoft,
              fontSize: 13.sp,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

/// شكل متوازي أضلاع للديكور
class _SkewedShape extends StatelessWidget {
  const _SkewedShape({
    required this.width,
    required this.height,
    required this.color,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.borderColor,
  });

  final double width;
  final double height;
  final Color color;
  final Color? borderColor;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.skewY(_skew),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(28),
            border: borderColor == null
                ? null
                : Border.all(color: borderColor!, width: 0.5),
          ),
        ),
      ),
    );
  }
}