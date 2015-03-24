#  This module deals with the returned value from the category_mapper.js
#  function. 
import datetime
import time
from pprint import pprint as p
from datetime import date, timedelta#, time
from pytz import timezone
#import pytz 


def convert_month_to_number(string_month):
	if string_month == 'Jan' or string_month == 'January':
		return 1
	elif string_month == 'Feb' or string_month == 'February':
		return 2
	elif string_month == 'Mar' or string_month == 'March':
		return 3
	elif string_month == 'Apr' or string_month == 'April':
		return 4
	elif string_month == 'May':
		return 5
	elif string_month == 'Jun' or string_month == 'June':
		return 6
	elif string_month == 'Jul' or string_month == 'July':
		return 7
	elif string_month == 'Aug' or string_month == 'August':
		return 8
	elif string_month == 'Sep' or string_month == 'September':
		return 9
	elif string_month == 'Oct' or string_month == 'October':
		return 10
	elif string_month == 'Nov' or string_month == 'November':
		return 11
	elif string_month == 'Dec' or string_month == 'December':
		return 12  
	else: print ('Month input is incorrect format!') 
def get_previous_date(string_date):
	t=time.strptime(string_date,'%b%d%y')
	newdate=date(t.tm_year,t.tm_mon,t.tm_mday)+timedelta(1)
	print newdate.strftime('%b%d%y')
	return	newdate.strftime('%b%d%y')
def get_next_date(string_date):
	t=time.strptime(string_date,'%b%d%y')
	newdate=date(t.tm_year,t.tm_mon,t.tm_mday)-timedelta(1)
	print newdate.strftime('%b%d%y')
	return	newdate.strftime('%b%d%y')

def convert_sort_month_to_long(string_month):
    months = {
        'jan': 'January',
        'feb': 'February',
        'mar': 'March',
        'apr': 'April',
        'may': 'May',
        'jun': 'June',
        'jul': 'July',
        'aug': 'August',
        'sep': 'September',
        'oct': 'October',
        'nov': 'November',
        'dec': 'December'
    } 
    if string_month.lower().replace(' ', '') in months:
		return months[string_month.lower()]
    else:
        return 'Month input is incorrect format!'
def subtraction_date_time (string_hours):
    print datetime.now() + timedelta(days=5, hours=-5)
		
if __name__ == '__main__':
    #pass
	#print datetime.date.today()-datetime.timedelta(1)
	#t=time.strptime('Jun0111','%b%d%y')
	#newdate=date(t.tm_year,t.tm_mon,t.tm_mday)+timedelta(1)
	#print newdate.strftime('%b%d%y')
	get_previous_date('Jun0111')
	get_next_date('Jun0111')
	#convert_month_to_number('Dec')
	#convert_sort_month_to_long('Dec')
	#print datetime.now() + timedelta(hours=-14)	
	#print datetime.timedelta(hours=-14) 

	#fmt = "%Y-%m-%d %H:%M:%S %Z%z"
	fmt = '%Y-%m-%d' 
	#http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
	# Current time in UTC 
	now_utc = datetime.datetime.now(timezone('UTC'))
	print now_utc.strftime(fmt)

	# Convert to US/Pacific time zone
	now_pacific = now_utc.astimezone(timezone('America/Tijuana'))
	print now_pacific.strftime(fmt)

	# Convert to Europe/Berlin time zone
	#now_berlin = now_pacific.astimezone(timezone('Europe/Berlin'))
	#print now_berlin.strftime(fmt)