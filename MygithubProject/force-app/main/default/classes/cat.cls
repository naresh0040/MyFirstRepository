public class cat 
{
// added line to test git commit.
    private string name;
    private integer size ;
    
    public void setname(string n)
    {
        name=n;
    }
    public void setsize(integer s)
    {
        if(s<=0)
        {
            system.debug('you cant set wrong value to my cat ');
            size=10;
            
        }
        else
        {
            size=s;
        }
    }
    
    public void display()
    {
        system.debug('name of the cat'+name);
        system.debug('size of the cat '+size);
        
    }
    
}