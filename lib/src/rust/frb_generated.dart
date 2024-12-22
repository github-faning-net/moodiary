// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/compress.dart';
import 'api/constants.dart';
import 'api/font.dart';
import 'api/kmp.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'frb_generated.io.dart' if (dart.library.js_interop) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Initialize flutter_rust_bridge in mock mode.
  /// No libraries for FFI are loaded.
  static void initMock({
    required RustLibApi api,
  }) {
    instance.initMockImpl(
      api: api,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor => RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor => RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {}

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig => kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.7.0';

  @override
  int get rustContentHash => -1743857995;

  static const kDefaultExternalLibraryLoaderConfig = ExternalLibraryLoaderConfig(
    stem: 'rust_lib_mood_diary',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<String?> crateApiFontFontReaderGetFontNameFromTtf({required String ttfFilePath});

  Future<Uint8List> crateApiCompressImageCompressContain({required String filePath,
    CompressFormat? compressFormat,
    int? maxWidth,
    int? maxHeight,
    int? quality});

  Future<List<String>> crateApiKmpKmpFindMatches({required String text, required List<String> patterns});

  Future<String> crateApiKmpKmpReplaceWithKmp({required String text, required Map<String, String> replacements});

  Future<Uint64List> crateApiKmpBuildPrefixTable({required List<String> pattern});

  Future<Uint8List> crateApiCompressCompress(
      {required DynamicImage img,
      required int dstHeight,
      required int dstWidth,
      required CompressFormat compressFormat,
      required int quality});

  Future<Uint64List> crateApiKmpKmpSearch({required String text, required String pattern});

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_DynamicImage;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_DynamicImage;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_DynamicImagePtr;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_FontReader;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_FontReader;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_FontReaderPtr;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_ImageCompress;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_ImageCompress;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_ImageCompressPtr;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_Kmp;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_Kmp;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_KmpPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<String?> crateApiFontFontReaderGetFontNameFromTtf({required String ttfFilePath}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(ttfFilePath, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 1, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_String,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiFontFontReaderGetFontNameFromTtfConstMeta,
      argValues: [ttfFilePath],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiFontFontReaderGetFontNameFromTtfConstMeta => const TaskConstMeta(
        debugName: "FontReader_get_font_name_from_ttf",
        argNames: ["ttfFilePath"],
      );

  @override
  Future<Uint8List> crateApiCompressImageCompressContain({required String filePath,
    CompressFormat? compressFormat,
    int? maxWidth,
    int? maxHeight,
    int? quality}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(filePath, serializer);
        sse_encode_opt_box_autoadd_compress_format(compressFormat, serializer);
        sse_encode_opt_box_autoadd_i_32(maxWidth, serializer);
        sse_encode_opt_box_autoadd_i_32(maxHeight, serializer);
        sse_encode_opt_box_autoadd_u_8(quality, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 2, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_prim_u_8_strict,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiCompressImageCompressContainConstMeta,
      argValues: [filePath, compressFormat, maxWidth, maxHeight, quality],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiCompressImageCompressContainConstMeta => const TaskConstMeta(
        debugName: "ImageCompress_contain",
        argNames: ["filePath", "compressFormat", "maxWidth", "maxHeight", "quality"],
      );

  @override
  Future<List<String>> crateApiKmpKmpFindMatches({required String text, required List<String> patterns}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(text, serializer);
        sse_encode_list_String(patterns, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_String,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiKmpKmpFindMatchesConstMeta,
      argValues: [text, patterns],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiKmpKmpFindMatchesConstMeta => const TaskConstMeta(
        debugName: "Kmp_find_matches",
        argNames: ["text", "patterns"],
      );

  @override
  Future<String> crateApiKmpKmpReplaceWithKmp({required String text, required Map<String, String> replacements}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(text, serializer);
        sse_encode_Map_String_String(replacements, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_String,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiKmpKmpReplaceWithKmpConstMeta,
      argValues: [text, replacements],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiKmpKmpReplaceWithKmpConstMeta => const TaskConstMeta(
        debugName: "Kmp_replace_with_kmp",
        argNames: ["text", "replacements"],
      );

  @override
  Future<Uint64List> crateApiKmpBuildPrefixTable({required List<String> pattern}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_Char(pattern, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_prim_usize_strict,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiKmpBuildPrefixTableConstMeta,
      argValues: [pattern],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiKmpBuildPrefixTableConstMeta => const TaskConstMeta(
        debugName: "build_prefix_table",
        argNames: ["pattern"],
      );

  @override
  Future<Uint8List> crateApiCompressCompress(
      {required DynamicImage img,
      required int dstHeight,
      required int dstWidth,
      required CompressFormat compressFormat,
      required int quality}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(img, serializer);
        sse_encode_u_32(dstHeight, serializer);
        sse_encode_u_32(dstWidth, serializer);
        sse_encode_compress_format(compressFormat, serializer);
        sse_encode_u_8(quality, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 6, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_prim_u_8_strict,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiCompressCompressConstMeta,
      argValues: [img, dstHeight, dstWidth, compressFormat, quality],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiCompressCompressConstMeta => const TaskConstMeta(
        debugName: "compress",
        argNames: ["img", "dstHeight", "dstWidth", "compressFormat", "quality"],
      );

  @override
  Future<Uint64List> crateApiKmpKmpSearch({required String text, required String pattern}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(text, serializer);
        sse_encode_String(pattern, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 7, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_prim_usize_strict,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiKmpKmpSearchConstMeta,
      argValues: [text, pattern],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiKmpKmpSearchConstMeta => const TaskConstMeta(
        debugName: "kmp_search",
        argNames: ["text", "pattern"],
      );

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_DynamicImage =>
      wire.rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_DynamicImage =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_FontReader =>
      wire.rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_FontReader =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_ImageCompress =>
      wire.rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_ImageCompress =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress;

  RustArcIncrementStrongCountFnType get rust_arc_increment_strong_count_Kmp =>
      wire.rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp;

  RustArcDecrementStrongCountFnType get rust_arc_decrement_strong_count_Kmp =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return AnyhowException(raw as String);
  }

  @protected
  FontReader dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return FontReaderImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  ImageCompress dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return ImageCompressImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  Kmp dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return KmpImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  DynamicImage dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return DynamicImageImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  String dco_decode_Char(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return String.fromCharCode(raw);
  }

  @protected
  Map<String, String> dco_decode_Map_String_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return Map.fromEntries(dco_decode_list_record_string_string(raw).map((e) => MapEntry(e.$1, e.$2)));
  }

  @protected
  DynamicImage dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return DynamicImageImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  FontReader dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return FontReaderImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  ImageCompress dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return ImageCompressImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  Kmp dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return KmpImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  CompressFormat dco_decode_box_autoadd_compress_format(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_compress_format(raw);
  }

  @protected
  int dco_decode_box_autoadd_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  int dco_decode_box_autoadd_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  CompressFormat dco_decode_compress_format(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return CompressFormat.values[raw as int];
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  List<String> dco_decode_list_Char(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_Char).toList();
  }

  @protected
  List<String> dco_decode_list_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_String).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  Uint64List dco_decode_list_prim_usize_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint64List;
  }

  @protected
  List<(String, String)> dco_decode_list_record_string_string(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_record_string_string).toList();
  }

  @protected
  String? dco_decode_opt_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_String(raw);
  }

  @protected
  CompressFormat? dco_decode_opt_box_autoadd_compress_format(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_compress_format(raw);
  }

  @protected
  int? dco_decode_opt_box_autoadd_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_i_32(raw);
  }

  @protected
  int? dco_decode_opt_box_autoadd_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_u_8(raw);
  }

  @protected
  (String, String) dco_decode_record_string_string(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2) {
      throw Exception('Expected 2 elements, got ${arr.length}');
    }
    return (
      dco_decode_String(arr[0]),
      dco_decode_String(arr[1]),
    );
  }

  @protected
  int dco_decode_u_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  BigInt dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeU64(raw);
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  FontReader sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return FontReaderImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  ImageCompress sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return ImageCompressImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  Kmp sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return KmpImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  DynamicImage sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return DynamicImageImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  String sse_decode_Char(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return inner;
  }

  @protected
  Map<String, String> sse_decode_Map_String_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_record_string_string(deserializer);
    return Map.fromEntries(inner.map((e) => MapEntry(e.$1, e.$2)));
  }

  @protected
  DynamicImage sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return DynamicImageImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  FontReader sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return FontReaderImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  ImageCompress sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return ImageCompressImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  Kmp sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return KmpImpl.frbInternalSseDecode(sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  CompressFormat sse_decode_box_autoadd_compress_format(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_compress_format(deserializer));
  }

  @protected
  int sse_decode_box_autoadd_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_i_32(deserializer));
  }

  @protected
  int sse_decode_box_autoadd_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_u_8(deserializer));
  }

  @protected
  CompressFormat sse_decode_compress_format(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return CompressFormat.values[inner];
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  List<String> sse_decode_list_Char(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_Char(deserializer));
    }
    return ans_;
  }

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_String(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  Uint64List sse_decode_list_prim_usize_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint64List(len_);
  }

  @protected
  List<(String, String)> sse_decode_list_record_string_string(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <(String, String)>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_record_string_string(deserializer));
    }
    return ans_;
  }

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  CompressFormat? sse_decode_opt_box_autoadd_compress_format(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_compress_format(deserializer));
    } else {
      return null;
    }
  }

  @protected
  int? sse_decode_opt_box_autoadd_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_i_32(deserializer));
    } else {
      return null;
    }
  }

  @protected
  int? sse_decode_opt_box_autoadd_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_u_8(deserializer));
    } else {
      return null;
    }
  }

  @protected
  (String, String) sse_decode_record_string_string(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_field0 = sse_decode_String(deserializer);
    var var_field1 = sse_decode_String(deserializer);
    return (var_field0, var_field1);
  }

  @protected
  int sse_decode_u_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint32();
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getBigUint64();
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  void sse_encode_AnyhowException(AnyhowException self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.message, serializer);
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader(
      FontReader self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as FontReaderImpl).frbInternalSseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress(
      ImageCompress self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as ImageCompressImpl).frbInternalSseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp(
      Kmp self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as KmpImpl).frbInternalSseEncode(move: true), serializer);
  }

  @protected
  void sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(
      DynamicImage self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as DynamicImageImpl).frbInternalSseEncode(move: false), serializer);
  }

  @protected
  void sse_encode_Char(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self, serializer);
  }

  @protected
  void sse_encode_Map_String_String(Map<String, String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_record_string_string(self.entries.map((e) => (e.key, e.value)).toList(), serializer);
  }

  @protected
  void sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDynamicImage(
      DynamicImage self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as DynamicImageImpl).frbInternalSseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerFontReader(
      FontReader self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as FontReaderImpl).frbInternalSseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerImageCompress(
      ImageCompress self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as ImageCompressImpl).frbInternalSseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerKmp(
      Kmp self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize((self as KmpImpl).frbInternalSseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_box_autoadd_compress_format(CompressFormat self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_compress_format(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_8(self, serializer);
  }

  @protected
  void sse_encode_compress_format(CompressFormat self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_list_Char(List<String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_Char(item, serializer);
    }
  }

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_String(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_list_prim_usize_strict(Uint64List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint64List(self);
  }

  @protected
  void sse_encode_list_record_string_string(List<(String, String)> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_record_string_string(item, serializer);
    }
  }

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_compress_format(CompressFormat? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_compress_format(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_i_32(int? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_i_32(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_u_8(int? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_u_8(self, serializer);
    }
  }

  @protected
  void sse_encode_record_string_string((String, String) self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.$1, serializer);
    sse_encode_String(self.$2, serializer);
  }

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint32(self);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putBigUint64(self);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}

@sealed
class DynamicImageImpl extends RustOpaque implements DynamicImage {
  // Not to be used by end users
  DynamicImageImpl.frbInternalDcoDecode(List<dynamic> wire) : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  DynamicImageImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_DynamicImage,
    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_DynamicImage,
    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_DynamicImagePtr,
  );
}

@sealed
class FontReaderImpl extends RustOpaque implements FontReader {
  // Not to be used by end users
  FontReaderImpl.frbInternalDcoDecode(List<dynamic> wire) : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  FontReaderImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_FontReader,
    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_FontReader,
    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_FontReaderPtr,
  );
}

@sealed
class ImageCompressImpl extends RustOpaque implements ImageCompress {
  // Not to be used by end users
  ImageCompressImpl.frbInternalDcoDecode(List<dynamic> wire) : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  ImageCompressImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_ImageCompress,
    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_ImageCompress,
    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_ImageCompressPtr,
  );
}

@sealed
class KmpImpl extends RustOpaque implements Kmp {
  // Not to be used by end users
  KmpImpl.frbInternalDcoDecode(List<dynamic> wire) : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  KmpImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api.rust_arc_increment_strong_count_Kmp,
    rustArcDecrementStrongCount: RustLib.instance.api.rust_arc_decrement_strong_count_Kmp,
    rustArcDecrementStrongCountPtr: RustLib.instance.api.rust_arc_decrement_strong_count_KmpPtr,
  );
}
