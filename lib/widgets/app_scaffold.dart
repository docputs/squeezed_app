import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/shared/base/base_store.dart';
import 'package:squeezed_app/widgets/custom_snack_bar.dart';

class AppScaffold extends StatefulWidget {
  final String? title;
  final Widget body;
  final bool isScrollable;
  final bool hasPadding;
  final List<Widget>? actions;
  final BaseStore? controller;
  final Widget? customTitle;

  const AppScaffold({
    Key? key,
    required this.body,
    this.title,
    this.isScrollable = true,
    this.hasPadding = true,
    this.actions,
    this.controller,
    this.customTitle,
  }) : assert(title == null || customTitle == null);

  static ScaffoldState of(BuildContext context) {
    final result = context.findAncestorStateOfType<ScaffoldState>();
    if (result != null) return result;
    throw Exception('No AppScaffold found');
  }

  bool get hasTitle => title != null || customTitle != null;

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  ReactionDisposer? _disposer;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _createErrorListener();
    }
  }

  void _createErrorListener() {
    _disposer = reaction<String?>(
      (_) => widget.controller!.errorMessage,
      (errorMessage) {
        if (errorMessage == null) return;
        _showCustomSnackbarWithErrorMessage(errorMessage);
      },
      equals: (_, __) => false,
    );
  }

  Future<void> _showCustomSnackbarWithErrorMessage(String message) {
    return showFlash(
      context: context,
      duration: const Duration(seconds: 3),
      builder: (context, controller) => CustomSnackBar.error(
        message: message,
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScaffoldWidget();
  }

  Scaffold _buildScaffoldWidget() {
    final pageSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: widget.hasTitle ? _buildAppBar() : null,
      body: widget.isScrollable
          ? SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: pageSize.width,
                  maxHeight: pageSize.height,
                ),
                child: _buildBody(),
              ),
            )
          : _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: widget.customTitle ??
          Text(
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
    return widget.hasPadding
        ? Padding(
            padding: EdgeInsets.only(
              left: Paddings.small,
              right: Paddings.small,
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
