# team_color_detail crawling
## 필요한 라이브러리 import
import pandas as pd
from selenium.webdriver.common.by import By
from tqdm import tqdm
import time

from TCL_crawling import __open_chrome




## 각 팀 컬러 별 적용 조건, 효과 가져오기
def team_color_detail(teamcolor_type):
    driver, A = __open_chrome(1600,900,1,3) 
    df_teamcolor_relation = __team_color_crawling_data(driver, A,teamcolor_type)
    
    return df_teamcolor_relation
    

    


# css selector 위치 입력기
def __location_inputor(driver,num,type):
    if type == 'div':
        temp_1 = driver.find_element(By.CSS_SELECTOR, 'div > div.lv_content > div.desc').text
        temp_2 = driver.find_element(By.CSS_SELECTOR, 'div > div.lv_content > div.ap_list').text
        temp_2 = temp_2.replace('\n',' / ').replace('-','')
        
    elif type == 'div.level.lvu':
        temp_1 = driver.find_element(By.CSS_SELECTOR, f'div.level.lvu{num} > div.lv_content > div.desc').text
        temp_2 = driver.find_element(By.CSS_SELECTOR, f'div.level.lvu{num} > div.lv_content > div.ap_list').text
        temp_2 = temp_2.replace('\n',' / ').replace('-','')
        
    elif type == 'div.level.lv':    
        temp_1 = driver.find_element(By.CSS_SELECTOR, f'div.level.lv{num} > div.lv_content > div.desc').text
        temp_2 = driver.find_element(By.CSS_SELECTOR, f'div.level.lv{num} > div.lv_content > div.ap_list').text
        temp_2 = temp_2.replace('\n',' / ').replace('-','')
        
    return temp_1, temp_2



# 팀 컬러 타입 별 적용 조건 & 효과 저장
def __team_color_crawling_data(driver, A,teamcolor_type):
    # 변수 재 지정
    teamcolor_club = list(teamcolor_type[0])
    teamcolor_nation = list(teamcolor_type[1])
    teamcolor_reinforce = list(teamcolor_type[2])
    teamcolor_relation = list(teamcolor_type[3])
    teamcolor_special = list(teamcolor_type[4])
    
    
    # 홈페이지 열기
    url = 'https://fifaonline4.nexon.com/datacenter/teamcolor'
    driver.get(url)
    driver.implicitly_wait(time_to_wait=30)
    
    
    # 팝업창 닫기
    try:
        driver.find_element(By.XPATH, '//*[@id="wrapper"]/div[1]/a/span').click()
        driver.implicitly_wait(time_to_wait=30)
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
                if len(teamcolors) == len(teamcolor_club):
                    driver.find_element(By.XPATH, '//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[2]').click()
                elif len(teamcolors) == len(teamcolor_nation):
                    driver.find_element(By.XPATH, '//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[3]').click() 
                elif len(teamcolors) == len(teamcolor_reinforce):
                    driver.find_element(By.XPATH, '//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[4]').click()
                elif len(teamcolors) == len(teamcolor_relation):
                    driver.find_element(By.XPATH, '//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[5]').click() 
                elif len(teamcolors) == len(teamcolor_special):
                    driver.find_element(By.XPATH, '//*[@id="sForm"]/div[3]/div[2]/div[2]/div/div/div[6]').click()
                else: 
                    print('error: not match')
                
                
                # 팀 컬러 입력 & 검색
                driver.find_element(By.CLASS_NAME, 'ui-autocomplete-input').click()
                driver.find_element(By.CLASS_NAME, 'ui-autocomplete-input').send_keys(x)
                time.sleep(0.2)
                driver.find_element(By.CLASS_NAME, 'btn_search').click()
                driver.implicitly_wait(time_to_wait=10)
                
                
                # 단계 추출 (for 문 돌릴 갯수 정하기 용도)
                number = driver.find_element(By.CSS_SELECTOR, 'div.teamcolor_item_list > div > div.level').text
                number = int(number.replace('단계',''))
                time.sleep(A) 


                # 세부 설명 들어가기
                driver.find_element(By.CSS_SELECTOR, 'div:nth-child(1) > div.name').click()
                driver.find_element(By.CLASS_NAME, 'btn_detail_link').click()
                driver.implicitly_wait(time_to_wait=10)


                # 팀 컬러 설명 저장
                info = driver.find_element(By.CSS_SELECTOR, '#teamcolorPop > div > div.header > div > span').text
                teamcolor_info.append(info)
                time.sleep(0.5)
                
                
                
                # 단계 별 적용 조건 & 적용 효과 저장
                for num in range(1,5):
                    # 1단계
                    if num == 1:
                        if number == 1:
                            # 'num'과 아래의 타입 중 하나를 골라서 넣으세요!
                            # type = 'div', 'div.level.lvu', 'div.level.lv'
                            temp_1, temp_2 = __location_inputor(driver,num,'div')
                            
                            step_1_require_player_nums.append(temp_1)
                            step_1_effects.append(temp_2)
                            
                            
                        elif number > 1:   
                            if len(teamcolors) == len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lvu')
                            
                            elif len(teamcolors) != len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lv')
                        
                            step_1_require_player_nums.append(temp_1)
                            step_1_effects.append(temp_2)
                        else:
                            step_1_require_player_nums.append('-')
                            step_1_effects.append('-') 

                    # 2단계
                    elif num == 2:
                        if num <= number:
                            if len(teamcolors) == len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lvu')
                            
                            elif len(teamcolors) != len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lv')
                            
                            step_2_require_player_nums.append(temp_1)
                            step_2_effects.append(temp_2)
                            
                        else:
                            step_2_require_player_nums.append('-')
                            step_2_effects.append('-') 
                    
                    # 3단계
                    elif num == 3:
                        if num <= number:
                            if len(teamcolors) == len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lvu')
                            
                            elif len(teamcolors) != len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lv')
                            
                            step_3_require_player_nums.append(temp_1)
                            step_3_effects.append(temp_2)
                            
                        else:
                            step_3_require_player_nums.append('-')
                            step_3_effects.append('-') 

                    # 4단계
                    elif num == 4:
                        if num <= number:
                            if len(teamcolors) == len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lvu')
                            
                            elif len(teamcolors) != len(teamcolor_reinforce):
                                temp_1, temp_2 = __location_inputor(driver,num,'div.level.lv')
                            
                            step_4_require_player_nums.append(temp_1)
                            step_4_effects.append(temp_2)
                            
                        else:
                            step_4_require_player_nums.append('-')
                            step_4_effects.append('-') 

                    else:
                        print('error: location_inputor가 작동하지 않습니다.')
                        break
                    time.sleep(0.5)
                    
                # 세부 설명 나오기
                driver.find_element(By.XPATH, '//*[@id="teamcolorPop"]/div/div[1]/a').click()
                time.sleep(0.3)

                # 검색어 초기화 
                driver.find_element(By.CLASS_NAME,'btn_reset').click()
                time.sleep(A)
            
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
    
    
    # csv파일로 저장
    df_teamcolor_club.to_csv('./data/team_color_detail/클럽팀컬러.csv', encoding='utf-8-sig', index = False)
    df_teamcolor_nation.to_csv('./data/team_color_detail/국가팀컬러.csv', encoding='utf-8-sig', index = False)
    df_teamcolor_reinforce.to_csv('./data/team_color_detail/강화팀컬러.csv', encoding='utf-8-sig', index = False)
    df_teamcolor_relation.to_csv('./data/team_color_detail/관계팀컬러.csv', encoding='utf-8-sig', index = False)
    df_teamcolor_special.to_csv('./data/team_color_detail/스페셜팀컬러.csv', encoding='utf-8-sig', index = False)
    
    
    return df_teamcolor_relation
