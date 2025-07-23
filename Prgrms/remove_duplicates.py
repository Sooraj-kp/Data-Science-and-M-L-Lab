list1=[20,30,40,50,60,3,22,20,40]
print("Duplicated List:",list1)
list2=[]
for i in list1:
    if i not in list2:
        list2.append(i)
print("Deduplicated List:",list2)
