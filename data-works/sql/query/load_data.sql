-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/team_club.csv'
-- INTO TABLE team_club
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (club_name,club_pk);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/team_nation.csv'
-- INTO TABLE team_nation
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (nation,nation_pk);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/player_season.csv'
-- INTO TABLE player_season
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_name,season_pk);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/player_main.csv'
-- INTO TABLE player_main
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,nation_pk,club_pk,season_pk,player_name,basic_pk);





-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/player_detail_swap.csv'
-- INTO TABLE player_detail_swap
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,etc_foot,etc_skill,etc_physical,etc_weight,etc_height,etc_birth,skill_swap);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/WC22_stats.csv'
-- INTO TABLE WC22_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/VTR_stats.csv'
-- INTO TABLE VTR_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/UP_stats.csv'
-- INTO TABLE UP_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/TT_stats.csv'
-- INTO TABLE TT_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/TKL_stats.csv'
-- INTO TABLE TKL_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/TKI_stats.csv'
-- INTO TABLE TKI_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/18TOTY_stats.csv'
-- INTO TABLE 18TOTY_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/TC_stats.csv'
-- INTO TABLE TC_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/TB_stats.csv'
-- INTO TABLE TB_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/SPL_stats.csv'
-- INTO TABLE SPL_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/RMCF_stats.csv'
-- INTO TABLE RMCF_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/OTW_stats.csv'
-- INTO TABLE OTW_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/NTG_stats.csv'
-- INTO TABLE NTG_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/NHD_stats.csv'
-- INTO TABLE NHD_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/MOG_stats.csv'
-- INTO TABLE MOG_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/MC_stats.csv'
-- INTO TABLE MC_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/MCFC_stats.csv'
-- INTO TABLE MCFC_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/MCICON_stats.csv'
-- INTO TABLE MCICON_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/LOL_stats.csv'
-- INTO TABLE LOL_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/LN_stats.csv'
-- INTO TABLE LN_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/LH_stats.csv'
-- INTO TABLE LH_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/LA_stats.csv'
-- INTO TABLE LA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/ICON_stats.csv'
-- INTO TABLE ICON_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/HOT_stats.csv'
-- INTO TABLE HOT_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/GR_stats.csv'
-- INTO TABLE GR_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/FA_stats.csv'
-- INTO TABLE FA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/EBS_stats.csv'
-- INTO TABLE EBS_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/COC_stats.csv'
-- INTO TABLE COC_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/CFA_stats.csv'
-- INTO TABLE CFA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/CAP_stats.csv'
-- INTO TABLE CAP_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/BWC_stats.csv'
-- INTO TABLE BWC_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/BTB_stats.csv'
-- INTO TABLE BTB_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/BOE21_stats.csv'
-- INTO TABLE BOE21_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/22TOTY_stats.csv'
-- INTO TABLE 22TOTY_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/22TOTS_stats.csv'
-- INTO TABLE 22TOTS_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/22TOTN_stats.csv'
-- INTO TABLE 22TOTN_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/22KFA_stats.csv'
-- INTO TABLE 22KFA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/22HR_stats.csv'
-- INTO TABLE 22HR_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21UCL_stats.csv'
-- INTO TABLE 21UCL_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21TOTY_stats.csv'
-- INTO TABLE 21TOTY_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21TOTS_stats.csv'
-- INTO TABLE 21TOTS_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21TOTN_stats.csv'
-- INTO TABLE 21TOTN_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21NG_stats.csv'
-- INTO TABLE 21NG_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21KLB_stats.csv'
-- INTO TABLE 21KLB_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/21KFA_stats.csv'
-- INTO TABLE 21KFA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/20UCL_stats.csv'
-- INTO TABLE 20UCL_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/20TOTY_stats.csv'
-- INTO TABLE 20TOTY_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/20TOTS_stats.csv'
-- INTO TABLE 20TOTS_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/20TOTN_stats.csv'
-- INTO TABLE 20TOTN_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/20NG_stats.csv'
-- INTO TABLE 20NG_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);


-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/20KLB_stats.csv'
-- INTO TABLE 20KLB_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/2019KFA_stats.csv'
-- INTO TABLE 2019KFA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/2018KFA_stats.csv'
-- INTO TABLE 2018KFA_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/2012KH_stats.csv'
-- INTO TABLE 2012KH_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/19UCL_stats.csv'
-- INTO TABLE 19UCL_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/19TOTY_stats.csv'
-- INTO TABLE 19TOTY_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/19TOTS_stats.csv'
-- INTO TABLE 19TOTS_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);



-- LOAD DATA LOCAL INFILE 
-- '/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/19NG_stats.csv'
-- INTO TABLE 19NG_stats
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (season_player_pk,pay_side,reinforcement,position,overall,Sprint_speed,Acceleration,Finishing,Shot_power,Long_shots,Positioning,Volleys,Penalties,Short_pass,Eyesight,Crossing,Long_pass,FK_Acc,Curve,Dribbling,Ball_control,Agility,Balance,Reflexes,Interpersonal_defense,Stand_tackle,Interception,Heading,Slide_tackle,Strength,Stamina,Aggression,Jumping,Composure,GK_Diving,GK_Handling,GK_Kicking,GK_Reflexes,GK_Positioning,ST,LW,CF,RW,CAM,LM,CM,RM,CDM,LWB,CB,RWB,LB,SW,RB,GK);




LOAD DATA LOCAL INFILE 
'/Users/krc/Desktop/FIFA_Project_Personal/SQL/data/price.csv'
INTO TABLE price
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(season_player_pk,price);

