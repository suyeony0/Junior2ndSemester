import pandas as pd
df=pd.read_csv('pandasData/data/friend_list_no_head.csv',header=None,names=['name','age','job'])
df_filtered=df[['name','age']]
print(df_filtered)
print(df.filter(items=['age','job']))
print(df.filter(like='a',axis=1)) # col 이름에 a가 들어간 것만 선택
print(df.filter(regex='b$',axis=1))#정규식 사용 b로 끝나는 컬럼 필터
