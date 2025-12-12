view: qwerty {
  sql_table_name: `Tableau_Looker.superstore` ;;

  # Dimensions based on physical table columns

  dimension: row_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.`Row ID` ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.`Order ID` ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Order Date` ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Ship Date` ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.`Ship Mode` ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.`Customer ID` ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.`Customer Name` ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.`Segment` ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.`Country` ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.`City` ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.`State` ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.`Postal Code` ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.`Region` ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.`Product ID` ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.`Category` ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.`Sub-Category` ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.`Product Name` ;;
  }

  # Measures

  measure: total_sales {
    type: sum
    sql: ${TABLE}.`Sales` ;;
    value_format_name: usd
  }

  measure: total_orders {
    type: count
  }
}