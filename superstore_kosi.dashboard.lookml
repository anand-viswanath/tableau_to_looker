- dashboard: superstore_kosi
  title: Superstore Kosi
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:
  - name: month_filter
    title: "Month"
    type: field_filter
    default_value: ""
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: new
    explore: superstore
    field: superstore.month_name

  elements:

  - name: total_sales_kpi
    title: Total Sales
    model: new
    explore: superstore
    type: single_value
    fields: [superstore.total_sales]
    filters:
      superstore.month_name: ""
    listen:
      month_filter: superstore.month_name
    row: 0
    col: 0
    width: 6
    height: 4

  - name: total_profit_kpi
    title: Total Profit
    model: new
    explore: superstore
    type: single_value
    fields: [superstore.total_profit]
    listen:
      month_filter: superstore.month_name
    row: 0
    col: 6
    width: 6
    height: 4

  - name: profit_margin_kpi
    title: Profit Margin
    model: new
    explore: superstore
    type: single_value
    fields: [superstore.profit_margin]
    listen:
      month_filter: superstore.month_name
    row: 0
    col: 12
    width: 6
    height: 4

  - name: total_orders_kpi
    title: Total Orders
    model: new
    explore: superstore
    type: single_value
    fields: [superstore.total_orders]
    listen:
      month_filter: superstore.month_name
    row: 0
    col: 18
    width: 6
    height: 4

  - name: sales_over_time
    title: Sales Over Time
    model: new
    explore: superstore
    type: looker_line
    fields: [superstore.order_month, superstore.category, superstore.total_sales]
    pivots: [superstore.category]
    sorts: [superstore.order_month]
    limit: 500
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_labels: ["Total Sales ($)"]
    y_axis_value_format: "[>=1000000]0.0,,\"M\";[>=1000]0,\"K\";0"
    truncate_text: true
    legend_position: center
    font_size: '8'
    listen:
      month_filter: superstore.month_name
    row: 4
    col: 0
    width: 9
    height: 6

  - name: sales_by_category_subcategory
    title: Sales By Category and Sub-Category
    model: new
    explore: superstore
    type: looker_column
    fields: [superstore.category, superstore.sub_category_with_sort, superstore.total_sales]
    pivots: [superstore.category]
    sorts: [superstore.sub_category_with_sort]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_combined: true
    y_axis_labels: ["Total Sales ($)"]
    y_axis_value_format: "[>=1000000]0.0,,\"M\";[>=1000]0,\"K\";0"
    show_x_axis_ticks: true
    x_axis_label: ''
    show_x_axis_label: false
    x_axis_scale: auto
    x_axis_label_rotation: -45
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_reversed: false
    y_axis_reversed: false
    font_size: '7'
    series_colors: {}
    limit_displayed_rows: false
    hidden_series: []
    hide_legend: false
    truncate_text: true
    truncate_column_names: false
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      month_filter: superstore.month_name
    row: 4
    col: 9
    width: 9
    height: 6

  - name: sales_by_segment
    title: Sales By Segment
    model: new
    explore: superstore
    type: looker_pie
    fields: [superstore.segment, superstore.total_sales]
    sorts: [superstore.total_sales desc]
    limit: 500
    show_legend: true
    legend_position: bottom
    listen:
      month_filter: superstore.month_name
    row: 4
    col: 18
    width: 6
    height: 6

  - name: sales_by_state
    title: Sales by State
    model: new
    explore: superstore
    type: looker_map
    fields: [superstore.state, superstore.total_sales]
    sorts: [superstore.total_sales desc]
    limit: 500
    map: usa
    map_plot_mode: points
    map_position: fit_data
    map_tile_provider: light
    series_types:
      superstore.total_sales: circle
    listen:
      month_filter: superstore.month_name
    row: 10
    col: 0
    width: 9
    height: 6

  - name: top_10_products
    title: Top 10 Products by Sale
    model: new
    explore: superstore
    type: looker_bar
    fields: [superstore.product_name, superstore.total_sales]
    sorts: [superstore.total_sales desc]
    limit: 10
    x_axis_gridlines: true
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    truncate_text: true
    truncate_column_names: false
    listen:
      month_filter: superstore.month_name
    row: 10
    col: 9
    width: 9
    height: 6

  - name: sales_by_region
    title: Sales by Region
    model: new
    explore: superstore
    type: looker_pie
    fields: [superstore.region, superstore.total_sales]
    sorts: [superstore.total_sales desc]
    limit: 500
    listen:
      month_filter: superstore.month_name
    row: 10
    col: 18
    width: 6
    height: 6
