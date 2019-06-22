import pandas as pd
friends=[
{'name':'John','age':20,'job':'student'},
{'name':'Nate','age':30,'job':'teacher'},
{'name':'Loui','age':26,'job':'developer'}
]
df=pd.DataFrame(friends,columns=['name','age','job'])
print(df)
print(df.drop(df.index[[0,2]])) # 0번과 2번 인덱스 삭제
print(df[df.age>20]) #age가 20 이상인것만 출력
print(df.drop('age',axis=1))# axis=1 은 col중에서라는 의미이고 그중 age를 삭제 시키라는 것임
