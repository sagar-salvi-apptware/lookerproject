view: test_table {
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

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: signup_date {
    type: date
    sql: ${TABLE}.signup_date ;;
  }
}
