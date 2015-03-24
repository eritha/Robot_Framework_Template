#  This module handle date time for robot FW.
#  function. 
import datetime
import time
from pprint import pprint as p
from datetime import date, timedelta#, time
from pytz import timezone
#import pytz 


def convert_month_to_number(string_month):
    months = {
        'january': 1,
        'february': 2,
        'march': 3,
        'april': 4,
        'may': 5,
        'june': 6,
        'july': 7,
        'august': 8,
        'september': 9,
        'october': 10,
        'november': 11,
        'december': 12,
        'jan': 1,
        'feb': 2,
        'mar': 3,
        'apr': 4,
        'may': 5,
        'jun': 6,
        'jul': 7,
        'aug': 8,
        'sep': 9,
        'oct': 10,
        'nov': 11,
        'dec': 12
    }

    if string_month.lower().replace(' ', '') in months:
        return months[string_month.lower()]
    else:
        return 'Month input is incorrect format!'
		
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
			
def get_prev_date(string_date, number_date):
	# get previous date with string date - number date
	t=time.strptime(string_date.replace(' ', ''),'%b%d%y')
	newdate=date(t.tm_year,t.tm_mon,t.tm_mday)-timedelta(days=int(number_date)) 
	return	newdate.strftime('%b%d%y')
	
def get_next_date(string_date, number_date):
	# get next date with string date + number date
	t=time.strptime(string_date.replace(' ', ''),'%b%d%y')
	newdate=date(t.tm_year,t.tm_mon,t.tm_mday)+timedelta(days=int(number_date)) 
	return	newdate.strftime('%b%d%y')
	
def get_date_time_zone(string_zone, string_format_datetime):
	#EX: get_date_time_zone("America/Tijuana", "%Y-%m-%d") / #fmt = "%Y-%m-%d %H:%M:%S %Z%z"
	# list zones: http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
	# Current time in UTC 
	now_utc = datetime.datetime.now(timezone('UTC'))
	print now_utc.strftime(string_format_datetime)

	# Convert time zone 
	now_zone = now_utc.astimezone(timezone(string_zone))
	print now_zone.strftime(string_format_datetime)
	return	now_zone.strftime(string_format_datetime)
	
	
if __name__ == '__main__':
    pass  
	#print get_prev_date('Jun0111', 37)
	#print get_next_date('Jun0111', 20)

