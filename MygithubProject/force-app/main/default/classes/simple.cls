public class simple {
   public integer p;
   public integer t;
   public integer r;
    
    //constractor
   public simple(){
        system.debug('========calling=========');
       
    } 
    public void setprincipale(integer principale ){
        p=principale;
        
    }
    public void setrate(integer rate ){
        r=rate;
        
    }
    public void settime(integer intTime){
        t=intTime;
    }
      public integer calculateSI(){
        integer SI = (p * t* r)/100;
        system.debug('===The Simple Interest is====' + SI);
        return SI;
      }
}