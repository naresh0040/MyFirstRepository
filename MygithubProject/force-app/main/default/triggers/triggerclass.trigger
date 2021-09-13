trigger triggerclass on Opportunity (before insert) {
    triggerclass.check_opp(Trigger.new);

}