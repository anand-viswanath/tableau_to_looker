# The name of this view in Looker is "Superstore"
view: superstore {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Tableau_Looker.superstore` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.`Customer ID` ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.`Customer Name` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Order Date` ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.`Order ID` ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.`Postal Code` ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.`Product ID` ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.`Product Name` ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}.`Row ID` ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`Ship Date` ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.`Ship Mode` ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.`Sub-Category` ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, customer_name]
  }
}
