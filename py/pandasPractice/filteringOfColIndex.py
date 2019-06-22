import pandas as pd
friend_list=[
    ['John',20,'student'],
    ['Jenny',30,'teacher'],
    ['Loui',26,'developer']
]
df=pd.DataFrame.from_records(friend_list)
print(df.iloc[:2,0:2]) #앞에 콜론은 행, 뒤의 콜론은 열
