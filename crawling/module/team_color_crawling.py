# team color crawling 
import numpy as np
import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.alert import Alert
from selenium.webdriver.common.keys import Keys
from selenium.webdriver import ActionChains as AC
import chromedriver_autoinstaller
from tqdm import tqdm, tqdm_notebook
from tqdm.notebook import tqdm
from time import sleep
import time

# *크롤링할 목록: 1. 팀 컬러 명  2. 단계  3. 적용 효과 (+ 관계 팀 컬러의 경우 선수 목록까지)
def TCC_main():
    # 셀레니움 설정
    ## open_chrome(크롬창 가로 길이,크롬창 세로 길이, 랜덤 시간값 시작 범위, 랜덤 시간값 끝 범위) 
    driver , A = open_chrome(800,1400,1,3) # driver: 웹드라이버 , A: 랜덤 시간 지정
    
    # 각 팀 컬러 종류 별 리스트 정리
    teamcolor_type, teamcolor_relation = team_color_crawling_list(driver,A)
    
    # 각 팀 컬러 종류 별 데이터 크롤링
    df_teamcolor_club,df_teamcolor_nation,df_teamcolor_reinforce,df_teamcolor_relation,df_teamcolor_special = team_color_crawling_data(driver, A, teamcolor_type)
    
    # 관계 팀 컬러 적용 선수 추가 크롤링
    df_TC_relation_plus = df_teamcolor_relation_plus(driver,A,teamcolor_relation)
    
    # 관계 팀 컬러 병합
    df_teamcolor_relation = merge_TC_relation(df_teamcolor_relation, df_TC_relation_plus)
    
    
    return df_teamcolor_club,df_teamcolor_nation,df_teamcolor_reinforce,df_teamcolor_relation,df_teamcolor_special


##############################################################################################################################

## 크롬 윈도우 설정
def open_chrome(width ,length,start_time, end_time):
    # 크롬 드라이버 위치 설정
    chrome_path = chromedriver_autoinstaller.install()


    # 크롬 옵션
    options = webdriver.ChromeOptions()
    # 크롬 윈도우 사이즈 조절
    options.add_argument(f"--window-size={width},{length}")

    driver = webdriver.Chrome(chrome_path, options=options)

    # 실행할 시간 랜덤값 지정
    A = np.random.randint(start_time,end_time)
    
    return driver , A

## 팀 컬러 목록 위치 데이터 찾는 함수
def TC_list_crawling(driver,A):
    driver.find_element_by_class_name('btn_search').click()
    time.sleep(A)

    locates = 'div.name'
    elements = driver.find_elements_by_css_selector(locates)
    
    return elements

## 팀 컬러 목록 크롤링 함수
def team_color_crawling_list(driver,A):
    # 팀 컬러 타입 리스트
    teamcolor_club = []
    teamcolor_nation = []
    teamcolor_reinforce = []
    teamcolor_relation = []
    teamcolor_special =[]
    
    # 홈페이지 열기
    url = 'https://fifaonline4.nexon.com/datacenter/teamcolor?strTeamColorCategory=&strTeamColorType=&strTeamColorName='
    driver.get(url)
    driver.implicitly_wait(time_to_wait=10)

    try:
        # 팝업창 닫기 (팝업창 오류 시 사용)
        driver.find_element_by_xpath('//*[@id="wrapper"]/div[1]/a/span').click()
        time.sleep(A)
    except:
        pass

    # 팀 컬러 정보 목록 저장
    for x in tqdm(range(2,7)):
            driver.find_element_by_xpath(f'//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[{x}]/label').click()
            time.sleep(A)
            
            elements = TC_list_crawling()

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
            
            driver.find_element_by_class_name('btn_reset').click()
            time.sleep(A)
    
    
    # 팀 컬러 타입 모음
    teamcolor_type = [teamcolor_club,teamcolor_nation,teamcolor_reinforce,teamcolor_relation,teamcolor_special]
    
    return teamcolor_type, teamcolor_relation



# css selector 위치 입력기
def location_inputor(driver,num,type):
    if type == 'div':
        temp_1 = driver.find_element_by_css_selector('div > div.lv_content > div.desc').text
        temp_2 = driver.find_element_by_css_selector('div > div.lv_content > div.ap_list').text
        temp_2 = temp_2.replace('\n',' / ').replace('-','')
        
    elif type == 'div.level.lvu':
        temp_1 = driver.find_element_by_css_selector(f'div.level.lvu{num} > div.lv_content > div.desc').text
        temp_2 = driver.find_element_by_css_selector(f'div.level.lvu{num} > div.lv_content > div.ap_list').text
        temp_2 = temp_2.replace('\n',' / ').replace('-','')
        
    elif type == 'div.level.lv':    
        temp_1 = driver.find_element_by_css_selector(f'div.level.lv{num} > div.lv_content > div.desc').text
        temp_2 = driver.find_element_by_css_selector(f'div.level.lv{num} > div.lv_content > div.ap_list').text
        temp_2 = temp_2.replace('\n',' / ').replace('-','')
        
    return temp_1, temp_2

## 팀 컬러 타입 별 적용 조건 & 효과 저장
def team_color_crawling_data(driver, A, teamcolor_type,teamcolor_club,teamcolor_nation,teamcolor_reinforce,teamcolor_relation,teamcolor_special):
    # 홈페이지 열기
    url = 'https://fifaonline4.nexon.com/datacenter/teamcolor?strTeamColorCategory=&strTeamColorType=&strTeamColorName='
    driver.get(url)
    
    # 팝업창 닫기
    try:
        driver.find_element_by_xpath('//*[@id="wrapper"]/div[1]/a/span').click()
        time.sleep(A)
    except:
        pass


    count = 0

    for teamcolors in tqdm(teamcolor_type):
        # 크롤링한 결과를 저장할 리스트
        teamcolor_info = []
        step_1_require_player_nums = []
        step_2_require_player_nums = []
        step_3_require_player_nums = []
        step_4_require_player_nums = []
        step_1_effects = []
        step_2_effects = []
        step_3_effects = []
        step_4_effects = []
        
        for x in tqdm(teamcolors):
            try:
                # 팀 컬러 타입 선택
                if teamcolors == teamcolor_club:
                    driver.find_element_by_xpath('//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[2]/label').click()
                elif teamcolors == teamcolor_nation:
                    driver.find_element_by_xpath('//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[3]/label').click() 
                elif teamcolors == teamcolor_reinforce:
                    driver.find_element_by_xpath('//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[4]/label').click()
                elif teamcolors == teamcolor_relation:
                    driver.find_element_by_xpath('//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[5]/label').click() 
                elif teamcolors == teamcolor_special:
                    driver.find_element_by_xpath('//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[6]/label').click()  
                
                time.sleep(1)
                
                
                # 팀 컬러 입력 & 검색
                driver.find_element_by_class_name('ui-autocomplete-input').click()
                driver.find_element_by_class_name('ui-autocomplete-input').send_keys(x)
                driver.find_element_by_class_name('btn_search').click()
                driver.implicitly_wait(time_to_wait=10)
                
                
                # 단계 추출 (for 문 돌릴 갯수 정하기 용도)
                number = driver.find_element_by_css_selector('div.teamcolor_item_list > div > div.level').text
                number = int(number.replace('단계',''))


                # 세부 설명 들어가기
                driver.find_element_by_class_name('name').click()
                driver.find_element_by_class_name('btn_detail_link').click()
                time.sleep(A) 


                # 팀 컬러 설명 저장
                info = driver.find_element_by_css_selector('#teamcolorPop > div > div.header > div > span').text
                teamcolor_info.append(info)
                time.sleep(1)
                
                
                
                # 단계 별 적용 조건 & 적용 효과 저장
                for num in range(1,5):
                    # 1단계
                    if num == 1:
                        if number == 1:
                            # 'num'과 아래의 타입 중 하나를 골라서 넣으세요!
                            # type = 'div', 'div.level.lvu', 'div.level.lv'
                            temp_1, temp_2 = location_inputor(num,'div')
                            
                            step_1_require_player_nums.append(temp_1)
                            step_1_effects.append(temp_2)
                            
                        elif number > 1:   
                            if teamcolors == teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lvu')
                            
                            elif teamcolors != teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lv')
                        
                            step_1_require_player_nums.append(temp_1)
                            step_1_effects.append(temp_2)
                        else:
                            step_1_require_player_nums.append('-')
                            step_1_effects.append('-') 

                    # 2단계
                    elif num == 2:
                        if num <= number:
                            if teamcolors == teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lvu')
                            
                            elif teamcolors != teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lv')
                            
                            step_2_require_player_nums.append(temp_1)
                            step_2_effects.append(temp_2)
                            
                        else:
                            step_2_require_player_nums.append('-')
                            step_2_effects.append('-') 
                    
                    # 3단계
                    elif num == 3:
                        if num <= number:
                            if teamcolors == teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lvu')
                            
                            elif teamcolors != teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lv')
                            
                            step_3_require_player_nums.append(temp_1)
                            step_3_effects.append(temp_2)
                            
                        else:
                            step_3_require_player_nums.append('-')
                            step_3_effects.append('-') 

                    # 4단계
                    elif num == 4:
                        if num <= number:
                            if teamcolors == teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lvu')
                            
                            elif teamcolors != teamcolor_reinforce:
                                temp_1, temp_2 = location_inputor(num,'div.level.lv')
                            
                            step_4_require_player_nums.append(temp_1)
                            step_4_effects.append(temp_2)
                            
                        else:
                            step_4_require_player_nums.append('-')
                            step_4_effects.append('-') 

                    else:
                        print('error')
                    
                    time.sleep(1)
                    
                # 세부 설명 나오기
                driver.find_element_by_class_name('btn_close').click()
                time.sleep(1)

                # 검색어 초기화 
                driver.find_element_by_class_name('btn_reset').click()
                time.sleep(1)
            
            except:
                print('error: 팀 컬러 선택 & 상세 정보 클릭')
                break
            
    # dict로 변형 & 데이터 프레임화
    dict_temp = { '팀 컬러': [val for val in teamcolors],
                  '팀 컬러 설명': [val for val in teamcolor_info],             
                  '1단계 적용 조건': [val for val in step_1_require_player_nums],
                  '2단계 적용 조건': [val for val in step_2_require_player_nums],
                  '3단계 적용 조건': [val for val in step_3_require_player_nums],
                  '4단계 적용 조건': [val for val in step_4_require_player_nums],
                  '1단계 효과': [val for val in step_1_effects], 
                  '2단계 효과': [val for val in step_2_effects],
                  '3단계 효과': [val for val in step_3_effects],
                  '4단계 효과': [val for val in step_4_effects]
                  }
    
    columns = ['팀 컬러','팀 컬러 설명','1단계 적용 조건','2단계 적용 조건','3단계 적용 조건','4단계 적용 조건','1단계 효과','2단계 효과','3단계 효과','4단계 효과']
       
    if count == 0:
        df_teamcolor_club = pd.DataFrame(data = dict_temp, columns=columns)
    
    elif count == 1:
        df_teamcolor_nation = pd.DataFrame(data = dict_temp, columns=columns)
        
    elif count == 2:
        df_teamcolor_reinforce = pd.DataFrame(data = dict_temp, columns=columns)
        
    elif count == 3:
        df_teamcolor_relation = pd.DataFrame(data = dict_temp, columns=columns)
    
    elif count == 4:
        df_teamcolor_special = pd.DataFrame(data = dict_temp, columns=columns)
        
    else: 
        print('error: making dataframe')
    count += 1
    
    
    
    return df_teamcolor_club,df_teamcolor_nation,df_teamcolor_reinforce,df_teamcolor_relation,df_teamcolor_special


    
def df_teamcolor_relation_plus(driver,A,teamcolor_relation):
    # 팀컬러 기준을 만족하는 선수 리스트
    TC_relation_plus = []

    # 홈페이지 열기
    url = 'https://fifaonline4.nexon.com/datacenter/teamcolor?strTeamColorCategory=&strTeamColorType=&strTeamColorName='
    driver.get(url)

    # # 팝업창 닫기
    # driver.find_element_by_xpath('//*[@id="wrapper"]/div[1]/a/span').click()
    # time.sleep(A)

    for x in tqdm(teamcolor_relation):
    
        try:
            # 팀 컬러 타입 선택
            driver.find_element_by_xpath('//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[5]/label').click() 
            time.sleep(1)
            

            # 팀 컬러 입력 & 검색
            driver.find_element_by_class_name('ui-autocomplete-input').click()
            driver.find_element_by_class_name('ui-autocomplete-input').send_keys(x)
            driver.find_element_by_class_name('btn_search').click()
            driver.implicitly_wait(time_to_wait=10)


            # 세부 설명 들어가기
            driver.find_element_by_class_name('name').click()
            driver.find_element_by_class_name('btn_detail_link').click()
            time.sleep(A) 
            
            
            # 조건 만족하는 선수 숫자 세기
            player_list = driver.find_elements_by_xpath('//*[@id="ulPlayerList"]')
            player_list_num = int(player_list[0].text.count('BP'))

            # 팀 컬러 하나의 선수 목록을 저장할 리스트
            temp_TC_relation_plus =[]
            
            # 시즌 & 선수명 추출
            for num in range(1,player_list_num+1):         
                season_temp = driver.find_element_by_xpath(f'//*[@id="ulPlayerList"]/li[{num}]/div[1]/div[3]/div[1]/img')
                player_temp = driver.find_element_by_xpath(f'//*[@id="ulPlayerList"]/li[{num}]/div[1]/div[3]/div[2]')
                season = season_temp.get_attribute('src').split('/')[-1].replace('.png','')
                player = player_temp.text

                # 시즌 & 선수명 합치기
                total_temp = season+' '+player
                temp_TC_relation_plus.append(total_temp)
                
            TC_relation_plus.append(temp_TC_relation_plus)
            
            # 세부 설명 나오기
            driver.find_element_by_class_name('btn_close').click()
            time.sleep(1)

            # 검색어 초기화 
            driver.find_element_by_class_name('btn_reset').click()
            time.sleep(1)
        
        except:
            print('error: 팀 컬러 선택 & 상세 정보 클릭')
            break
        
                
    # dict로 변형 & 데이터 프레임화
    dict_temp = {  '팀 컬러': [val for val in teamcolor_relation],
                '시즌 & 이름': [val for val in TC_relation_plus],             
    }
    columns = ['팀 컬러','시즌 & 이름']


    df_TC_relation_plus = pd.DataFrame(data = dict_temp, columns=columns)
    
    return df_TC_relation_plus


def merge_TC_relation(df_teamcolor_relation, df_TC_relation_plus):
    df_관계_팀_컬러_plus = pd.merge(df_teamcolor_relation, df_TC_relation_plus, on = '팀 컬러', how = 'left')
    
    return df_관계_팀_컬러_plus