part of common;

class AppScaffoldScrollable extends StatelessWidget {
  final Widget title;
  final Widget widget;
  final bool centerTitle;
  final ScrollController? controller;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final List<Widget>? actions;
  final double? elevation;

  const AppScaffoldScrollable({
    super.key,
    required this.title,
    required this.widget,
    this.centerTitle = true,
    this.controller,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.actions,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        centerTitle: centerTitle,
        elevation: elevation,
        actions: actions,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: widget,
        ),
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
