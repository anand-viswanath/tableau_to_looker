- dashboard: superstore_overview
  title: "Superstore Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  elements:
  - name: total_sales_kpi
    title: Total Sales
    model: new
    explore: qwerty
    type: single_value
    fields: [qwerty.total_sales]
    sorts: [qwerty.total_sales desc]
    limit: 500
    col: 0
    row: 0
    width: 6
    height: 4

  - name: total_orders_kpi
    title: Total Orders
    model: new
    explore: qwerty
    type: single_value
    fields: [qwerty.total_orders]
    sorts: [qwerty.total_orders desc]
    limit: 500
    col: 6
    row: 0
    width: 6
    height: 4

  - name: sales_over_time
    title: Sales over Time
    model: new
    explore: qwerty
    type: looker_line
    fields: [qwerty.order_month, qwerty.total_sales]
    fill_fields: [qwerty.order_month]
    sorts: [qwerty.order_month desc]
    limit: 500
    col: 0
    row: 4
    width: 12
    height: 8

  - name: sales_by_category
    title: Sales by Category
    model: new
    explore: qwerty
    type: looker_column
    fields: [qwerty.category, qwerty.total_sales]
    sorts: [qwerty.total_sales desc]
    limit: 500
    col: 12
    row: 0
    width: 12
    height: 12
