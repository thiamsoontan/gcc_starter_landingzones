global_settings = {
  default_region = "region1"
  regions = {
    region1 = "australiaeast"
  }
}
resource_groups = {
  rg1 = {
    name   = "databricks-re1"
    region = "region1"
  }
}
data_factory = {
  df1 = {
    name = "example"
    resource_group = {
      key = "rg1"
      #lz_key = ""
      #name = ""
    }
  }
}
data_factory_linked_service_web = {
  dflsw1 = {
    name = "dflsabs1example"
    resource_group = {
      key = "rg1"
      #lz_key = ""
      #name = ""
    }
    data_factory = {
      key = "df1"
      #lz_key = ""
      #name = ""
    }
    authentication_type = "Anonymous"
  url = "https://www.bing.com" }
}
data_factory_dataset_json = {
  dfddt1 = {
    name = "example"
    resource_group = {
      key = "rg1"
      #lz_key = ""
      #name = ""
    }
    data_factory = {
      key = "df1"
      #lz_key = ""
      #name = ""
    }
    linked_service = {
      key = "dflsw1"
      #lz_key = ""
      #name = ""
    }
    http_server_location = {
      relative_url = "/fizz/buzz/"
      path         = "foo/bar/"
      filename     = "foo.txt"
    }

    encoding = "UTF-8"
  }
}