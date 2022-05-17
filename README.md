# campaign-member-recipe

This recipe will step you through creating a button on a Campaign that will generate a single docx file with a page per related CampaignMember record.

## Instructions
1. Install Mambo Merge from the AppExchange by following these instructions: https://www.mambomerge.com/support/installation-from-appexchange/

2. Use the below button to deploy this repo to your Salesforce to create a new Visualforce Page, new Aura App, and new Opportunity List View Button
<a href="https://githubsfdeploy.herokuapp.com?owner=mambomerge&repo=campaign-member-recipe&ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

3. Create a docx template like you normally would for Mambo Merge.  Add the {{cloneForEach:records}} mergeField anywhere in the document (it will be removed upon generation). 

4. Upload your docx Template onto the Files tab by following these instructions: https://www.mambomerge.com/support/how-to-use-mambo-merge-to-generate-a-new-word-docx-file-drag-and-drop-copy/

5. Create a new Mambo Merge Configuration with Id CampaignMember as follows:

5a. Click on the down arrow in the top right corner of Mambo Merge and choose Setup

5b. Create a new Configuration named CampaignMember

5c. Add a new button to the configuration and specify your Template Id

5d. Save the Configuration

6. Create a new Custom Button for List Views on the Contact Object that uses the CampaignMamboMerge page

7. Edit the Contact Classic Search Layout to display the new button