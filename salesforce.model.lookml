# @author: Segah Meer (segah@looker.com)
- connection: default_connection

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: account
- explore: contact
- explore: lead
- explore: opportunity

- explore: company
  joins:
    - join: lead
      sql_on: ${company.company_id} = ${lead.company_id}
      relationship: one_to_many
      
    - join: lead_facts
      view_label: 'Lead'
      sql_on: ${company.company_id} = ${lead_facts.company_id}
      relationship: many_to_one

    - join: account
      sql_on: ${company.company_id} = ${account.company_id}
      relationship: one_to_many
      
    - join: opportunity
      sql_on: ${company.company_id} = ${opportunity.company_id}
      relationship: one_to_many
      
#     - join: opportunity_facts
#       view_label: 'Opportunity'
#       sql_on: ${opportunity_facts.account_id} = ${opportunity.account_id}
#       relationship: one_to_one

    - join: contact
      sql_on: ${contact.account_id} = ${account.id}
      relationship: one_to_many
      fields: [export_set*]

- explore: funnel
  joins: 
    - join: company
      sql_on: ${funnel.company_id} = ${company.company_id}
      relationship: one_to_one
    
    - join: lead
      sql_on: ${company.company_id} = ${lead.company_id}
      relationship: one_to_many
      type: inner
      
    - join: account
      sql_on: ${company.company_id} = ${account.company_id}
      relationship: one_to_many
#       # fields: [export_set*]    
#     
#     - join: salesrep
#       sql_on: ${salesrep.id} = ${account.owner_id}
#       fields: [name, business_segment]
#       relationship: many_to_one 
#     
    - join: meeting
      sql_on: ${company.account_id} = ${meeting.accountid}
      relationship: one_to_many
      type: inner
      
    - join: opportunity
      sql_on: ${company.account_id} = ${opportunity.company_id}
      relationship: one_to_many
      type: inner



# - explore: company
#   joins:
#     - join: account
#     - join: owner
#       from: user
#       foreign_key: account
#     - join: contact
#       foreign_key: owner.contact
#     - join: task
#       foreign_key: account
#     - join: opportunity
#       foreign_key: account
#     - join: converted_account
#     - join: lead
#       foreign_key: converted_account
#     - join: converted_contact
#       foreign_key: lead
#     - join: converted_opportunity      
#       foreign_key: lead

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
