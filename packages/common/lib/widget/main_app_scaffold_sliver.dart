part of common;

class MainAppScaffoldSliver extends StatelessWidget {
  final List<Widget> slivers;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final ScrollController? controller;
  final VoidCallback? onClickLeading;
  final VoidCallback? onClickSearch;
  final VoidCallback? onClickCart;
  final List<Widget>? actions;
  final bool showDrawer;

  const MainAppScaffoldSliver({
    super.key,
    required this.slivers,
    this.onClickLeading,
    this.onClickSearch,
    this.onClickCart,
    this.controller,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.actions,
    this.showDrawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localizations('appName'),
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: actions,
      ),
      body: SafeArea(
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          controller: controller,
          slivers: slivers,
        ),
      ),
      drawer: showDrawer ? const MainAppDrawer() : null,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
