// You need to enforce a validation rule that prevents the creation of a Task record if its Due Date is in the past.
trigger TaskCreation on Task (before insert) {
    for(Task t: Trigger.new){
        if(t.activityDate < System.Today() ){
            t.addError('Cannot create Task');
        }
    }
}