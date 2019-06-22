import pandas as pd
friends=[
{'name':'John','age':20,'job':'student'},
{'name':'Nate','age':30,'job':'teacher'},
{'name':'Loui','age':26,'job':'developer'}
]
df=pd.DataFrame(friends,index=['Nate','Loui'],columns=['name','age','job'])
print(df)
df.drop(['John','Nate'],inplace=True)
print(df)
