public class DeActivateUsersQueueable implements Queueable {
    
    List<User> deactivateUserList;
    
    List<User> activateUserList;
    
    public DeActivateUsersQueueable(List<User> users,List<User> ActivateUsers){
        deactivateUserList = users;
        activateUserList = ActivateUsers;
    }
    
    public void execute(QueueableContext qc){
        
        for(User u : deactivateUserList ){
            // Check if the User is Active
            if(u.isActive == True){
                u.isActive = false;
            }
        }
        
        update deactivateUserList;
        
        
        
       // Chain the Job by Calling another Queueable Class
        // Create an Instance of the Queuable Class that you want to call
        ActivateUsersQueueable queueable = new ActivateUsersQueueable(activateUserList);
        // Call the Second QueuebLe Class
	     system.enqueueJob(queueable);       
        
    }
    

}