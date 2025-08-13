string standalone.ChecktheEmailbestaccessdoors()
{
// temp_list = rightpad("t",3).replaceall(" ",",t").toList();
// Count = 4;
// lead_count=1;
// //get_lead = zoho.crm.getRecords("Leads");
// for each lead_data in temp_list
// {
// lead_list = zoho.crm.getRecords("Leads",Count,200,{"cvid":3106252000000087501});
// //info get_lead;
// Count = lead_count + 1; 
// return "";
// }
//get_lead1 = zoho.crm.getRecordById("Leads", ID);
get_lead = zoho.crm.getRecords("Leads");
info get_lead;
for each  recd_data in get_lead
{
	lead_email = recd_data.get("name");
	info lead_email;
}
return "";
}