connection: "snowflake_looker_test"  #
include: "//looker-hub/accounts_frontend/explores/*"
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


explore: events_stream_with_extra {
  label: "Account Event"
  description: "Events stream with event_extras as dimensions"
  from: events_stream_with_extras
}

explore: test_table {
  label: "Looker Test with test table"
  from: test_table
}
