const String EMPTY = "";
const int ZERO = 0;

extension NotNullString on String?{
  String orEmpty(){
    if(this == null)
    {
      return EMPTY;
    }else{
      return this!;
    }
  }
}
// integer
extension NotNullInteger on int?{
  int orZero(){
    if(this == null)
    {
      return ZERO;
    }else{
      return this!;
    }
  }
}
// dynamic
extension NotNullDynamic on dynamic?{
  dynamic orEmpty(){
    if(this == null)
    {
      return EMPTY;
    }else{
      return this!;
    }
  }
}