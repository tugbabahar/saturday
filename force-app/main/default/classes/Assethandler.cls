public class Assethandler {
   public static void Assethandlerupdate(LIST<ASSET> AssTriggerNew,
                                          LIST<ASSET> AssTriggerOld,
                                          MAP<ID,ASSET> AssTriggerNewMap,
                                          MAP<ID,ASSET> AssTriggerOldMap) {
   for (asset eachAsset : AssTriggerNew) {
      if (eachAsset.Status != 'Shipped') {
      eachAsset.addError('System will only accept Shipped');
          } 
   }
  }
}