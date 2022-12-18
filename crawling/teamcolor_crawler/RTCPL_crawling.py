# relation team color player list
## 필요한 라이브러리 import
import pandas as pd
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from tqdm import tqdm
import time

from data_healer import load_TCL_data
from TCL_crawling import __open_chrome




## 관계 팀 컬러 적용 선수만 가져오는 크롤링 코드
def relation_team_color_player_list(df_teamcolor_relation):
    teamcolor_type = load_TCL_data()
    teamcolor_relation = teamcolor_type[3]
    driver, A = __open_chrome(1600,1200,1,3) 
    df_TC_relation_plus = __df_teamcolor_relation_plus(driver,A,teamcolor_relation)
    df_TC_relation_final = __merge_TC_relation(df_teamcolor_relation, df_TC_relation_plus)
    df_TC_relation_final.to_csv('관계팀컬러.csv', encoding='utf-8-sig', index = False)
    
    return df_TC_relation_final



## 정보 입력 코드
def __insert_player_info(driver,path,num):
    driver.find_element(By.XPATH, path).send_keys(Keys.RIGHT)
    time.sleep(0.03)
    driver.find_element(By.XPATH, path).send_keys(Keys.RIGHT)
    time.sleep(0.03)
    driver.find_element(By.XPATH, path).send_keys(Keys.RIGHT)
    time.sleep(0.03)
    driver.find_element(By.XPATH, path).send_keys(Keys.BACKSPACE)
    time.sleep(0.03)
    driver.find_element(By.XPATH, path).send_keys(Keys.BACKSPACE)
    time.sleep(0.03)
    driver.find_element(By.XPATH, path).send_keys(Keys.BACKSPACE)
    time.sleep(0.03)
    driver.find_element(By.XPATH, path).send_keys(str(num))
    time.sleep(0.03)
    
    
## 관계 팀 컬러 선수 시즌 & 이름 크롤링
def __df_teamcolor_relation_plus(driver,A,teamcolor_relation):
    # 팀컬러 기준을 만족하는 선수 리스트
    TC_relation_plus = []

    # 홈페이지 열기
    url = 'https://fifaonline4.nexon.com/datacenter/teamcolor'
    driver.get(url)

    # 팝업창 닫기
    try:
        driver.find_element(By.XPATH, '//*[@id="wrapper"]/div[1]/a/span').click()
        driver.implicitly_wait(time_to_wait=30)
    except:
        pass


    for x in tqdm(teamcolor_relation):
        # 각 팀 컬러 별 선수목록 저장 리스트
        each_teamcolor_players = []
        
        try:
            # 팀 컬러 타입 선택
            driver.find_element(By.XPATH, '//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[5]/label').click() 
            time.sleep(1)
      

            # 팀 컬러 입력 & 검색
            driver.find_element(By.CLASS_NAME, 'ui-autocomplete-input').click()
            driver.find_element(By.CLASS_NAME, 'ui-autocomplete-input').send_keys(x)
            time.sleep(0.2)
            driver.find_element(By.CLASS_NAME, 'btn_search').click()
            driver.implicitly_wait(time_to_wait=10)


            # 세부 설명 들어가기
            driver.find_element(By.CSS_SELECTOR, 'div:nth-child(1) > div.name').click()
            driver.find_element(By.CLASS_NAME, 'btn_detail_link').click()
            driver.implicitly_wait(time_to_wait=10)
            
            
            
            # 오버롤 검색결과 최고 값 부터 10씩 감소 ~ 41 까지
            try:
                max_num = int(driver.find_element(By.XPATH, '//*[@id="ulPlayerList"]/li[1]/div[1]/div[3]/span').text)
            except:
                max_num = int(driver.find_element(By.XPATH, '//*[@id="ulPlayerList"]/li[1]/div[1]/div[3]/span[1]').text)
            
            min_num = max_num - 10
            
            
            while min_num > 40:
                try:
                    # 팀 컬러 하나의 선수 목록을 저장할 리스트
                    temp_TC_relation_plus =[]
                    
                    # 오버롤 초기화 및 입력
                    # 최소값 입력
                    __insert_player_info(driver,'//*[@id="slider1"]/input[1]',min_num)
                    # 최대값 입력
                    __insert_player_info(driver,'//*[@id="slider1"]/input[2]',max_num)
                    
                    driver.find_element(By.XPATH, '//*[@id="slider1"]/input[2]').send_keys(Keys.ENTER)
                    driver.implicitly_wait(time_to_wait=10)
                    
                    
                    # 조건 만족하는 선수 숫자 세기
                    player_list = driver.find_elements(By.XPATH,'//*[@id="ulPlayerList"]')
                    player_list_num = int(player_list[0].text.count('BP'))
                    time.sleep(0.2)

                    
                    
                    # 시즌 & 선수명 추출
                    for num in range(1,player_list_num+1):         
                        season_temp = driver.find_element(By.XPATH, f'//*[@id="ulPlayerList"]/li[{num}]/div[1]/div[3]/div[1]/img')
                        player_temp = driver.find_element(By.XPATH, f'//*[@id="ulPlayerList"]/li[{num}]/div[1]/div[3]/div[2]')
                        season = season_temp.get_attribute('src').split('/')[-1].replace('.png','')
                        player = player_temp.text

                        # 시즌 & 선수명 합치기
                        total_temp = season+' '+player
                        temp_TC_relation_plus.append(total_temp)
                        
                    time.sleep(0.5)
                    # 각 팀컬러 별 선수 합쳐주기
                    each_teamcolor_players.extend(temp_TC_relation_plus)
          
                except:
                    if driver.find_element(By.XPATH, '//*[@id="ulPlayerEmpty"]/li/div[2]').text == '검색된 선수가 없습니다.':
                        break
   
                max_num -= 10
                min_num -= 10     
                time.sleep(0.1)
            
            ## 중복값 제거    
            each_teamcolor_players = list(set(each_teamcolor_players))
            
            ## 최종 리스트에 추가    
            TC_relation_plus.append(each_teamcolor_players)
          

            # 세부 설명 나오기
            driver.find_element(By.CLASS_NAME, 'btn_close').click()
            time.sleep(0.3)

            # 검색어 초기화 
            driver.find_element(By.CLASS_NAME, 'btn_reset').click()
            time.sleep(A)
   
        except:
            print('error: 팀 컬러 선택 & 상세 정보 클릭')
            break
        
                
    # dict로 변형 & 데이터 프레임화
    dict_temp = {  '팀 컬러': [val for val in teamcolor_relation],
                '시즌 & 이름': [val for val in TC_relation_plus]}
    columns = ['팀 컬러','시즌 & 이름']

    
    try:
        df_TC_relation_plus = pd.DataFrame(data = dict_temp, columns=columns)
        
        return df_TC_relation_plus
    except:
        print('error: To making dictionary is failed')
        return dict_temp


def __merge_TC_relation(df_teamcolor_relation, df_TC_relation_plus):
    df_TC_relation_plus = pd.merge(df_teamcolor_relation, df_TC_relation_plus, on = '팀 컬러', how = 'left')
    
    return df_TC_relation_plus