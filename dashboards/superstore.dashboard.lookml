dashboard: superstore_overview
  title: "Superstore Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  elements:
    - name: sales_overview_by_category
      title: "Total Sales by Category"
      model: anand-test
      explore: qwerty
      type: looker_bar
      fields: [qwerty.category, qwerty.total_sales]
      sorts: [qwerty.total_sales desc]
      limit: 500
      row: 0
      col: 0
      width: 12
      height: 8

    - name: sales_by_region_map
      title: "Sales Distribution by Region"
      model: anand-test
      explore: qwerty
      type: looker_column
      fields: [qwerty.region, qwerty.total_sales]
      sorts: [qwerty.total_sales desc]
      limit: 500
      row: 0
      col: 12
      width: 12
      height: 8

    - name: monthly_sales_trend
      title: "Monthly Sales Trend"
      model: anand-test
      explore: qwerty
      type: looker_line
      fields: [qwerty.order_date_month, qwerty.total_sales]
      fill_fields: [qwerty.order_date_month]
      sorts: [qwerty.order_date_month desc]
      limit: 500
      row: 8
      col: 0
      width: 24
      height: 8

    - name: sales_by_segment_breakdown
      title: "Sales by Segment"
      model: anand-test
      explore: qwerty
      type: looker_pie
      fields: [qwerty.segment, qwerty.total_sales]
      sorts: [qwerty.total_sales desc]
      limit: 500
      row: 16
      col: 0
      width: 12
      height: 8

    - name: top_products
      title: "Top Products by Sales"
      model: anand-test
      explore: qwerty
      type: looker_grid
      fields: [qwerty.product_name, qwerty.total_sales]
      sorts: [qwerty.total_sales desc]
      limit: 20
      row: 16
      col: 12
      width: 12
      height: 8