# team color list crawling
## 필요한 라이브러리 import
import numpy as np
import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By
import chromedriver_autoinstaller
from tqdm import tqdm
import time


def Team_color_list():
    driver, A = __open_chrome(1600,900,1,3) 
    teamcolor_type = __team_color_crawling_list(driver,A)
    
    return teamcolor_type


# 크롬 윈도우 설정
def __open_chrome(width ,length,start_time, end_time):
        ## 크롬 드라이버 위치 설정
        chrome_path = chromedriver_autoinstaller.install()


        ## 크롬 옵션
        options = webdriver.ChromeOptions()
        ## 크롬 윈도우 사이즈 조절 (크롬창 가로 길이,크롬창 세로 길이, 랜덤 시간값 시작 범위, 랜덤 시간값 끝 범위)
        options.add_argument(f"--window-size={width},{length}")

        driver = webdriver.Chrome(chrome_path, options=options)

        ## 실행할 시간 랜덤값 지정
        A = np.random.randint(start_time,end_time)
        
        return driver , A





## 팀 컬러 목록 크롤링
def __team_color_crawling_list(driver,A):
        # 팀 컬러 타입 리스트
        teamcolor_club = []
        teamcolor_nation = []
        teamcolor_reinforce = []
        teamcolor_relation = []
        teamcolor_special =[]
        
        # 홈페이지 열기
        url = 'https://fifaonline4.nexon.com/datacenter/teamcolor'
        driver.get(url)
        driver.implicitly_wait(time_to_wait=30)

        try:
                # 팝업창 닫기 (팝업창 오류 시 사용)
                driver.find_element(By.XPATH, '//*[@id="wrapper"]/div[1]/a/span').click()
                time.sleep(1)
        except:
                pass

        # 팀 컬러 정보 목록 저장
        for x in tqdm(range(2,7)):
                elements = __TC_list_crawling(x,driver)
                time.sleep(A)

                ## 클럽
                if x == 2:
                        for element in elements:
                                teamcolor_club.append(element.text)
                
                elif x == 3:
                        for element in elements:
                                teamcolor_nation.append(element.text)
                
                elif x == 4:
                        for element in elements:
                                teamcolor_reinforce.append(element.text)
                                
                elif x == 5:
                        for element in elements:
                                teamcolor_relation.append(element.text)
                                
                elif x == 6:
                        for element in elements:
                                teamcolor_special.append(element.text)
                
                else:
                        print('not in range')
                        
                time.sleep(A)
                driver.find_element(By.CLASS_NAME, 'btn_reset').click()
        
        
        
        
        # 팀 컬러 목록 데이터 프레임 저장
        TC_club = pd.DataFrame(data = teamcolor_club, columns = ['team color'])
        TC_nation = pd.DataFrame(data = teamcolor_nation, columns = ['team color'])
        TC_reinforce = pd.DataFrame(data = teamcolor_reinforce, columns = ['team color'])
        TC_relation = pd.DataFrame(data = teamcolor_relation, columns = ['team color'])
        TC_special = pd.DataFrame(data = teamcolor_special, columns = ['team color'])
        
        
        # csv로 파일 저장
        TC_club.to_csv("./data/team_color_list/TC_club.csv", encoding='utf-8-sig', index = False)
        TC_nation.to_csv("./data/team_color_list/TC_nation.csv", encoding='utf-8-sig', index = False)
        TC_reinforce.to_csv("./data/team_color_list/TC_reinforce.csv", encoding='utf-8-sig', index = False)
        TC_relation.to_csv("./data/team_color_list/TC_relation.csv", encoding='utf-8-sig', index = False)
        TC_special.to_csv("./data/team_color_list/TC_special.csv", encoding='utf-8-sig', index = False)
    
    
        # 팀 컬러 타입 모음
        teamcolor_type = [teamcolor_club,teamcolor_nation,teamcolor_reinforce,teamcolor_relation,teamcolor_special]
        
        return teamcolor_type



# 팀 컬러 목록 위치 데이터 찾는 함수
def __TC_list_crawling(x,driver):
        driver.find_element(By.XPATH, f'//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[{x}]').click()
        driver.find_element(By.CLASS_NAME, 'btn_search').click()
        driver.implicitly_wait(time_to_wait=20)

        elements = driver.find_elements(By.CLASS_NAME , 'name')

        return elements