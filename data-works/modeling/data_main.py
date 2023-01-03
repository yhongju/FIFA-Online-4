# 사용자 지정 함수 모듈 불러오기
from module.data_pretreatment import *
# 데이터를 불러오기 위한 모듈 import
import pandas as pd
# 데이터 불러오기
df = pd.read_csv("/Users/minseongcheol/Documents/FIFA/player_db_df.csv")
# 불러온 데이터를 포지션별 스탯값으로 컬럼화 시키는 모듈
test = pretreatment_pomation(df)
# print(test)
# 위에서 정의한 데이터를 특성 불필요 value값 제거 후 재 정의
test = pretreatment_skill_swap(test)
# print(test.skill_swap)

# 위에서 최종 정의된 DataFrame을 csv파일로 저장
test.to_csv("/Users/minseongcheol/Documents/FIFA/df_pretreatment.csv", index=False)