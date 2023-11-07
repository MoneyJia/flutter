import 'package:dio/dio.dart';

class HTTPConfig {
  static const baseURL = "https://httpbin.org";
  static const timeout = 5000;
}

class HttpRequest {
  static final BaseOptions options = BaseOptions(
      baseUrl: HTTPConfig.baseURL, connectTimeout: HTTPConfig.timeout);
  static final Dio dio = Dio(options);

  static Future<T> request<T>(String url,
      {String method = 'get',
      Map<String, dynamic> params = const {},
      Interceptor? inter}) async {
    // 1.请求的单独配置
    final options = Options(method: method);

    // 2. 添加第一个拦截器
    Interceptor dInter = InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      // 1. 在进行任何网络请求的时候, 可以添加一个loading显示

      // 2. 很多页面的访问必须要求携带Token,那么就可以在这里判断是否有Token

      // 3. 对参数进行一些处理, 比如序列化处理等
      print("拦截了请求");
      handler.next(options); // 调用next方法继续执行请求
    }, onResponse: (Response response, ResponseInterceptorHandler handler) {
      print("拦截了响应");
      handler.next(response); // 调用next方法继续执行响应处理
    }, onError: (DioError error, ErrorInterceptorHandler handler) {
      print("拦截了错误");
      handler.next(error); // 调用next方法继续执行错误处理
    });

    List<Interceptor> inters = [dInter];
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);

    // 3.发送网络请求
    try {
      Response response =
          await dio.request<T>(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
