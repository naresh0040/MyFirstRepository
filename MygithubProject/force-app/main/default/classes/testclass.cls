@isTest
public class testclass {

    Public static TestMethod void test1(){
        
        simple obj = new simple();
      
            obj.setprincipale(10);
        obj.setrate(20);
        obj.settime(50);
         obj.calculateSI();
                integer SI = (obj.p * obj.t* obj.r)/100;
        System.assertEquals(100,SI);

    }
}