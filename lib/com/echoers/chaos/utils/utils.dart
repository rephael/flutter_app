import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {

  /// 显示shortTaost
  static void showShortToast(String msg){
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT
      );
  }

  ///显示longToast
  static void showLongToast(String msg) {
      Fluttertoast.showToast( 
        msg: msg,
        toastLength: Toast.LENGTH_LONG
      );
  }

  /// 保存字符串
  static void saveSharedPrefString(String key, String data) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(key, data);
  }

  /// 获取保存的字符串
  static Future<String> getSharedPrefString(String key) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(key);
  }

}