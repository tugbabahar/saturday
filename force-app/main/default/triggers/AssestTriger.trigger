trigger AssestTriger on Asset (before insert,before update,after insert,after update) {

  if (trigger.isBefore && trigger.isUpdate) {
   Assethandler.Assethandlerupdate( trigger.new, 
    trigger.old,trigger.newmap,trigger.oldmap);
  }
}