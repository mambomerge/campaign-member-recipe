  
public inherited sharing class CampaignExtension {

  public CampaignExtension(ApexPages.StandardController standardController) {
  }

  @RemoteAction
  public static List<CampaignMember> queryCampaignMembers(Id recordId){
    return [
      SELECT Id, 
        ContactId, Contact.Salutation, Contact.FirstName, Contact.LastName, Contact.Title,
          Contact.Email, Contact.Phone, Contact.Account.Name,
        LeadId, Lead.Salutation, Lead.FirstName, Lead.LastName, Lead.Title,
          Lead.Email, Lead.Phone, Lead.Company
      FROM CampaignMember
      WHERE CampaignId = :recordId
      LIMIT 10000
    ];
  }

}