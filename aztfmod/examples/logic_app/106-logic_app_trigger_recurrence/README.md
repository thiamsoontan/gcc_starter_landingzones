# Azure Logic App

This module is part of Cloud Adoption Framework landing zones for Azure on Terraform.

You can instantiate this directly using the following parameters:

```hcl
global_settings = {
  default_region = "region1"
  regions = {
    region1 = "australiacentral"
  }
}

resource_groups = {
  rgwflow1 = {
    name   = "exampleRG1"
    region = "region1"
  }
}

logic_app_workflow = {
  applogic1 = {
    name               = "workflow1"
    region             = "region1"
    resource_group_key = "rgwflow1"
    #integration_service_environment_key
    #logic_app_integration_account_key
    #workflow_parameters
    #workflow_schema
    workflow_version = "1.0.0.0"
    #parameters
  }
}

logic_app_trigger_recurrence = {
  trigger_recurrence1 = {
    name         = "run-every-day"
    logic_app_key = "applogic1"
    frequency    = "Day"
    interval     = 1
  }
}
```
# logic_app_trigger_recurrence
Estimated execution time
|Apply |    Time |
|------|---------|
|real  |3m38.887s|
|user  |3m51.241s|
|sys   |0m20.950s|

| Destroy|  Time   |
|--------|---------|
|real    |2m58.785s|
|user    |0m40.355s|
|sys     |0m10.295s|

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|


## Outputs
| Name | Description |
|------|-------------|

