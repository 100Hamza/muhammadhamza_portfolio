import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/drawer.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/desktop_view.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/mobile_view.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'Layout/responsive_body.dart';

class ResponsiveView extends StatefulWidget {
  const ResponsiveView({super.key});

  @override
  State<ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  double _zoomLevel = 1.0;
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController()
    ..addListener(() {
      setState(() {
        if(_scrollController.offset >= 300)
          {
            _showBackToTopButton = true;
          }
        else
          {
            _showBackToTopButton = false;
          }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop()
  {
    _scrollController.animateTo(0, duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: ResponsiveBody.isDesktop(context) ? null : AppBar(elevation: 0.0,),
      drawer: ResponsiveBody.isDesktop(context) ? null : MobileNavBar(context: context).mobDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppThemeData.backgroundGrey,
          child: const ResponsiveBody(
              mobile: MobileView(),
              tablet:MobileView(),
              desktop: DesktopView()
          ),
        ),
      ),
      floatingActionButton: _showBackToTopButton ? FloatingActionButton(
        tooltip: 'Go to Top',
        backgroundColor: AppThemeData.buttonPrimary,
        foregroundColor: AppThemeData.iconSecondary,
        onPressed: _scrollToTop, child: const Icon(Icons.arrow_upward_rounded),): null,
    );
  }
}
