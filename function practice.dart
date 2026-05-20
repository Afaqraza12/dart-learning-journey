(String , bool , String ) Function(String , int ) createPipeLine({required String serviceName,int maxLimits= 100,}){
  
 return (String action , int curentCount){
   bool isAlert= curentCount > maxLimits;
   
   return ("$serviceName runiing $action" , isAlert , "[Limits: $maxLimits]");
   
 };
}

void main (){
             
           var pipeline = createPipeLine(
    serviceName: "AuthService",
    maxLimit: 50,
  );  
              var result = pipeline("Login", 65);

  print(result.$1);
  print(result.$2);
  print(result.$3);
             
             
             }
