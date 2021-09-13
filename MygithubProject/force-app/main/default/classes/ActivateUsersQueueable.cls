public class ActivateUsersQueueable implements Queueable{

    list<User> activateUserList;
    public ActivateUsersQueueable(list<User> users){
        activateUserList = users;
        
    }
    
    public void execute(QueueableContext qc){
        
        for(User u:activateUserList ){
            if(u.IsActive == false){
              u.IsActive = True;
              }
        }
        update activateUserList;
    }    
    
    
}