trigger LeadAssignment on Lead (after insert) {
    
    Map<String, Id> updatedCountryMap = new Map<String,Id>{'USA' =>'005115555','INDIA'=>'005915555'};
    
     List<Lead> leadList = new List<Lead>();
    
     for(Lead l: trigger.new){
         if(updatedCountryMap.containsKey(l.Country)){
             l.OwnerId = updatedCountryMap.get(l.Country);
             leadList.add(l);
         }
         
         update leadlist;
         
    }
}