import pandas as pd

# 다른 디렉토리 파일 읽기 위한 모듈
import sys
sys.path.append("/Users/minseongcheol/Documents/FIFA/")


def pretreatment_pomation(df):
    # pomation 별 컬럼 나누기
    ST = []
    LW = []
    CF = []
    RW = []
    CAM = []
    LM = []
    CM = []
    RM = []
    CDM = []
    LWB = []
    CB = []
    RWB = []
    LB = []
    SW = []
    RB = []
    GK = []

    # pomation 컬럼 기준 position 별로 list 저장
    ST = grp_list = df.pomation.str.split('\n').str[0].tolist()
    LW = grp_list = df.pomation.str.split('\n').str[1].tolist()
    CF = grp_list = df.pomation.str.split('\n').str[2].tolist()
    RW = grp_list = df.pomation.str.split('\n').str[3].tolist()
    CAM = grp_list = df.pomation.str.split('\n').str[4].tolist()
    LM = grp_list = df.pomation.str.split('\n').str[5].tolist()
    CM = grp_list = df.pomation.str.split('\n').str[6].tolist()
    RM = grp_list = df.pomation.str.split('\n').str[7].tolist()
    CDM = grp_list = df.pomation.str.split('\n').str[8].tolist()
    LWB = grp_list = df.pomation.str.split('\n').str[9].tolist()
    CB = grp_list = df.pomation.str.split('\n').str[10].tolist()
    RWB = grp_list = df.pomation.str.split('\n').str[11].tolist()
    LB = grp_list = df.pomation.str.split('\n').str[12].tolist()
    SW = grp_list = df.pomation.str.split('\n').str[13].tolist()
    RB = grp_list = df.pomation.str.split('\n').str[14].tolist()
    GK = grp_list = df.pomation.str.split('\n').str[15].tolist()

    # dictionary 만들기
    podf = {'PO_ST' : [val for val in ST],
            'PO_LW' : [val for val in LW],
            'PO_CF' : [val for val in CF],
            'PO_RW' : [val for val in RW],
            'PO_CAM' : [val for val in CAM],
            'PO_LM' : [val for val in LM],
            'PO_CM' : [val for val in CM],
            'PO_RM' : [val for val in RM],
            'PO_CDM' : [val for val in CDM],
            'PO_LWB' : [val for val in LWB],
            'PO_CB' : [val for val in CB],
            'PO_RWB' : [val for val in RWB],
            'PO_LB' : [val for val in LB],
            'PO_SW' : [val for val in SW],
            'PO_RB' : [val for val in RB],
            'PO_GK' : [val for val in GK]}
    
    # position 별 dictionary를 new dataFrame
    poma_df = pd.DataFrame(podf, columns=['PO_ST', 'PO_LW', 'PO_CF', 'PO_RW', 'PO_CAM', 'PO_LM', 'PO_CM', 'PO_RM', 
                                        'PO_CDM', 'PO_LWB', 'PO_CB', 'PO_RWB', 'PO_LB', 'PO_SW', 'PO_RB', 'PO_GK'])

    # 기존 dataFrame에 합쳐주기
    df = df.join(poma_df, how='left')

    # 필요한 컬럼 재정렬
    df = df[['pk', 'name', 'position', 'overall', 'season', 'pay_side',
            'PO_ST', 'PO_LW', 'PO_CF', 'PO_RW', 'PO_CAM', 'PO_LM', 'PO_CM', 
            'PO_RM', 'PO_CDM', 'PO_LWB', 'PO_CB', 'PO_RWB', 'PO_LB', 'PO_SW', 'PO_RB',
            'PO_GK', 'skill_swap', 'etc_birth', 'etc_height',
            'etc_weight', 'etc_physical', 'etc_skill', 'etc_foot', 'etc_nation',
            'Sprint_speed', 'Acceleration', 'Finishing', 'Shot_power', 'Long_shots',
            'Positioning', 'Volleys', 'Penalties', 'Short_pass', 'Eyesight',
            'Crossing', 'Long_pass', 'FK_Acc', 'Curve', 'Dribbling', 'Ball_control',
            'Agility', 'Balance', 'Reflexes', 'Interpersonal_defense',
            'Stand_tackle', 'Interception', 'Heading', 'Slide_tackle', 'Strength',
            'Stamina', 'Aggression', 'Jumping', 'Composure', 'GK_Diving',
            'GK_Handling', 'GK_Kicking', 'GK_Reflexes', 'GK_Positioning',
            'etc_team', 'etc_career', 'price']]

    return df


def pretreatment_skill_swap(df):
    
    # 불 필요 값 제거
    df.skill_swap.replace({"특성\n" : ""}, regex=True, inplace=True)

    return df

