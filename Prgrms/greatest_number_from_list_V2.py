list1=[]
while True:
    print("Enter an integer to the list:")
    element=int(input())
    list1.append(element)
    print("Is it end of?(y/n)")
    flag=input()
    if flag == "y":
        print("The List=",list1)
        print("Maximum value in this list:",max(list))
