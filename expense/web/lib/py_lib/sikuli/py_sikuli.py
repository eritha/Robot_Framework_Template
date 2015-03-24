from __future__ import with_statement
from sikuliwrapper import *
from sikuli.Sikuli import *

addimagepath(common.cfgImageLibrary)

class FrontRetail(BaseLogger):
	ROBOT_LIBRARY_SCOPE = 'TEST SUITE'
	Setting.OcrTextRead
	
	
    def __init__(self):
        self.appCoordinates = (0,0,1366,768)
    
    def launch_application(self):
		FrontRetailApp = App("FrontRetail")
		FrontRetailApp.focus ("ICG FrontRetail 2014")
		
	
	
	
	
	
        driver = self.driver
        driver.get(self.base_url + "/users/dashboard")
        driver.find_element_by_link_text("Expenses").click()
        try: self.assertEqual("TriNet Expense Expenses", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_css_selector("i > span").click()
        try: self.assertEqual("May 20 14", driver.find_element_by_id("dp1400556598346").get_attribute("value"))
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("May 20 14", driver.find_element_by_id("dp1400556763452").get_attribute("value"))
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertRegexpMatches(driver.find_element_by_css_selector("li.clearfix > label").text, r"^exact:Client\([\s\S]*\)$")
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertRegexpMatches(driver.find_element_by_xpath("//div[@id='editDetailsPanel']/ul[2]/li/label").text, r"^exact:Project \([\s\S]*\)$")
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertRegexpMatches(driver.find_element_by_css_selector("li.time-rate-field > label").text, r"^exact:Hourly Rate \([\s\S]*\)$")
        except AssertionError as e: self.verificationErrors.append(str(e))
    
    def is_element_present(self, how, what):
        try: self.driver.find_element(by=how, value=what)
        except NoSuchElementException, e: return False
        return True
    
    def is_alert_present(self):
        try: self.driver.switch_to_alert()
        except NoAlertPresentException, e: return False
        return True
    
    def close_alert_and_get_its_text(self):
        try:
            alert = self.driver.switch_to_alert()
            alert_text = alert.text
            if self.accept_next_alert:
                alert.accept()
            else:
                alert.dismiss()
            return alert_text
        finally: self.accept_next_alert = True
    
    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verificationErrors)

if __name__ == "__main__":
    unittest.main()
