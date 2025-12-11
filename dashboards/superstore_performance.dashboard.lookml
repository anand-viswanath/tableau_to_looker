- dashboard: superstore_sales_and_profit_performance_dashboard
  title: SuperStore Sales & Profit Performance Dashboard
  layout: newspaper
  description: ''
  preferred_viewer: dashboards-next

  # Filters
  filters:
  - name: name
    title: Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: superstore
    explore: train
    field: train.name
    ui_config:
      type: advanced
      display: popover

  - name: monthname
    title: Monthname
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: superstore
    explore: train
    field: train.monthname
    ui_config:
      type: advanced
      display: popover

  elements:
  # ----- KPI Tiles -----
  - title: Total Sales
    name: Total Sales
    model: superstore
    explore: train
    type: single_value
    fields: [train.total_sales]
    sorts: [train.total_sales desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Sales
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: false
    row: 0
    col: 0
    width: 6
    height: 3

  - title: Total Profit
    name: Total Profit
    model: superstore
    explore: train
    type: single_value
    fields: [train.total_profit]
    sorts: [train.total_profit desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Profit
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: false
    row: 0
    col: 6
    width: 6
    height: 3

  - title: Profit Margin
    name: Profit Margin
    model: superstore
    explore: train
    type: single_value
    fields: [train.profit_margin]
    sorts: [train.profit_margin desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Profit Margin
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: false
    row: 0
    col: 12
    width: 6
    height: 3

  - title: Total Orders
    name: Total Orders
    model: superstore
    explore: train
    type: single_value
    fields: [train.total_orders]
    sorts: [train.total_orders desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Orders
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: false
    row: 0
    col: 18
    width: 6
    height: 3

  # ----- Sales Over Time -----
  - title: Sales Over Time
    name: Sales Over Time
    model: superstore
    explore: train
    type: looker_line
    fields: [train.order_year, train.total_sales, train.category]
    pivots: [train.category]
    sorts: [train.order_year asc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    row: 3
    col: 0
    width: 8
    height: 6

  # ----- Sales by Category & Sub-Category -----
  - title: Sales By Category and Sub-Category
    name: Sales By Category and Sub-Category
    model: superstore
    explore: train
    type: looker_bar
    fields: [train.category, train.sub_category, train.total_sales]
    sorts: [train.total_sales desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 3
    col: 8
    width: 8
    height: 6

  # ----- Sales by Segment (Pie) -----
  - title: Sales by Segment
    name: Sales by Segment
    model: superstore
    explore: train
    type: looker_pie
    fields: [train.total_sales, train.segment]
    sorts: [train.total_sales desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    row: 3
    col: 16
    width: 8
    height: 6

  # ----- Sales by State (Map) -----
  - title: Sales By State
    name: Sales By State
    model: superstore
    explore: train
    type: looker_geo_choropleth
    fields: [train.state, train.total_sales]
    sorts: [train.total_sales desc]
    limit: 500
    column_limit: 50
    map_plot_mode: automagic_heat
    row: 9
    col: 0
    width: 8
    height: 6

  # ----- Top 10 Products by Sales -----
  - title: Top 10 Products by Sales
    name: Top 10 Products by Sales
    model: superstore
    explore: train
    type: looker_bar
    fields: [train.product_name, train.total_sales]
    sorts: [train.total_sales desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 9
    col: 8
    width: 8
    height: 6

  # ----- Sales by Region (Treemap) -----
  - title: Sales by Region
    name: Sales by Region
    model: superstore
    explore: train
    type: looker_treemap
    fields: [train.region, train.total_sales]
    sorts: [train.total_sales desc]
    limit: 500
    column_limit: 50
    row: 9
    col: 16
    width: 8
    height: 6
