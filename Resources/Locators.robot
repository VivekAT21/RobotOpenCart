*** Settings ***

*** Variables ***
${MY_ACCOUNT_XPATH} =  xpath=//div[@id='top-links']//ul//li[2]//span[@class='hidden-xs hidden-sm hidden-md']
${LOGIN_LINK} =  link=Login

# Login page
${USER_EMAIL_ID} =  id=input-email
${USER_PASSWORD_ID} =  id=input-password
${LOGIN_BTN_XPATH} =  xpath=//input[@class='btn btn-primary']
${WARNING_TEXT_XPATH} =  xpath=//div[@class='alert alert-danger alert-dismissible']

# Admin Login page
${ADMIN_EMAIL_ID} =  id=input-username
${ADMIN_PASSWORD_ID} =  id=input-password
${ADMIN_LOGIN_BTN_XPATH} =  xpath=//button[@class='btn btn-primary']

# DASHBOARD
${ADMIN_LOGOUT_XPATH} =  xpath=//span[@class='hidden-xs hidden-sm hidden-md']
${ADMIN_ORDER_VIEWMORE_XPATH} =  xpath=//div[@class='row']//div[1]//div[1]//div[3]//a[1]
${CATALOG_MENU_LINK} =  id='menu-catalog'

# ORDER PAGE
${ORDER_TABLE} =  //table[@class='table table-bordered table-hover']
${ORDER_TABLE_XPATH} =  xpath=${order_table}
${ORDER_TABLE_ROWS_XPATH} =  xpath=${order_table}//tbody/tr
${ORDER_TABLE_COLUMNS_XPATH} =  xpath=${order_table}//thead/tr/td

#CATALOG MENU LINKS
${PRODUCTS_LISTING_PAGE_LINK} =  xpath=//a[normalize-space()='Products']
${PRODUCTS_LISTING_ROWS} =  xpath=//div[@class='panel-body']//tbody//tr
${PRODUCTS_LISTING_COLUMNS} =  xpath=//div[@class='panel-body']//tbody//tr[1]//td

#    def PRODUCTS_LISTING_COLUMN_VALUE(self, i, j):
#        return By.XPATH, "//div[@class='panel-body']//tbody//tr[" + i + "]//td[" + j + "]"

#ADD PRODUCT PAGE LOCATORS
${SAVE_PRODUCT_ICON} =  xpath=//button[@type='submit']"
${ADD_PRODUCT_TAB_GENERAL} =  xpath=//a[normalize-space()='General']"
${PRODUCT_GEN_PRODUCT_NAME} =  id=input-name1
${PRODUCT_GEN_META_TAG_TITLE} =  id=input-meta-title1
${ADD_PRODUCT_TAB_DATA} =  xpath=//a[normalize-space()='Data']
${ADD_PRODUCT_TAB_LINKS} =  xpath=//a[normalize-space()='Link']
${ADD_PRODUCT_TAB_ATTRIBUTE} =  xpath=//a[normalize-space()='Attribute']
${ADD_PRODUCT_TAB_OPTION} =  xpath=//a[normalize-space()='Option']
${ADD_PRODUCT_TAB_RECURRING} =  xpath=//a[normalize-space()='Recurring']

${VALIDATION_ADD_PRODUCT_BANNER} =  xpath=//div[@class='alert alert-danger alert-dismissible']
${VALIDATION_COMMON_LOCATOR} =  /following-sibling::div[@class='text-danger']
${VALIDATION_PRODUCT_NAME} =  xpath=//input[@id='input-name1'] + ${validation_common_locator}
${VALIDATION_META_TAG} =  xpath=//input[@id='input-meta-title1'] + ${validation_common_locator}