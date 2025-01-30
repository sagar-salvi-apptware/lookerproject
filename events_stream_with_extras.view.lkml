include: "//looker-hub/accounts_frontend/views/events_stream_table.view.lkml"

view: events_stream_with_extras {
  extends: [events_stream_table]

  sql_table_name: "LOOKERTEST"."TEST_SCHEMA"."TEST_TABLE" ;;  # Use the full database.schema.table path

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }


}
