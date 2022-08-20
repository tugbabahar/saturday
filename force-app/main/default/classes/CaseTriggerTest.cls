@isTest 
    public class CaseTriggerTest {
        @isTest
        private static void createChildCaseTest() {
            List<Case> newCases = new List<Case>();
            for (Integer i = 0; i < 50; i++) {
                Case newCase = new Case();
                newCase.Subject = 'Parent Case may contain secret info, do something NOW!!!';
                newCase.Priority = 'High';
                newCase.Description = 'Secret info not allowed in case with password.';
                newCases.add(newCase);
            }
            insert newCases;
            }
    }

