resource "trocco_connection" "kajiya_snowflake" {
  connection_type   = "snowflake"
  name              = "test_kajiya"
  description       = " "
  host              = "xy01234.ap-northeast-1.aws.snowflakecomputing.com"
  user_name         = "your_name"
  auth_method       = "key_pair"
  private_key       = "placeholder"
  driver            = "snowflake_jdbc_3_17_0"
  role              = "SYSADMIN"
  resource_group_id = 1251
}

/*
trocco_connection.kajiya_dbt_cloud: Import prepared!
  Prepared trocco_connection for import
trocco_connection.kajiya_dbt_cloud: Refreshing state...
╷
│ Error: Reading connection
│ 
│ Unable to read connection, got error: 404 Not Found

まだ未対応。。。
*/

# import {
#   to = trocco_connection.kajiya_dbt_cloud
#   id = "393"
# }

# resource "trocco_connection" "kajiya_dbt_cloud" {
#   connection_type   = "dbt_cloud"
#   name              = "kajiya_dbt_cloud"
#   description       = " "
#   resource_group_id = 393
# }
