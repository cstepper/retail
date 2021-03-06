library(retail)
library(dplyr)

# PRD ---------------------------------------------------------------------------------------------

API_KEY = Sys.getenv("RETAIL_KEY")

retailer()

set_api_key(API_KEY)
get_api_key()

retailer_products(9)
product(546082) %>% select(-retailer_id, -url)
product_prices(546082)
product(531589) %>% select(-retailer_id, -brand, -url)
product_prices(531589) %>% select(-available)

# DEV ---------------------------------------------------------------------------------------------

set_server("0.0.0.0", 8080)
retail:::base_url()

API_KEY = "5bed3ac9-6dc9-4926-aed8-8c97a7cb8057"

retailer()

set_api_key(API_KEY)
get_api_key()

# retailer(1)
#
# retailer_products(1)
# retailer_products(42)
product(21327)
product_prices(18355)

# product_prices(11825)
