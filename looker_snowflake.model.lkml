connection: "snowflake_looker_test"  #
include: "/**/*.view"


explore: customer_data {
  label: "Customer Data Snowflake Looker Test"
  from: test_table
}


explore: metadata_analytics {
  label: "Customer Data"
  description: " Provides an different analytics view on top of all entities"
  from: test_table
  tags: ["metrics"]
}
