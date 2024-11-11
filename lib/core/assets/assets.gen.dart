/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/all_categories.svg
  SvgGenImage get allCategories =>
      const SvgGenImage('assets/icons/all_categories.svg');

  /// File path: assets/icons/cash.svg
  SvgGenImage get cash => const SvgGenImage('assets/icons/cash.svg');

  /// File path: assets/icons/dashboard.svg
  SvgGenImage get dashboard => const SvgGenImage('assets/icons/dashboard.svg');

  /// File path: assets/icons/debit.svg
  SvgGenImage get debit => const SvgGenImage('assets/icons/debit.svg');

  /// File path: assets/icons/delete.svg
  SvgGenImage get delete => const SvgGenImage('assets/icons/delete.svg');

  /// File path: assets/icons/done.svg
  SvgGenImage get done => const SvgGenImage('assets/icons/done.svg');

  /// File path: assets/icons/drink.svg
  SvgGenImage get drink => const SvgGenImage('assets/icons/drink.svg');

  /// File path: assets/icons/food.svg
  SvgGenImage get food => const SvgGenImage('assets/icons/food.svg');

  /// File path: assets/icons/history.svg
  SvgGenImage get history => const SvgGenImage('assets/icons/history.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/image.svg
  SvgGenImage get image => const SvgGenImage('assets/icons/image.svg');

  /// File path: assets/icons/orders.svg
  SvgGenImage get orders => const SvgGenImage('assets/icons/orders.svg');

  /// File path: assets/icons/payments.svg
  SvgGenImage get payments => const SvgGenImage('assets/icons/payments.svg');

  /// File path: assets/icons/print.svg
  SvgGenImage get print => const SvgGenImage('assets/icons/print.svg');

  /// File path: assets/icons/qr_code.svg
  SvgGenImage get qrCode => const SvgGenImage('assets/icons/qr_code.svg');

  /// File path: assets/icons/snack.svg
  SvgGenImage get snack => const SvgGenImage('assets/icons/snack.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        allCategories,
        cash,
        dashboard,
        debit,
        delete,
        done,
        drink,
        food,
        history,
        home,
        image,
        orders,
        payments,
        print,
        qrCode,
        snack
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/f1.jpeg
  AssetGenImage get f1 => const AssetGenImage('assets/images/f1.jpeg');

  /// File path: assets/images/f2.jpeg
  AssetGenImage get f2 => const AssetGenImage('assets/images/f2.jpeg');

  /// File path: assets/images/f3.jpeg
  AssetGenImage get f3 => const AssetGenImage('assets/images/f3.jpeg');

  /// File path: assets/images/f4.jpeg
  AssetGenImage get f4 => const AssetGenImage('assets/images/f4.jpeg');

  /// File path: assets/images/f5.jpeg
  AssetGenImage get f5 => const AssetGenImage('assets/images/f5.jpeg');

  /// File path: assets/images/f6.jpeg
  AssetGenImage get f6 => const AssetGenImage('assets/images/f6.jpeg');

  /// File path: assets/images/f7.jpeg
  AssetGenImage get f7 => const AssetGenImage('assets/images/f7.jpeg');

  /// File path: assets/images/f8.jpeg
  AssetGenImage get f8 => const AssetGenImage('assets/images/f8.jpeg');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/manage_printer.png
  AssetGenImage get managePrinter =>
      const AssetGenImage('assets/images/manage_printer.png');

  /// File path: assets/images/manage_printerx.png
  AssetGenImage get managePrinterx =>
      const AssetGenImage('assets/images/manage_printerx.png');

  /// File path: assets/images/manage_product.png
  AssetGenImage get manageProduct =>
      const AssetGenImage('assets/images/manage_product.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        f1,
        f2,
        f3,
        f4,
        f5,
        f6,
        f7,
        f8,
        logo,
        managePrinter,
        managePrinterx,
        manageProduct
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
