*** Settings ***

*** Variables ***
${my_account_xpath} =  xpath=//div[@id='top-links']//ul//li[2]//span[@class='hidden-xs hidden-sm hidden-md']
${login_link} =  link=Login

# Login page
${user_email_id} =  id=input-email
${user_password_id} =  id=input-password
${login_btn_xpath} =  xpath=//input[@class='btn btn-primary']
${warning_text_xpath} =  xpath=//div[@class='alert alert-danger alert-dismissible']

# Admin Login page
${admin_email_id} =  id=input-username
${admin_password_id} =  id=input-password
${admin_login_btn_xpath} =  xpath=//button[@class='btn btn-primary']

# DASHBOARD
${admin_logout_xpath} =  xpath=//span[@class='hidden-xs hidden-sm hidden-md']
${admin_order_viewmore_xpath} =  xpath=//div[@class='row']//div[1]//div[1]//div[3]//a[1]
${catalog_menu_link} =  id='menu-catalog'

# ORDER PAGE
${order_table} =  //table[@class='table table-bordered table-hover']
${order_table_xpath} =  xpath=${order_table}
${order_table_rows_xpath} =  xpath=${order_table}//tbody/tr
${order_table_columns_xpath} =  xpath=${order_table}//thead/tr/td

#CATALOG MENU LINKS
${PRODUCTS_LISTING_PAGE_LINK} =  xpath=//a[normalize-space()='Products']
${PRODUCTS_LISTING_ROWS} =  xpath=//div[@class='panel-body']//tbody//tr
${PRODUCTS_LISTING_COLUMNS} =  xpath=//div[@class='panel-body']//tbody//tr[1]//td

#    def PRODUCTS_LISTING_COLUMN_VALUE(self, i, j):
#        return By.XPATH, "//div[@class='panel-body']//tbody//tr[" + i + "]//td[" + j + "]"

#ADD PRODUCT PAGE LOCATORS
${save_product_icon} =  xpath=//button[@type='submit']"
${add_product_tab_general} =  xpath=//a[normalize-space()='General']"
${product_gen_product_name} =  id=input-name1
${product_gen_meta_tag_title} =  id=input-meta-title1
${add_product_tab_data} =  xpath=//a[normalize-space()='Data']
${add_product_tab_links} =  xpath=//a[normalize-space()='Link']
${add_product_tab_attribute} =  xpath=//a[normalize-space()='Attribute']
${add_product_tab_option} =  xpath=//a[normalize-space()='Option']
${add_product_tab_recurring} =  xpath=//a[normalize-space()='Recurring']

${validation_add_product_banner} =  xpath=//div[@class='alert alert-danger alert-dismissible']
${validation_common_locator} =  /following-sibling::div[@class='text-danger']
${validation_product_name} =  xpath=//input[@id='input-name1'] + ${validation_common_locator}
${validation_meta_tag} =  xpath=//input[@id='input-meta-title1'] + ${validation_common_locator}