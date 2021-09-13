trigger emailalart on Account (before insert,before update) {
    for(account a:trigger.new){
    if(trigger.isinsert&& a.AccountNumber==null)
    a.adderror('AccountNumber reqvired');
        else if(trigger.isupdate&&a.AccountNumber==null)
            a.adderror('nnnnnnnnnnnn');
    }

}