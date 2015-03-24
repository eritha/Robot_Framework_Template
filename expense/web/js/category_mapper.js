//  This small snip of javascript takes an open category list from the expenses
//  page of www.expensecloud.com and returns a list.  Each element of the list 
//  is either a string or another list.  The output can be processed by 
//  the CatMapper.py module.   
//  
//  The reason lists are used in both cases is to preserve order.
//  
//  Author:  JHautzinger
//  

var catDrop = window.document.getElementsByClassName("hasArrow");
var catMapList = [];
for (var i = 0; i < catDrop.length; i++ )
{
    var parentCatName = catDrop[i].getElementsByTagName("a")[0].getAttribute("title");
    var childListItems = catDrop[i].getElementsByTagName("li");
    if ( childListItems.length > 1)
    {
        childMapList = [parentCatName];
        for ( var j = 0; j < childListItems.length; j++ )
        {
            var currentLI = childListItems[j];
            if( currentLI.getElementsByTagName("a")[0].getAttribute("title") )
            {
                childMapList.push(currentLI.getElementsByTagName("a")[0].getAttribute("title"));
            }
        }
        catMapList.push(childMapList);
    }
    else 
    {
        catMapList.push(parentCatName);
    }
}
return catMapList;


