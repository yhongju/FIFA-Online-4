# data_io

import pandas as pd

base_path = './data/'

def load_dataset(csv_name):
  try:
    df = pd.read_csv(base_path+csv_name)
  except: 
    raise Exception("csv파일명을 입력하세요!")
  return df


def load_TCL_data():
  # csv 파일 불러오기
  TC_club = load_dataset('team_color_list/TC_club.csv')
  TC_nation = load_dataset('team_color_list/TC_nation.csv')
  TC_reinforce = load_dataset('team_color_list/TC_reinforce.csv')
  TC_relation = load_dataset('team_color_list/TC_relation.csv')
  TC_special = load_dataset('team_color_list/TC_special.csv')

  # 다시 리스트 형식으로 변경
  teamcolor_club = TC_club['team color']
  teamcolor_nation = TC_nation['team color']
  teamcolor_reinforce = TC_reinforce['team color']
  teamcolor_relation = TC_relation['team color']
  teamcolor_special = TC_special['team color']

  # 팀 컬러 타입 모음
  teamcolor_type = [teamcolor_club,teamcolor_nation,teamcolor_reinforce,teamcolor_relation,teamcolor_special]

  return teamcolor_type




def load_TCD_data():
  # csv 파일 불러오기
  df_teamcolor_relation = load_dataset('team_color_detail/관계팀컬러.csv')
  
  return df_teamcolor_relation
  
  
def load_final_data():
  # csv 파일 불러오기
  df_teamcolor_club = load_dataset('team_color_detail/클럽팀컬러.csv')
  df_teamcolor_nation = load_dataset('team_color_detail/국가팀컬러.csv')
  df_teamcolor_reinforce = load_dataset('team_color_detail/강화팀컬러.csv')
  df_teamcolor_relation = load_dataset('team_color_detail/관계팀컬러.csv')
  df_teamcolor_special = load_dataset('team_color_detail/스페셜팀컬러.csv')

  return df_teamcolor_club,df_teamcolor_nation,df_teamcolor_reinforce,df_teamcolor_relation,df_teamcolor_special