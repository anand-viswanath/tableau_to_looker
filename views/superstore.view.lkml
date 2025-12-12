view: superstore {
  sql_table_name: `Tableau_Looker.superstore` ;;

  # Dimensions
  dimension: row_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.`Row ID` ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.`Order ID` ;;
  }

  dimension_group: order {
    type: time
    timeframes: [date, week, month, quarter, year, month_name]
    sql: ${TABLE}.`Order Date` ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [date, week, month, quarter, year]
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

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.State ;;
  }

  dimension: postal_code {
    type: zipcode
    sql: ${TABLE}.`Postal Code` ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.`Product ID` ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.`Sub-Category` ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.`Product Name` ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.`Product Type` ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.`MONTHNAME` ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.`YEAR` ;;
  }

  dimension: category_sort_order {
    type: string
    sql: CONCAT(
          CAST(
            CASE
              WHEN ${category} = 'Furniture' THEN 1
              WHEN ${category} = 'Office Supplies' THEN 2
              WHEN ${category} = 'Technology' THEN 3
              ELSE 4
            END AS STRING
          ),
          '-',
          ${sub_category}
        ) ;;
    hidden: yes
  }

  dimension: sub_category_with_sort {
    type: string
    sql: ${sub_category} ;;
    order_by_field: category_sort_order
    label: "Sub-Category"
  }

  # Measures
  measure: total_sales {
    type: sum
    sql: ${TABLE}.Sales ;;
    value_format_name: usd
    drill_fields: [order_date, category, segment, total_sales]
  }

  measure: total_profit {
    type: number
    sql: ${total_sales} * 0.2 ;;
    value_format_name: usd
  }

  measure: profit_margin {
    type: number
    sql: ${total_profit} / NULLIF(${total_sales}, 0) ;;
    value_format_name: percent_2
  }

  measure: total_orders {
    type: count_distinct
    sql: ${order_id} ;;
  }

  measure: count {
    type: count
  }
}
