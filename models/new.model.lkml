connection: "tableautolooker"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

explore: qwerty {
  from: qwerty
}
