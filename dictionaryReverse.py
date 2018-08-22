# program to reverse keys and values
dictVar = {
   'vinod.txt':'Dad',
   'Nevaan.txt':'Dad',
   'Lakshmi.txt':'Mom',   
    }

print(dictVar)

def rev(**kwargs):
    dict1 = kwargs
    list1 = dict1.keys()
    list2 = dict1.values()
    newDict = dict()
    count = 0
    dummylist = list()
    
    for i in list1:        
        if dict1[i] in list2:
            newDict[dict1[i]] = newDict.get(dict1[i],[]) +[i]
            
    return newDict

y = rev(**dictVar)

print(y)
    

