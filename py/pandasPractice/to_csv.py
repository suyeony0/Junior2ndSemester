import pandas as pd
friend_list=[
{'name':'John','age':20,'job':'student'},
{'name':'Nach','age':30,'job':'teacher'},
{'name':'Loui','age':26,'job':None}
]
df=pd.DataFrame(friend_list,columns=['name','age','job'])
df.to_csv('friend.csv',index=False,header=False,na_rep='-')
print(df)
