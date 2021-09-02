import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/shared/base/base_store.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/custom_snack_bar.dart';

class AppScaffold extends StatefulWidget {
  final String? title;
  final Widget body;
  final bool isScrollable;
  final bool padding;
  final List<Widget>? actions;
  final BaseStore? controller;

  const AppScaffold({
    Key? key,
    required this.body,
    this.title,
    this.isScrollable = true,
    this.padding = true,
    this.actions,
    this.controller,
  });

  static ScaffoldState of(BuildContext context) {
    final result = context.findAncestorStateOfType<ScaffoldState>();
    if (result != null) return result;
    throw Exception('Nenhum AppScaffold foi encontrado');
  }

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  ReactionDisposer? _disposer;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _disposer = reaction<String?>(
        (_) => widget.controller!.errorMessage,
        (errorMessage) {
          if (errorMessage == null) return;
          showFlash(
            context: context,
            duration: const Duration(seconds: 3),
            builder: (context, controller) => CustomSnackBar.error(
              message: errorMessage,
              controller: controller,
            ),
          );
        },
        equals: (_, __) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildScaffoldWidget();
  }

  Scaffold _buildScaffoldWidget() {
    return Scaffold(
      appBar: widget.title != null ? _buildAppBar() : null,
      body: widget.isScrollable ? SingleChildScrollView(child: _buildBody()) : _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        widget.title!,
        style: const TextStyle(
          color: AppColors.greyDark,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      actions: widget.actions,
      iconTheme: const IconThemeData(color: AppColors.greyDark),
    );
  }

  Widget _buildBody() {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return widget.padding
        ? Padding(
            padding: EdgeInsets.only(
              left: Constants.defaultPadding,
              right: Constants.defaultPadding,
              top: statusBarHeight,
            ),
            child: widget.body,
          )
        : widget.body;
  }

  @override
  void dispose() {
    _disposer?.call();
    super.dispose();
  }
}
