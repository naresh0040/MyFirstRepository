trigger HelloWorldTrigger on Account (before insert) {
    for(Account a:trigger.new){
        a.Description='New description';
        system.debug('------------');
            
    }
}