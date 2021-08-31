import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/res/app_colors.dart';
import 'package:squeezed_app/res/constants.dart';

class AppScaffold<T extends Object> extends StatefulWidget {
  final String? title;
  final Widget body;
  final bool isScrollable;
  final bool padding;
  final List<Widget>? actions;
  final Store? controller;

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
  @override
  Widget build(BuildContext context) {
    return _buildScaffoldWidget();
  }

  Scaffold _buildScaffoldWidget() {
    return Scaffold(
      appBar: _buildAppBar(),
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
            padding: EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding,
              vertical: statusBarHeight,
            ),
            child: widget.body,
          )
        : widget.body;
  }
}
