part of mcnmr_wrap_horizontal_listview;

class WrapHorizontalListView extends StatefulWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) builder;
  final CrossAxisAlignment alignment;

  WrapHorizontalListView({@required this.itemCount,
    @required this.builder,
    this.alignment = CrossAxisAlignment.start
  });

  @override
  _WrapHorizontalListViewState createState() => _WrapHorizontalListViewState();
}

class _WrapHorizontalListViewState extends State<WrapHorizontalListView> {

  var children = <Widget>[];

  @override
  void initState() {
    super.initState();

    var children = <Widget>[];
    for(int i=0; i < widget.itemCount; i++){
      children.add(widget.builder(context, i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: widget.alignment,
        children: children,
      ),
    );
  }
}
