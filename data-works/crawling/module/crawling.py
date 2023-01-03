# line97, time sleep관련 모듈
import numpy as np
# DataFrame을 위한 모듈
import pandas as pd
# import requests # 크롤링에 사용하는 패키지
# from bs4 import BeautifulSoup # html 변환에 사용함

# 트래픽 과부화 우려를 보완하기 위한 모듈 import
import time

# selenium 모듈 
from selenium import webdriver
from selenium.webdriver.common.by import By
# chrome 모듈
import chromedriver_autoinstaller

# tqdm : for문 진행상황 체크
from tqdm import tqdm, tqdm_notebook


# 다른 디렉토리 파일 읽기 위한 모듈
import sys
sys.path.append("/Users/minseongcheol/Documents/FIFA/")

# 워닝 무시
import warnings
warnings.filterwarnings('ignore')



# crawling 후 dictionary data 반환 함수
def crawling_to_dict(df):

    ## 크롬 윈도우 설정
    # 크롬 옵션
    options = webdriver.ChromeOptions()

    # 크롬 윈도우 사이즈 조절
    options.add_argument("--window-size=800,1200")

    # 필요 data를  list로 append 해주기 위해 list변수 지정
    pk = [] # pk값
    name = [] # 선수명
    pay_side = [] # 급여
    position = [] # 포지션, 스탯?
    overall = [] # 선수 총 스탯
    formation = [] # 포지션 별 스탯
    skill_swap = [] # 선수 특성
    etc_birth = [] # 선수 생년월일
    etc_height = [] # 선수 키
    etc_weight = [] # 선수 몸무계
    etc_physical = [] # 선수 체향
    etc_skill = [] # 개인기 (별 6개 만점)
    etc_foot = [] # 주발? 약발
    etc_nation = [] # 선수 국가
    etc_team = [] # 현제 소속 팀
    etc_career = [] # 클럽 경력
    Sprint_speed  = [] # 속력
    Acceleration = [] # 가속력
    Finishing = [] # 결정력
    Shot_power = [] # 슛 파워
    Long_shots = [] # 중거리 슛
    Positioning = [] # 위치선정
    Volleys = [] # 발리 슛
    Penalties = [] # 패널티킥
    Short_pass = [] # 짧은 패스
    Eyesight = [] # 시야
    Crossing = [] # 크로스
    Long_pass = [] # 롱 패스
    FK_Acc = [] # 프리킥
    Curve = [] # 커브
    Dribbling = [] # 드리블
    Ball_control = [] # 볼 컨트롤
    Agility = [] # 민첩성
    Balance = [] # 밸런스
    Reflexes = [] # Reflexes
    Interpersonal_defense = [] # 대인 수비
    Stand_tackle = [] # (스탠딩)태클
    Interception = [] # 가로채기
    Heading = [] # 헤딩
    Slide_tackle = [] # 슬라이딩 태클
    Strength = [] # 몸싸움
    Stamina = [] # 스태미너
    Aggression = [] # 적극성
    Jumping = [] # 점프
    Composure = [] # 침착성
    GK_Diving = [] # (골키퍼) 다이빙
    GK_Handling = [] # (골키퍼) 핸들링
    GK_Kicking = [] # (골키퍼) 킥
    GK_Reflexes = [] # (골키퍼) Reflexes
    GK_Positioning = [] # (골키퍼) 위치 선정
    price = [] # 현제 가격


    # time sleep을 위한 시간 지정
    A = np.random.randint(2,3)

    # 전달받은 open api(pk값으로 된 DataFrame) 를 반복하여 데이터 크롤링
    for i in tqdm(df.id[:10]):
        try:   
            chrome_path = chromedriver_autoinstaller.install()
            driver = webdriver.Chrome(chrome_path, options=options)
            driver.get(f"https://fifaonline4.nexon.com/DataCenter/PlayerInfo?1confederation=0&n4leagueid=0&strseason=&strposition=&strphysical=&n1leftfootablity=0&n1rightfootablity=0&n1skillmove=0&n1interationalrep=0&n4birthmonth=0&n4birthday=0&n4teamid=0&n4nationid=0&strability1=&strability2=&strability3=&strtrait1=&strtrait2=&strtrait3=&strtraitnon1=&strtraitnon2=&strtraitnon3=&n1grow=0&n1teamcolor=0&strskill1=sprintspeed&strskill2=acceleration&strskill3=strength&strskill4=stamina&strsearchstatus=off&strorderby=&teamcolorid=0&strteamcolorcategory=&n1history=0&n4playyear=0&strplayername=%eb%8d%b0%ec%9d%b4%eb%b9%84%eb%93%9c%20%ec%8b%9c%eb%a8%bc&strteamname=&strnationname=&strteamcolorname=&n4ovrmin=0&n4ovrmax=200&n4salarymin=4&n4salarymax=99&n8playergrade1min=0&n8playergrade1max=99999&n1ability1min=40&n1ability1max=200&n1ability2min=40&n1ability2max=200&n1ability3min=40&n1ability3max=200&n4birthyearmin=1900&n4birthyearmax=2010&n4heightmin=140&n4heightmax=208&n4weightmin=50&n4weightmax=110&n4avgpointmin=0&n4avgpointmax=10&spid={i}&n1Strong=1")
            
            # 크롤링 할 시간 간격 설정
            time.sleep(A)

            # 위에서 지정한 list에 크롤링한 data append
            pk.append(i)
            name.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[1]/div[2]').text)
            pay_side.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[1]/div[3]/div').text)
            position.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[2]/span/span[1]').text)
            overall.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[2]/span/span[2]').text)
            formation.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[3]').text)
            skill_swap.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[5]').text)
            etc_birth.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[3]/span[1]').text)
            etc_height.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[3]/span[2]').text)
            etc_weight.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[3]/span[3]').text)
            etc_physical.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[3]/span[4]').text)
            etc_skill.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[3]/span[5]/span').text)
            etc_foot.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[3]/span[6]').text)
            etc_nation.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[4]/div[2]/span[2]').text)
            try:
                etc_team.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[1]/div[2]/div[4]/div[1]/span[2]').text)
            except:
                etc_team.append("-")
            try:
                etc_career.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[4]/div[1]/div[2]/div[2]/ul').text)
            except:
                etc_career.append("-")
            Sprint_speed.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[1]/div[2]').text)
            Acceleration.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[2]/div[2]').text)
            Finishing.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[3]/div[2]').text)
            Shot_power.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[4]/div[2]').text)
            Long_shots.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[5]/div[2]').text)
            Positioning.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[6]/div[2]').text)
            Volleys.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[1]/li[7]/div[2]').text)
            Penalties.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[1]/div[2]').text)
            Short_pass.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[2]/div[2]').text)
            Eyesight.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[3]/div[2]').text)
            Crossing.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[4]/div[2]').text)
            Long_pass.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[5]/div[2]').text)
            FK_Acc.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[6]/div[2]').text)
            Curve.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[2]/li[7]/div[2]').text)
            Dribbling.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[1]/div[2]').text)
            Ball_control.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[2]/div[2]').text)
            Agility.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[3]/div[2]').text)
            Balance.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[4]/div[2]').text)
            Reflexes.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[5]/div[2]').text)
            Interpersonal_defense.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[6]/div[2]').text)
            Stand_tackle.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[3]/li[7]/div[2]').text)
            Interception.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[1]/div[2]').text)
            Heading.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[2]/div[2]').text)
            Slide_tackle.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[3]').text)
            Strength.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[4]/div[2]').text)
            Stamina.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[5]/div[2]').text)
            Aggression.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[6]/div[2]').text)
            Jumping.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[4]/li[7]/div[2]').text)
            Composure.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[5]/li[1]/div[2]').text)
            GK_Diving.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[5]/li[2]/div[2]').text)
            GK_Handling.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[5]/li[3]/div[2]').text)
            GK_Kicking.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[5]/li[4]/div[2]').text)
            GK_Reflexes.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[5]/li[5]/div[2]').text)
            GK_Positioning.append(driver.find_element(By.XPATH, '//*[@id="middle"]/div/div/div[2]/div[2]/div/div[3]/ul[5]/li[6]/div[2]').text)
            price.append(driver.find_element(By.XPATH, '//*[@id="PlayerPriceGraph"]/div[1]/div[2]/div/strong').text)


        # 문제 발생시 해당 pk값 반환 및 정지
        except:
            print(i)
            break
    
    # 위에서 크롤링하고 list로 append한 데이터를 dictionary 화
    val_dict = {"pk" : [val for val in pk], # pk
        'name' : [val for val in name], # 선수명
        'pay_side' : [val for val in pay_side], # 급여
        'position' : [val for val in position], # 포지션, 스탯?
        'overall' : [val for val in overall], # 선수 총 스탯
        'formation' : [val for val in formation],
        'skill_swap' : [val for val in skill_swap], # 선수 특성
        'etc_birth' : [val for val in etc_birth], # 선수 생년월일
        'etc_height' : [val for val in etc_height], # 선수 키
        'etc_weight' : [val for val in etc_weight], # 선수 몸무계
        'etc_physical' : [val for val in etc_physical], # 선수 체향
        'etc_skill' : [val for val in etc_skill], # 개인기 (별 6개 만점)
        'etc_foot' : [val for val in etc_foot], # 주발? 약발
        'etc_nation' : [val for val in etc_nation], # 선수 국가
        'etc_team' : [val for val in etc_team], # 현제 소속 클럽
        'etc_career' : [val for val in etc_career], # 클럽 경력
        'Sprint_speed'  : [val for val in Sprint_speed], # 속력
        'Acceleration' : [val for val in Acceleration], # 가속력
        'Finishing' : [val for val in Finishing], # 결정력
        'Shot_power' : [val for val in Shot_power], # 슛 파워
        'Long_shots' : [val for val in Long_shots], # 중거리 슛
        'Positioning' : [val for val in Positioning], # 위치선정
        'Volleys' : [val for val in Volleys], # 발리 슛
        'Penalties' : [val for val in Penalties], # 패널티킥
        'Short_pass' : [val for val in Short_pass], # 짧은 패스
        'Eyesight' : [val for val in Eyesight], # 시야
        'Crossing' : [val for val in Crossing], # 크로스
        'Long_pass' : [val for val in Long_pass], # 롱 패스
        'FK_Acc' : [val for val in FK_Acc], # 프리킥
        'Curve' : [val for val in Curve], # 커브
        'Dribbling' : [val for val in Dribbling], # 드리블
        'Ball_control' : [val for val in Ball_control], # 볼 컨트롤
        'Agility' : [val for val in Agility], # 민첩성
        'Balance' : [val for val in Balance], # 밸런스
        'Reflexes' : [val for val in Reflexes], # Reflexes
        'Interpersonal_defense' : [val for val in Interpersonal_defense], # 대인 수비
        'Stand_tackle' : [val for val in Stand_tackle], # (스탠딩)태클
        'Interception' : [val for val in Interception], # 가로채기
        'Heading' : [val for val in Heading], # 헤딩
        'Slide_tackle' : [val for val in Slide_tackle], # 슬라이딩 태클
        'Strength' : [val for val in Strength], # 몸싸움
        'Stamina' : [val for val in Stamina], # 스태미너
        'Aggression' : [val for val in Aggression], # 적극성
        'Jumping' : [val for val in Jumping], # 점프
        'Composure' : [val for val in Composure], # 침착성
        'GK_Diving' : [val for val in GK_Diving], # (골키퍼) 다이빙
        'GK_Handling' : [val for val in GK_Handling], # (골키퍼) 핸들링
        'GK_Kicking' : [val for val in GK_Kicking], # (골키퍼) 킥
        'GK_Reflexes' : [val for val in GK_Reflexes], # (골키퍼) Reflexes
        'GK_Positioning' : [val for val in GK_Positioning], # (골키퍼) 위치 선정
        'price' : [val for val in price] # 가격
        }

    # dictionary data 반환
    return val_dict


# dictionary data를 전달받으면 DataFrame 출력 및 csv파일로 저장
def dict_to_frame(val_dict):
    df = pd.DataFrame(val_dict)
    # infomation 출력
    print(df.info())
    # csv파일로 저장
    df.to_csv("test_df.csv", index=False) #, mode="w") << 저장 불가로 코드 추가했으나, 기존 코드도 이상없이 정상 작동;
    # 반환
    return df
    