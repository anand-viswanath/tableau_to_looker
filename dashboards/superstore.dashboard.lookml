dashboard: superstore_overview
  title: "Superstore Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  elements:
    - name: sales_by_category
      title: "Sales by Category"
      model: new
      explore: qwerty
      type: looker_bar
      fields: [qwerty.category, qwerty.total_sales]
      sorts: [qwerty.total_sales desc]
      limit: 500
      width: 12
      height: 8

    - name: sales_by_region
      title: "Sales by Region"
      model: new
      explore: qwerty
      type: looker_column
      fields: [qwerty.region, qwerty.total_sales]
      sorts: [qwerty.total_sales desc]
      limit: 500
      width: 12
      height: 8

    - name: sales_over_time
      title: "Sales Over Time"
      model: new
      explore: qwerty
      type: looker_line
      fields: [qwerty.order_month, qwerty.total_sales]
      fill_fields: [qwerty.order_month]
      sorts: [qwerty.order_month desc]
      limit: 500
      width: 24
      height: 8