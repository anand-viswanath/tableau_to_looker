connection: "tableautolooker"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

explore: train {   label: "Superstore Sales"
  description: "Explore for Superstore sales, profit, and order data"
  }
