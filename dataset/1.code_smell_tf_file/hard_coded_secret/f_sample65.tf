locals {
  # If the website domain is not provided, then the following default domain is to be created.
  # <project_id>-datacommons.com
  # <<<<< BEGIN Important note >>>>>
  # Because <project_id>-datacommons.com is unlikely to be a common domain name,
  # we make an assumption that the cost is $12.00 USD per year.
  # If that is not the case, look up the cost of the domain on domains.google.com,
  # and use that as an input for the domain_yearly_price variable.
  #
  # This is where the default domain is defined. When changing the default domain name,
  # please also change the value of dc_website_domain in scripts/get-dc.sh.
  # <<<<< END Important note >>>>>
  dc_website_domain = coalesce(
    var.dc_website_domain, format("%s-datacommons.com", var.project_id))

  resource_suffix = var.use_resource_suffix ? format("-%s", random_id.rnd.hex) : ""
}
