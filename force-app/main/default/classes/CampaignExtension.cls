/**
 * This Apex Class supports the CamapignMamboMerge Visualforce Page 
 */
public inherited sharing class CampaignExtension {

  public CampaignExtension(ApexPages.StandardController standardController) {
  }

  /**
   * @description This method queries all the CampaignMembers on a Campaign record
   */
  @RemoteAction
  public static List<CampaignMember> queryCampaignMembers(Id recordId){
    return [
      SELECT Id, Name,
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