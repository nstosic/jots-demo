import 'package:flutter/material.dart';
import 'package:jots_demo/ui/base/base_viewmodel.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView({
    required this.builder,
    required this.viewModel,
    this.child,
    Key? key,
  }) : super(key: key);

  final Widget Function(BuildContext, T, Widget?) builder;
  final T viewModel;
  final Widget? child;

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(_onViewModelDataChanged);
  }

  void _onViewModelDataChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      widget.viewModel,
      widget.child,
    );
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(_onViewModelDataChanged);
    widget.viewModel.dispose();
    super.dispose();
  }
}
