from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager

'''This custom utility is used for some generic methods '''


def initiate_browser(browser_name):
    if browser_name == browser_name:
        driver = webdriver.Chrome(ChromeDriverManager().install())
    elif browser_name == browser_name:
        driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
    return driver


def select_dropdown_values(option_list, value_list):
    if not value_list[0] == 'all':
        for ele in option_list:
            print(ele.text)
            for k in range(len(value_list)):
                if ele.text == value_list[k]:
                    ele.click()

                    break
    else:
        try:
            for ele in option_list:
                print(ele.text)
                ele.click()
        except Exception as e:
                print(e)