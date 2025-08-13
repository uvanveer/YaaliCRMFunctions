void automation.SendEmailTasklikebestaccessdoors(String lead_id)
{
/**********Develop Info***************
//https://trello.com/c/PZbXAW4E/3735-urgent-re-90937903-deprecating-activities-module-crm-announcement#comment-650330e1b25457d5fcf04cd2
Added By : Anitha
Added date : 26/08/2020
Last modified date : 26/08/2020
Purpose of code : Restricting the email contains "bestaccessdoors.com" in lead Module .
****************** Start*******************/
// lead_info = zoho.crm.getRecordById("Leads",lead_id);
// //info lead_info;
// /****************Get Email******************/
// user1 = 3106252000000147013;
// user2 = 3106252000138625046;
// email_val = lead_info.get("Email");
// billing_email_val = lead_info.get("Billing_Email");
// contact_email_val = lead_info.get("Contact_Email");
// if(email_val != "" || billing_email_val != "" || contact_email_val != "")
// {
// 	if(!isNull(email_val) || !isNull(billing_email_val) || !isNull(contact_email_val))
// 	{
// 		if(email_val.contains("bestaccessdoors.com") || billing_email_val.contains("bestaccessdoors.com") || contact_email_val.contains("bestaccessdoors.com"))
// 		{
// 			/****************Create Task for antony******************/
// 			workflow = Map();
// 			workflow.put("trigger",{"workflow"});
// 			mp1 = Map();
// 			mp1.put("$se_module","Leads");
// 			mp1.put("What_Id",lead_id);
// 			//mp1.put("Who_Id",lead_id);
// 			mp1.put("Owner",user1);
// 			mp1.put("Due_Date",zoho.currentdate);
// 			mp1.put("Subject","Lead Added with @bestaccessdoors.com domain");
// 			create_Task1 = zoho.crm.createRecord("Tasks",mp1,workflow);
// 			//info create_Task1;
// 			/****************Create Task for carlo******************/
// 			mp = Map();
// 			mp.put("$se_module","Leads");
// 			mp.put("What_Id",lead_id);
// 			//mp.put("Who_Id",lead_id);
// 			mp.put("Owner",user2);
// 			mp.put("Due_Date",zoho.currentdate);
// 			mp.put("Subject","Lead Added with @bestaccessdoors.com domain");
// 			create_Task = zoho.crm.createRecord("Tasks",mp,workflow);
// 			/****************Get Task ID******************/
// 			get_task_id = create_Task.get("id");
// 			/****************Create Task and CRM Link******************/
// 			if(!isNull(get_task_id))
// 			{
// 				task_link = "https://crm.zoho.com/crm/org663942562/tab/Activities/" + get_task_id + "?sub_module=Tasks";
// 			}
// 			crm_link = "https://crm.zoho.com/crm/org663942562/tab/Leads/" + lead_id + "";
// 			/****************Create body content******************/
// 			email_data = "";
// 			if(email_val.contains("bestaccessdoors.com"))
// 			{
// 				if(isNull(email_data))
// 				{
// 					email_data = "Email : " + email_val;
// 				}
// 				else if(!isNull(email_data))
// 				{
// 					email_data = email_data + "<br> Email : " + email_val;
// 				}
// 			}
// 			else if(billing_email_val.contains("bestaccessdoors.com"))
// 			{
// 				if(isNull(email_data))
// 				{
// 					email_data = "Billing Email : " + billing_email_val;
// 				}
// 				else if(!isNull(email_data))
// 				{
// 					email_data = email_data + "<br> Billing Email : " + billing_email_val;
// 				}
// 			}
// 			else if(contact_email_val.contains("bestaccessdoors.com"))
// 			{
// 				if(isNull(email_data))
// 				{
// 					email_data = "Contact Email : " + contact_email_val;
// 				}
// 				else if(!isNull(email_data))
// 				{
// 					email_data = email_data + "<br> Contact Email : " + contact_email_val;
// 				}
// 			}
// 			boady = "<br> Hello, <br> A lead was created with an @bestaccessdoor.com <br>" + email_data + "<br>Please see <b>" + crm_link + "</b><br><br>A Task has been created in CRM as well to approve or modify this lead.<br> <b>" + task_link + "  </b><br> Thanks, <br><b>Best Access Doors ADMIN</b><br><br>";
// 			//Get OAuthHashCode from Zoho crm variable
// 			BADAuthorization = zoho.crm.getOrgVariable("OAuthHashCode");
// 			header_map = Map();
// 			header_map.put("Content-Type","application/json");
// 			header_map.put("BADAuthorization",BADAuthorization);
// 			mailmap = Map();
// 			mailmap.put("to",{"citrigno@bestaccessdoors.com"});
// 			mailmap.put("cc",{"pooja@bizappln.com"});
// 			mailmap.put("cc",{"anitha@bizappln.com"});
// 			//mailmap.put("cc",{"dinesh@bizappln.com"});
// 			//mailmap.put("to",{"po@bestaccessdoors.com"});
// 			//mailmap.put("cc",{"anthony@bestaccessdoors.com","citrigno"});
// 			//mailmap.put("bcc",{"tharmendheran@bizappln.com","balaji"});
// 			mailmap.put("scope","EmailCheck");
// 			mailmap.put("subject",'Lead Added with @bestaccessdoors.com domain');
// 			mailmap.put("body",boady);
// 			// 	info mailmap;
// 			mailres = postURL("https://1.door-pay.com/api/Office360Mail/sendreq",mailmap,header_map);
// 			info "mailres:" + mailres;
// 		}
// 		/****************************************************************************************/
// 	}
// }
}