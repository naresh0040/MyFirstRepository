trigger PreventAccountDeactivation on Account (before update) {
    
    Map<Id,Account> accswithClosedopps = new Map<Id,Account>([SELECT Id,Name,(SELECT Id FROM Opportunities WHERE Stagename = 'Closed Won') FROM Account WHERE Id IN :Trigger.new]);
    
    if(trigger.isBefore && trigger.isUpdate){
        for(Account acc : Trigger.new){
            // Check if Account is deactivated and account has any closed won Opportunities.
            if( (acc.Active__c == 'No' && Trigger.oldMap.get(acc.id).Active__c == 'Yes') && accswithClosedopps.get(acc.id).Opportunities.size() > 0){
                  acc.Active__c.addError('Account with Closed won Opportunities cannot be deactivated');
            }
        }
    }

}