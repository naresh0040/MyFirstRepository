public class Dogp {
    private string name;
    private integer age;
    public void setname(string n)
    {
        name=n;
        
    }
    public void setage(integer a)
    {
      age=a;  
    }
    public string getname(){
        return name;
        
    }
    public integer getage(){
        return age;
    }
    
    
    public void bark()
    {
     system.debug('hello');   
    }
    
    

}