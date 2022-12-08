# main

# module import
## 라이브러리 설치 및 불러오기
from preparation import P_install 

## 팀 컬러 크롤링 코드
import team_color_crawling
from team_color_crawling import TCC_main


# 사용할 라이브러리 설치 및 불러오기
P_install()

# 팀 컬러 크롤링
df_teamcolor_club,df_teamcolor_nation,df_teamcolor_reinforce,df_teamcolor_relation,df_teamcolor_special = TCC_main()

