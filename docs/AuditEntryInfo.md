# SwaggerClient::AuditEntryInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**audit_id** | **String** |  | [optional] 
**date** | **Date** |  | [optional] 
**action_performed** | [**AuditEventAction**](AuditEventAction.md) |  | [optional] 
**entity_type** | [**AuditEntityType**](AuditEntityType.md) |  | [optional] 
**entity_id** | **String** | Id of the underlying entity | [optional] 
**employee_unique_id** | **String** | Unique id of the employee this operation belongs to | [optional] 
**action_performed_by** | **String** |  | [optional] 
**action_performed_on** | **String** |  | [optional] 
**modifications** | [**Array&lt;AuditModification&gt;**](AuditModification.md) |  | [optional] 

