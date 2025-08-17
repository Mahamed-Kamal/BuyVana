import 'package:bloc/bloc.dart';
import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';
import 'package:buy_vana/features/products/data/models/product/products.dart';
import 'package:buy_vana/features/products/domin/usecases/add_product_to_cart_use_case.dart';
import 'package:buy_vana/features/products/domin/usecases/products_use_case.dart';
import 'package:injectable/injectable.dart';
part 'product_event.dart';
part 'product_state.dart';


@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductsUseCase productsUseCase;
  final AddProductToCartUseCase addProductToCartUseCase;

  ProductBloc(this.productsUseCase, this.addProductToCartUseCase) : super(ProductInitial()) {

    on<ProductEvent>((event, emit) async {
      emit(state.copyWith(productsRequestState: RequestState.loading));
       var response = await productsUseCase.call();
      emit(state.copyWith(productsRequestState: RequestState.loaded,products:response));
    });

    on<GetAddProductToCartEvent>((event, emit) async {
      emit(state.copyWith(addProductToCartRequestState: RequestState.loading));
      var response = await  addProductToCartUseCase.call(productId:event.productId);
      emit(state.copyWith(addProductToCartRequestState: RequestState.loaded,addProductToCartModel: response));
    });
  }
}
