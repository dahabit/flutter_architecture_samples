import 'package:built_redux_sample/containers/typedefs.dart';
import 'package:built_redux_sample/models/models.dart';
import 'package:built_redux_sample/actions/actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class ActiveTab
    extends StoreConnector<AppState, AppStateBuilder, AppActions, AppTab> {
  final ViewModelBuilder<AppTab> builder;

  ActiveTab({Key key, @required this.builder}) : super(key: key);

  @override
  AppTab connect(AppState state) => state.activeTab;

  @override
  Widget build(BuildContext context, AppTab activeTab, AppActions actions) {
    return builder(context, activeTab);
  }
}
