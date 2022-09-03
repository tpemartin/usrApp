dashboardBrand2 = function(
  title = "USR",
  color = "primary",
  href = "https://adminlte.io/themes/v3",
  image = "lib/buttons-1.0.0/image/logo.png"
){
  bs4Dash::dashboardBrand(
    title = "USR",
    color = "primary",
    href = "https://adminlte.io/themes/v3",
    image = "lib/buttons-1.0.0/image/logo.png"
  ) -> .tag
  .tag$children[[1]]$attribs$class="brand-image"
  .tag
}
