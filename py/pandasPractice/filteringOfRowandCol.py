import pandas as pd
friend_list=[
['name',['John','Jenny','Loui']],
['age',[20,30,26]],
['job',['student','teacher','developer']]
]
df=pd.DataFrame.from_items(friend_list)
print(df.query('age>25'))
print(df[df.age>25])
print(df[(df.age>25) & (df.name=='Loui')])
