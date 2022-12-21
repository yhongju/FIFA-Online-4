# 사용자 지정 함수 모듈 불러오기
from module import crawling

# nexon developers open api를 사용하기 위한 모듈 import
import requests
# open api로 받아온 json 데이터를 DataFrame화 하기 위한 모듈 import
import pandas as pd


# nexon developers open api // 선수 고유 식별자(spid) 메타데이터 조회
spid_url = requests.get('https://static.api.nexon.co.kr/fifaonline4/latest/spid.json')

# json파일 변수 지정
spid_data = spid_url.json()

# 위 json파일을 DataFrame으로 변경 후 변수 지정
df = pd.DataFrame(spid_data)

# DaraFrane 변수를 사용자 지정 함수로 전달 및 반환값 변수 저장 // open api DataFrame을 전달값으로 주면, 크롤링 후 데이터를 dictionary data로 반환
val_dict = crawling.crawling_to_dict(df)

# 위 반환값인 dictionary data를 지정 함수로 전달 및 반환값 변수 저장 // 위 반환값을 전달값으로 주고, DataFrame 반환 및 csv파일로 저장
test_df = crawling.dict_to_frame(val_dict)
