public class triggerclass{
  
  public static void check_opp(list<opportunity> ops){
  Double total_amount=0;
  
  for(opportunity o1:[SELECT Amount FROM opportunity where createdDate=TODAY AND
                                        createdbyID=:userINFO.getuserID()]){
                                        total_amount+=o1.Amount;
                                        }
  for(opportunity o2:ops)   {
  total_amount+=o2.amount;
  
  if(total_amount>100000)
  o2.addError('you have exceeded daily limt');
  
  }                                   
  }
}