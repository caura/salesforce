- connection: default_connection

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: company
  joins:
#     - join: lead
#       sql_on: ${lead.id} = ${company.lead_id}
#       relationship: many_to_one
#     
#     - join: contact
#       sql_on: ${contact.id} = ${company.contact_id}
#       relationship: many_to_one
#       
#     - join: account
#       sql_on: ${account.id} = ${company.account_id}
#       relationship: many_to_one
#       fields: [export_set*]
# 
#     - join: opportunity
#       sql_on: ${opportunity.id} = ${company.opportunity_id}
#       relationship: many_to_one
#       
#     - join: modified_first_campaign
#       from: campaign
#       sql_on: ${the_switchboard.modified_first_campaign_id} = ${modified_first_campaign.id}
#       relationship: many_to_one


- explore: sf_account

- explore: sf_contact

- explore: sf_lead

- explore: sf_opportunity

# - explore: user
#   joins:
#     - join: account
#     - join: contact

# - explore: task
#   joins: 
#     - join: user
#     - join: account
# 
# - explore: contact
#   joins:
#     - join: account
#     - join: user
# 
# - explore: account
#   joins: 
#     - join: owner
#       from: user
# 
# - explore: opportunity
#   joins: 
#     - join: account
#     - join: user
#     - join: campaign
#     
# - explore: lead
#   joins: 
#     - join: converted_opportunity
#     - join: owner
#       from: user
#     - join: converted_contact
#     - join: converted_account