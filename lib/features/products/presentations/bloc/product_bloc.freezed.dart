// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDataProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDataProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDataProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllDataProduct value) getAllDataProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllDataProduct value)? getAllDataProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllDataProduct value)? getAllDataProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllDataProductCopyWith<$Res> {
  factory _$$GetAllDataProductCopyWith(
          _$GetAllDataProduct value, $Res Function(_$GetAllDataProduct) then) =
      __$$GetAllDataProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllDataProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetAllDataProduct>
    implements _$$GetAllDataProductCopyWith<$Res> {
  __$$GetAllDataProductCopyWithImpl(
      _$GetAllDataProduct _value, $Res Function(_$GetAllDataProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllDataProduct implements GetAllDataProduct {
  const _$GetAllDataProduct();

  @override
  String toString() {
    return 'ProductEvent.getAllDataProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllDataProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllDataProduct,
  }) {
    return getAllDataProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllDataProduct,
  }) {
    return getAllDataProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllDataProduct,
    required TResult orElse(),
  }) {
    if (getAllDataProduct != null) {
      return getAllDataProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllDataProduct value) getAllDataProduct,
  }) {
    return getAllDataProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllDataProduct value)? getAllDataProduct,
  }) {
    return getAllDataProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllDataProduct value)? getAllDataProduct,
    required TResult orElse(),
  }) {
    if (getAllDataProduct != null) {
      return getAllDataProduct(this);
    }
    return orElse();
  }
}

abstract class GetAllDataProduct implements ProductEvent {
  const factory GetAllDataProduct() = _$GetAllDataProduct;
}

/// @nodoc
mixin _$ProductState {
  ProductStatus get status => throw _privateConstructorUsedError;
  List<ProductModel> get listProduct => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {ProductStatus status,
      List<ProductModel> listProduct,
      String errorMessage});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listProduct = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductStatus status,
      List<ProductModel> listProduct,
      String errorMessage});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listProduct = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ProductState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.status,
      required final List<ProductModel> listProduct,
      required this.errorMessage})
      : _listProduct = listProduct;

  @override
  final ProductStatus status;
  final List<ProductModel> _listProduct;
  @override
  List<ProductModel> get listProduct {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProductState(status: $status, listProduct: $listProduct, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_listProduct), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final ProductStatus status,
      required final List<ProductModel> listProduct,
      required final String errorMessage}) = _$_ProductState;

  @override
  ProductStatus get status;
  @override
  List<ProductModel> get listProduct;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
