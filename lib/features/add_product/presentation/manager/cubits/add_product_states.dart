class AddProductStates {}

class AddProductInitial extends AddProductStates {}

class AddProductLoading extends AddProductStates {}

class AddProductSuccess extends AddProductStates {}

class AddProductFailure extends AddProductStates 
{
  final String message;

  AddProductFailure({required this.message});
}
