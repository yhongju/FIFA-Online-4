from module import data_pretreatment

import pandas as pd

df = pd.read_csv("/Users/minseongcheol/Documents/FIFA/player_db_df.csv")

test = data_pretreatment.pretreatment_pomation(df)
print(test)