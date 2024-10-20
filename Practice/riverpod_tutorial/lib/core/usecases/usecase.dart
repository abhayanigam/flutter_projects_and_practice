// This defines a base use case class that the domain layer will use.
abstract class UseCase<Type, Params>{
  Future<Type> call (Params params);
}