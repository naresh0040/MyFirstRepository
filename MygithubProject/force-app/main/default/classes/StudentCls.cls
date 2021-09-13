public class StudentCls {
 string name;
    integer age;
    string phone;
    //static variable 
    public static string college='kakatiya';
    //constractor
    
    public StudentCls(string stdname,integer stdage,string stdphone){
        system.debug('-------calling---------');
        name=stdname;
        age=stdage;
        phone=stdphone;
        
    }
    public void display(){
        system.debug('--------student name is ----------'+name);
        system.debug('--------student age is ----------'+age);
        system.debug('--------student phone is ----------'+phone);
        system.debug('--------student college is ----------'+college);
        
    }
    
    
}