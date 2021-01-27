import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'dart:convert';

import 'Verify_payment.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebView example'),
          // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
          actions: <Widget>[
            NavigationControls(_controller.future),
          ],
        ),
        body: WebView(
          initialUrl: 'https://flutter.dev',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoBack()) {
                        await controller.goBack();
                      } else {
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text("No back history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoForward()) {
                        await controller.goForward();
                      } else {
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("No forward history item")),
                        );
                        return;
                      }
                    },
            ),
            // IconButton(
            //   icon: const Icon(Icons.check),
            //    onPressed: Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => Verify_payment()),
            //           ),
            //    //!webViewReady
            //   //     ? null
            //   //     : () {
            //   //         //  Verify_payment
            //   //         Navigator.push(
            //   //           context,
            //   //           MaterialPageRoute(
            //   //               builder: (context) => Verify_payment()),
            //   //         );
            //   //       },
            // ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verify_payment()),
                  );
                },
                child: Icon(Icons.check)),
          ],
        );
      },
    );
  }
}
