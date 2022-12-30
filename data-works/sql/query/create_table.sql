-- CREATE TABLE team_nation(
--     nation_pk INT PRIMARY KEY,
--     nation VARCHAR(32)
-- );


-- CREATE TABLE team_club(
--     club_pk INT PRIMARY KEY,
--     club_name VARCHAR(32)
-- );


-- CREATE TABLE player_season(
--     season_pk INT PRIMARY KEY,
--     season_name VARCHAR(32)
-- );



-- CREATE TABLE player_detail_swap(
--     season_player_pk BIGINT UNSIGNED,
--     FOREIGN KEY (season_player_pk) REFERENCES player_main(season_player_pk) ON UPDATE CASCADE,
--     etc_foot VARCHAR(32),
--     etc_skill INT,
--     etc_physical VARCHAR(32),
--     etc_weight INT,
--     etc_height INT,
--     etc_birth VARCHAR(32),
--     skill_swap VARCHAR(32)
-- );



CREATE TABLE player_main(
    season_player_pk BIGINT UNSIGNED PRIMARY KEY,
    nation_pk INT,
    FOREIGN KEY (nation_pk) REFERENCES team_nation(nation_pk) ON UPDATE CASCADE,
    club_pk INT,
    FOREIGN KEY (club_pk) REFERENCES team_club(club_pk) ON UPDATE CASCADE,
    season_pk INT,
    FOREIGN KEY (season_pk) REFERENCES player_season(season_pk) ON UPDATE CASCADE,
    player_name VARCHAR(32)
);




CREATE TABLE price(
    price VARCHAR(32),
    season_player_pk BIGINT UNSIGNED,
    FOREIGN KEY (season_player_pk) REFERENCES player_main(season_player_pk) ON UPDATE CASCADE
    -- FOREIGN KEY (season_player_pk) REFERENCES ICON_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES BWC_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES WC22_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES UP_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES EBS_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES MC_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES OTW_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21UCL_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 2012KH_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 22KFA_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES NTG_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21TOTS_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 20UCL_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES CFA_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES BTB_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 19UCL_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES CAP_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES BOE21_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES GR_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES TT_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES SPL_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES LN_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 20TOTN_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21KLB_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 22TOTY_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21TOTN_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 22HR_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21NG_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES FA_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES LOL_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 22TOTS_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES RMCF_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES NHD_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES TKI_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES TB_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES TC_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 18TOTY_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES MCFC_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 19TOTS_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES COC_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 19TOTY_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES LH_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES MCICON_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES HOT_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 22TOTN_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 19NG_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 20TOTY_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 20TOTS_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES TKL_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES VTR_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES MOG_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES LA_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 20NG_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 20KLB_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21TOTY_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 21KFA_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 2019KFA_stats(season_player_pk) ON UPDATE CASCADE,
    -- FOREIGN KEY (season_player_pk) REFERENCES 2018KFA_stats(season_player_pk) ON UPDATE CASCADE,
    );