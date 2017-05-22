FIELDS = {
	'ActionSequence' => ['Id','TemplateName','VisibleToTheseUsers'],
	'AffResource' => ['Id','Notes','ProgramIds','ResourceHREF','ResourceHTML','ResourceOrder','ResourceType','Title'],
	'Affiliate' => ['AffCode','AffName','ContactId','DefCommissionType','Id','LeadAmt','LeadCookieFor','LeadPercent','NotifyLead','NotifySale','ParentId','Password','PayoutType','SaleAmt','SalePercent','Status'],
	'CCharge' => ['Amt','ApprCode','CCId','Id','MerchantId','OrderNum','PaymentGatewayId','PaymentId','RefNum'],
	'CProgram' => ['Active','BillingType','DefaultCycle','DefaultFrequency','DefaultPrice','Description','Family','HideInStore','Id','LargeImage','ProductId','ProgramName','ShortDescription','Sku','Status','Taxable'],
	'Campaign' => ['Id','Name','Status'],
	'CampaignStep' => ['CampaignId','Id','StepStatus','StepTitle','TemplateId'],
	'Campaignee' => ['Campaign','CampaignId','ContactId','Id','Status'],
	'Company' => ['AccountId','Address1Type','Address2Street1','Address2Street2','Address2Type','Address3Street1','Address3Street2','Address3Type','Anniversary','AssistantName','AssistantPhone','BillingInformation','Birthday','City','City2','City3','Company','CompanyID','ContactNotes','ContactType','Country','Country2','Country3','CreatedBy','DateCreated','Email','EmailAddress2','EmailAddress3','Fax1','Fax1Type','Fax2','Fax2Type','FirstName','Groups','Id','JobTitle','LastName','LastUpdated','LastUpdatedBy','MiddleName','Nickname','OwnerID','Password','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','Phone3','Phone3Ext','Phone3Type','Phone4','Phone4Ext','Phone4Type','Phone5','Phone5Ext','Phone5Type','PostalCode','PostalCode2','PostalCode3','ReferralCode','SpouseName','State','State2','State3','StreetAddress1','StreetAddress2','Suffix','Title','Username','Validated','Website','ZipFour1','ZipFour2','ZipFour3'],
	'Contact' => ['AccountId','Address1Type','Address2Street1','Address2Street2','Address2Type','Address3Street1','Address3Street2','Address3Type','Anniversary','AssistantName','AssistantPhone','BillingInformation','Birthday','City','City2','City3','Company','CompanyID','ContactNotes','ContactType','Country','Country2','Country3','CreatedBy','DateCreated','Email','EmailAddress2','EmailAddress3','Fax1','Fax1Type','Fax2','Fax2Type','FirstName','Groups','Id','JobTitle','LastName','LastUpdated','LastUpdatedBy','LeadSourceId','Leadsource','MiddleName','Nickname','OwnerID','Password','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','Phone3','Phone3Ext','Phone3Type','Phone4','Phone4Ext','Phone4Type','Phone5','Phone5Ext','Phone5Type','PostalCode','PostalCode2','PostalCode3','ReferralCode','SpouseName','State','State2','State3','StreetAddress1','StreetAddress2','Suffix','Title','Username','Validated','Website','ZipFour1','ZipFour2','ZipFour3'],
	'ContactAction' => ['Accepted','ActionDate','ActionDescription','ActionType','CompletionDate','ContactId','CreatedBy','CreationDate','CreationNotes','EndDate','Id','IsAppointment','LastUpdated','LastUpdatedBy','ObjectType','OpportunityId','PopupDate','Priority','UserID'],
	'ContactGroup' => ['GroupCategoryId','GroupDescription','GroupName','Id'],
	'ContactGroupAssign' => ['Contact.Address1Type','Contact.Address2Street1','Contact.Address2Street2','Contact.Address2Type','Contact.Address3Street1','Contact.Address3Street2','Contact.Address3Type','Contact.Anniversary','Contact.AssistantName','Contact.AssistantPhone','Contact.BillingInformation','Contact.Birthday','Contact.City','Contact.City2','Contact.City3','Contact.Company','Contact.CompanyID','Contact.ContactNotes','Contact.ContactType','Contact.Country','Contact.Country2','Contact.Country3','Contact.CreatedBy','Contact.DateCreated','Contact.Email','Contact.EmailAddress2','Contact.EmailAddress3','Contact.Fax1','Contact.Fax1Type','Contact.Fax2','Contact.Fax2Type','Contact.FirstName','Contact.Groups','Contact.Id','Contact.JobTitle','Contact.LastName','Contact.LastUpdated','Contact.LastUpdatedBy','Contact.Leadsource','Contact.MiddleName','Contact.Nickname','Contact.OwnerID','Contact.Phone1','Contact.Phone1Ext','Contact.Phone1Type','Contact.Phone2','Contact.Phone2Ext','Contact.Phone2Type','Contact.Phone3','Contact.Phone3Ext','Contact.Phone3Type','Contact.Phone4','Contact.Phone4Ext','Contact.Phone4Type','Contact.Phone5','Contact.Phone5Ext','Contact.Phone5Type','Contact.PostalCode','Contact.PostalCode2','Contact.PostalCode3','Contact.ReferralCode','Contact.SpouseName','Contact.State','Contact.State2','Contact.State3','Contact.StreetAddress1','Contact.StreetAddress2','Contact.Suffix','Contact.Title','Contact.Website','Contact.ZipFour1','Contact.ZipFour2','Contact.ZipFour3','ContactGroup','ContactId','DateCreated','GroupId'],
	'ContactGroupCategory' => ['CategoryDescription','CategoryName','Id'],
	'CreditCard' => ['BillAddress1','BillAddress2','BillCity','BillCountry','BillName','BillState','BillZip','CardType','ContactId','Email','ExpirationMonth','ExpirationYear','FirstName','Id','Last4','LastName','MaestroIssueNumber','NameOnCard','PhoneNumber','ShipAddress1','ShipAddress2','ShipCity','ShipCompanyName','ShipCountry','ShipFirstName','ShipLastName','ShipMiddleName','ShipName','ShipPhoneNumber','ShipState','ShipZip','StartDateMonth','StartDateYear','Status'],
	'DataFormField' => ['DataType','DefaultValue','FormId','GroupId','Id','Label','ListRows','Name','Values'],
	'DataFormGroup' => ['Id','Name','TabId'],
	'DataFormTab' => ['FormId','Id','TabName'],
	'EmailAddStatus' => ['DateCreated','Email','Id','LastClickDate','LastOpenDate','LastSentDate','Type'],
	'Expense' => ['ContactId','DateIncurred','ExpenseAmt','ExpenseType','Id','TypeId'],
	'FileBox' => ['ContactId','Extension','FileName','FileSize','Id','Public'],
	'GroupAssign' => ['Admin','GroupId','Id','UserId'],
	'Invoice' => ['AffiliateId','ContactId','CreditStatus','DateCreated','Description','Id','InvoiceTotal','InvoiceType','JobId','LastUpdated','LeadAffiliateId','PayPlanStatus','PayStatus','ProductSold','PromoCode','RefundStatus','Synced','TotalDue','TotalPaid'],
	'InvoiceItem' => ['CommissionStatus','DateCreated','Description','Discount','Id','InvoiceAmt','InvoiceId','LastUpdated','OrderItemId'],
	'InvoicePayment' => ['Amt','Id','InvoiceId','LastUpdated','PayDate','PayStatus','PaymentId','SkipCommission'],
	'Job' => ['ContactId','DateCreated','DueDate','Id','JobNotes','JobRecurringId','JobStatus','JobTitle','OrderStatus','OrderType','ProductId','ShipCity','ShipCompany','ShipCountry','ShipFirstName','ShipLastName','ShipMiddleName','ShipPhone','ShipState','ShipStreet1','ShipStreet2','ShipZip','StartDate'],
	'JobRecurringInstance' => ['AutoCharge','DateCreated','Description','EndDate','Id','InvoiceItemId','RecurringId','StartDate','Status'],
	'Lead' => ['AffiliateId','ContactID','CreatedBy','DateCreated','DateInStage','EstimatedCloseDate','Id','IncludeInForecast','LastUpdated','LastUpdatedBy','Leadsource','MonthlyRevenue','NextActionDate','NextActionNotes','Objection','OpportunityNotes','OpportunityTitle','OrderRevenue','ProjectedRevenueHigh','ProjectedRevenueLow','StageID','StatusID','UserID'],
	'LeadSource' => ['CostPerLead','Description','EndDate','Id','LeadSourceCategoryId','Medium','Message','Name','StartDate','Status','Vendor'],
	'LeadSourceCategory' => ['Description','Id','Name'],
	'LeadSourceExpense' => ['Amount','DateIncurred','Id','LeadSourceId','LeadSourceRecurringExpenseId','Notes','Title'],
	'LeadSourceRecurringExpense' => ['Amount','EndDate','Id','LeadSourceId','NextExpenseDate','Notes','StartDate','Title'],
	'LinkedContactType' => ['Id','MaxLinked','TypeName'],
	'MtgLead' => ['ActualCloseDate','ApplicationDate','CreditReportDate','DateAppraisalDone','DateAppraisalOrdered','DateAppraisalReceived','DateRateLockExpires','DateRateLocked','DateTitleOrdered','DateTitleReceived','FundingDate','Id'],
	'OrderItem' => ['CPU','Id','ItemDescription','ItemName','ItemType','Notes','OrderId','PPU','ProductId','Qty','SubscriptionPlanId'],
	'PayPlan' => ['AmtDue','DateDue','FirstPayAmt','Id','InitDate','InvoiceId','StartDate','Type'],
	'PayPlanItem' => ['AmtDue','AmtPaid','DateDue','Id','PayPlanId','Status'],
	'Payment' => ['ChargeId','Commission','ContactId','Id','InvoiceId','PayAmt','PayDate','PayNote','PayType','RefundId','Synced','UserId'],
	'Product' =>['BottomHTML','CityTaxable','CountryTaxable','Description','HideInStore','Id','InventoryLimit','InventoryNotifiee','IsPackage','LargeImage','NeedsDigitalDelivery','ProductName','ProductPrice','Shippable','ShippingTime','ShortDescription','Sku','StateTaxable','Status','Taxable','TopHTML','Weight'],
	'ProductCategory' => ['CategoryDisplayName','CategoryImage','CategoryOrder','Id','ParentId'],
	'ProductCategoryAssign' => ['Id','ProductCategoryId','ProductId'],
	'ProductInterest' => ['DiscountPercent','Id','ObjType','ObjectId','ProductId','ProductType','Qty','SubscriptionPlanId'],
	'ProductInterestBundle' => ['BundleName','Description','Id'],
	'ProductOptValue' =>['Id','IsDefault','Label','Name','OptionIndex','PriceAdjustment','ProductOptionId','Sku'],
	'ProductOption' => ['AllowSpaces','CanContain','CanEndWith','CanStartWith','Id','IsRequired','Label','MaxChars','MinChars','Name','OptionType','Order','ProductId','TextMessage'],
	'RecurringOrder' => ['AffiliateId','AutoCharge','BillingAmt','BillingCycle','CC1','CC2','ContactId','EndDate','Frequency','Id','LastBillDate','LeadAffiliateId','MaxRetry','MerchantAccountId','NextBillDate','NumDaysBetweenRetry','OriginatingOrderId','PaidThruDate','PaymentGatewayId','ProductId','ProgramId','PromoCode','Qty','ReasonStopped','ShippingOptionId','StartDate','Status','SubscriptionPlanId'],
	'RecurringOrderWithContact' => ['AffiliateId','AutoCharge','BillingAmt','BillingCycle','CC1','CC2','City','ContactId','Country','Email','EmailAddress2','EmailAddress3','EndDate','FirstName','Frequency','Id','LastBillDate','LastName','LeadAffiliateId','MaxRetry','MerchantAccountId','MiddleName','NextBillDate','Nickname','NumDaysBetweenRetry','OriginatingOrderId','PaidThruDate','PaymentGatewayId','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','PostalCode','ProductId','ProgramId','PromoCode','Qty','ReasonStopped','RecurringOrderId','ShippingOptionId','SpouseName','StartDate','State','Status','StreetAddress1','StreetAddress2','SubscriptionPlanId','Suffix','Title','ZipFour1'],
	'Referral' => ['AffiliateId','ContactId','DateExpires','DateSet','IPAddress','Id','Info','Source','Type'],
	'SavedFilter' =>['FilterName','Id','ReportStoredName','UserId'],
	'SocialAccount' => ['AccountName','AccountType','ContactId','DateCreated','Id','LastUpdated'],
	'Stage' => ['Id','StageName','StageOrder','TargetNumDays'],
	'StageMove' => ['CreatedBy','DateCreated','Id','MoveDate','MoveFromStage','MoveToStage','OpportunityId','PrevStageMoveDate','UserId'],
	'Status' => ['Id','StatusName','StatusOrder','TargetNumDays'],
	'SubscriptionPlan' => ['Active','Cycle','Frequency','Id','NumberOfCycles','PlanPrice','PreAuthorizeAmount','ProductId','Prorate'],
	'Template' => ['Categories','Id','PieceTitle','PieceType'],
	'Ticket' => ['CloseDate','ContactId','CreatedBy','DateCreated','DateInStage','DevId','FolowUpDate','HasCustomerCalled','Id','IssueId','LastUpdated','LastUpdatedBy','Ordering','Priority','Stage','Summary','TargetCompletionDate','TicketApplication','TicketCategory','TicketTitle','TicketTypeId','TimeSpent','UserId'],
	'TicketStage' => ['Id','StageName'],
	'TicketType' => ['CategoryId','Id','Label'],
	'User' => ['City','Email','EmailAddress2','EmailAddress3','FirstName','GlobalUserId','HTMLSignature','Id','LastName','MiddleName','Nickname','Partner','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','PostalCode','Signature','SpouseName','State','StreetAddress1','StreetAddress2','Suffix','Title','ZipFour1'],
	'UserGroup' => ['Id','Name','OwnerId']
}


DATATYPE_IDS = {
	1 => 'Phone Number',
	2 => 'Social Security Number',
	3 => 'Currency',
	4 => 'Percent',
	5 => 'State',
	6 => 'Yes/No',
	7 => 'Year',
	8 => 'Month',
	9 => 'Day of Week',
	10 => 'Name',
	11 => 'Decimal Number',
	12 => 'Whole Number',
	13 => 'Date',
	14 => 'Date/Time',
	15 => 'Text',
	16 => 'Text Area',
	17 => 'List Box',
	18 => 'Website',
	19 => 'Email',
	20 => 'Radio',
	21 => 'Dropdown',
	22 => 'User',
	23 => 'Drilldown'
}

#key is name
#value is required datatype for DataService.addCustomField

DATATYPES = {
	'Currency' => {'dataType' => 'Currency', 'id' => 3, 'hasValues' => 'no'},
	'Date' => {'dataType' => 'Date', 'id' => 13, 'hasValues' => 'no'},
	'Date/Time' => {'dataType' => 'DateTime', 'id' => 14, 'hasValues' => 'no'},
	'Day of Week' => {'dataType' => 'DayOfWeek', 'id' => 9, 'hasValues' => 'no'},
	'Drilldown' => {'dataType' => 'Drilldown', 'id' => 23, 'hasValues' => 'yes'},
	'Email' => {'dataType' => 'Email', 'id' => 19, 'hasValues' => 'no'},
	'Month' => {'dataType' => 'Month', 'id' => 8, 'hasValues' => 'no'},
	'List Box' => {'dataType' => 'MultiSelect', 'id' => 17, 'hasValues' => 'yes'},
	'Name' => {'dataType' => 'Name', 'id' => 10, 'hasValues' => 'no'},
	'Whole Number' => {'dataType' => 'Number', 'id' => 12, 'hasValues' => 'no'},
	'Decimal Number' => {'dataType' => 'NumberDecimal', 'id' => 11, 'hasValues' => 'no'},
	'Percent' => {'dataType' => 'Percent', 'id' => 4, 'hasValues' => 'no'},
	'Phone Number' => {'dataType' => 'Phone', 'id' => 1, 'hasValues' => 'no'},
	'Radio' => {'dataType' => 'Radio', 'id' => 20, 'hasValues' => 'yes'},
	'Dropdown' => {'dataType' => 'Select', 'id' => 21, 'hasValues' => 'yes'},
	'Social Security Number' => {'dataType' => 'SSN', 'id' => 2, 'hasValues' => 'no'},
	'State' => {'dataType' => 'State', 'id' => 5, 'hasValues' => 'no'},
	'Text' => {'dataType' => 'Text', 'id' => 15, 'hasValues' => 'no'},
	'Text Area' => {'dataType' => 'TextArea', 'id' => 16, 'hasValues' => 'no'},
	'User' => {'dataType' => 'User', 'id' => 22, 'hasValues' => 'yes'},
	'Website' => {'dataType' => 'Website', 'id' => 18, 'hasValues' => 'no'},
	'Year' => {'dataType' => 'Year', 'id' => 7, 'hasValues' => 'no'},
	'Yes/No' => {'dataType' => 'YesNo', 'id' => 6, 'hasValues' => 'no'}
}

CUSTOM_FIELD_FORM_ID = {
	-1 => 'Contact',
	-3 => 'Referral Partner',
	-4 => 'Opportunity',
	-5 => 'Task/Note/Apt',
	-6 => 'Company',
	-9 => 'Order'
}

CUSTOM_FIELD_FORM_ID_REVERSED = {
	'Contact' => -1,
	'Affiliate' => -3,
	'Lead' => -4,
	'ContactAction' => -5,
	'Company' => -6,
	'Job' => -9
}

QJ154_APIKEY='1979978dc08730f121747d50003c8513'
MJ303_APIKEY='682f2c050b76f35d8e8c48db5b98e68d'
TE361_APIKEY='0f1c0a1ef2b470c6c3bb84cb1229028c'

OPT_STATUSES = ['SingleOptIn','DoubleOptin','Confirmed','NonMarketable','Lockdown','Bounce','HardBounce','Feedback','Spam','Manual','Admin','Invalid','ListUnsubscribe']
OPT_OUT_STATUSES = ['Lockdown','Bounce','HardBounce','Feedback','Spam','Manual','Admin','Invalid','ListUnsubscribe']
