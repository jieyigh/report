INSERT INTO `c_total_report_config` VALUES (1, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_bet_amount AS validAmount,\r\na.net_amount AS winLossAmount,\r\n2 AS liveId,\r\n\'ag 视讯\' AS liveName,\r\na.game_kind AS gameKind,\r\n\'ag 视讯\' AS gameKindName,\r\na.bet_time as betTime,\r\n(CASE a.game_type WHEN \'BAC\' THEN 21001 \r\nWHEN \'CBAC\' THEN 21002  \r\nWHEN \'LINK\' THEN 21003\r\nWHEN \'DT\' THEN 21004 \r\nWHEN \'SHB\' THEN 21005 \r\nWHEN \'ROU\' THEN 21006 \r\nWHEN \'FT\' THEN 21007 \r\nELSE 21005\r\nEND) as gameType,\r\n\r\n(CASE a.game_type WHEN \'BAC\' THEN \'百家乐\' \r\nWHEN \'CBAC\' THEN \'包桌百家乐\'  \r\nWHEN \'LINK\' THEN \'连环百家乐\'\r\nWHEN \'DT\' THEN \'龙虎\' \r\nWHEN \'SHB\' THEN \'骰宝\' \r\nWHEN \'ROU\' THEN \'轮盘\' \r\nWHEN \'FT\' THEN \'番攤\' \r\nELSE \'骰宝\'\r\nEND)\r\n as gameName\r\nFROM ds_ag_live a WHERE a.game_kind = 21 AND a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ag_live t WHERE t.id=a.id) limit 500', NULL, 'temp_ag_live', -50, 'ag视讯统计');
INSERT INTO `c_total_report_config` VALUES (2, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_bet_amount AS validAmount,\r\na.net_amount AS winLossAmount,\r\n2 AS liveId,\r\n\'ag\' AS liveName,\r\na.game_kind AS gameKind,\r\n\'ag 机率\' AS gameKindName,\r\na.bet_time as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_type),22000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_type),\'AG最新机率\') as gameName\r\nFROM ds_ag_live a WHERE a.game_kind = 22 AND a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ag_game t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_ag_game', -50, 'ag机率统计');
INSERT INTO `c_total_report_config` VALUES (3, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.stake_amount AS betAmount,\r\na.valid_stake AS validAmount,\r\na.win_loss AS winLossAmount,\r\n12 AS liveId,\r\n\'ds 平台\' AS liveName,\r\n41 AS gameKind,\r\n\'ds 视讯\' AS gameKindName,\r\na.end_time as betTime,\r\n(CASE a.game_type WHEN \'BACCARAT\' THEN 41001 \r\nWHEN \'DRAGON_TIGER\' THEN 41002  \r\nWHEN \'ROULETTE\' THEN 41003\r\nWHEN \'BACCARAT_INSURANCE\' THEN 41004 \r\nWHEN \'SICBO\' THEN 41005 \r\nWHEN \'XOC_DIA\' THEN 41006 \r\nEND) as gameType,\r\n\r\n(CASE a.game_type WHEN \'BACCARAT\' THEN \'百家乐\' \r\nWHEN \'DRAGON_TIGER\' THEN \'龙虎\'  \r\nWHEN \'ROULETTE\' THEN \'轮盘\'\r\nWHEN \'BACCARAT_INSURANCE\' THEN \'保险百家乐\' \r\nWHEN \'SICBO\' THEN \'骰宝\' \r\nWHEN \'XOC_DIA\' THEN \'色碟\' \r\nEND)\r\n as gameName\r\nFROM ds_live a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ds_live t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_ds_live', -50, 'ds视讯');
INSERT INTO `c_total_report_config` VALUES (4, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n 15 AS gameKind,\r\n\'BBIN 3D\' AS gameKindName,\r\na.wagers_date as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_type),15000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_type),\'BBIN最新3D\') as gameName\r\nFROM ds_bbin_3d a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_3d t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_bbin_3d', -50, 'BBIN 3D');
INSERT INTO `c_total_report_config` VALUES (5, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n 5 AS gameKind,\r\n\'BBIN GAME\' AS gameKindName,\r\na.wagers_date as betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.game_type),5000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.game_type),\'BBIN最新机率\') as gameName\r\nFROM ds_bbin_jilv a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_jilv t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_bbin_jilv', -50, 'BBIN机率');
INSERT INTO `c_total_report_config` VALUES (6, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n3 AS gameKind,\r\n\'BBIN 视讯\' AS gameKindName,\r\na.wagers_date as betTime,\r\na.game_type as gameType,\r\n\r\n(CASE a.game_type WHEN 3001 THEN \'百家乐\' \r\nWHEN 3002 THEN \'二八杠\'  \r\nWHEN 3003 THEN \'龙虎斗\'\r\nWHEN 3005 THEN \'三公\' \r\nWHEN 3006 THEN \'温州牌九\' \r\nWHEN 3007 THEN \'轮盘\' \r\nWHEN 3008 THEN \'骰宝\'\r\nWHEN 3010 THEN \'德州扑克\'\r\nWHEN 3011 THEN \'色碟\'\r\nWHEN 3012 THEN \'牛牛\'\r\nWHEN 3013 THEN \'赛本引\'\r\nWHEN 3014 THEN \'无限21点\'\r\nWHEN 3015 THEN \'番攤\'  \r\nELSE \'其他\'\r\nEND)\r\n as gameName\r\nFROM ds_bbin_live a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_live t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_bbin_live ', -50, 'BBIN视讯');
INSERT INTO `c_total_report_config` VALUES (7, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.user_name as username,\r\na.bet_amount AS betAmount,\r\na.commissionable AS validAmount,\r\na.pay_off AS winLossAmount,\r\n11 AS liveId,\r\n\'bbin\' AS liveName,\r\n1 AS gameKind,\r\n\'BBIN 体育\' AS gameKindName,\r\na.wagers_date as betTime,\r\n(CASE a.game_type WHEN \'BK\' THEN 1001 \r\nWHEN \'BS\' THEN 1002  \r\nWHEN \'F1\' THEN 1003\r\nWHEN \'FB\' THEN 1004 \r\nWHEN \'FT\' THEN 1005 \r\nWHEN \'FU\' THEN 1006 \r\nWHEN \'IH\' THEN 1007 \r\nWHEN \'SP\' THEN 1008\r\nWHEN \'TN\' THEN 1009 \r\nELSE 1003\r\nEND) as gameType,\r\n\r\n(CASE a.game_type WHEN \'BK\' THEN \'篮球\' \r\nWHEN \'BS\' THEN \'棒球\'  \r\nWHEN \'F1\' THEN \'其他\'\r\nWHEN \'FB\' THEN \'美足\' \r\nWHEN \'FT\' THEN \'足球\' \r\nWHEN \'FU\' THEN \'指数\' \r\nWHEN \'IH\' THEN \'冰球\'\r\nWHEN \'SP\' THEN \'冠军\'\r\nWHEN \'TN\' THEN \'网球\'  \r\nELSE \'其他\'\r\nEND)\r\n as gameName\r\nFROM ds_bbin_sport a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_bbin_sport t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_bbin_sport ', -50, 'BBIN体育');
INSERT INTO `c_total_report_config` VALUES (8, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.commission_amount AS validAmount,\r\na.win_amount AS winLossAmount,\r\n13 AS liveId,\r\n\'h8 体育\' AS liveName,\r\n42 AS gameKind,\r\n\'h8 体育\' AS gameKindName,\r\na.transaction_date AS betTime,\r\n4200 AS gameType,\r\n\'h8 体育\' AS gameName\r\nFROM ds_m8_sport a WHERE a.win_lose_type IS NOT NULL AND win_lose_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_h8_sport t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_h8_sport', -50, 'h8体育');
INSERT INTO `c_total_report_config` VALUES (9, NULL, 'SELECT a.id,\r\na.siteId AS siteId, \r\na.username,\r\na.betAmount AS betAmount,\r\na.commissonAmount AS validAmount,\r\na.winLose AS winLossAmount,\r\n12 AS liveId,\r\n\'DS 机率\' AS liveName,\r\n53 AS gameKind,\r\n\'DS 机率\' AS gameKindName,\r\na.createTime AS betTime,\r\n5300 AS gameType,\r\n\'DS 机率\' AS gameName\r\nFROM video_game_wager a WHERE a.winLoseType IS NOT NULL AND winLoseType<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_video_game_wager t WHERE t.id=a.id) LIMIT 500\r\n', NULL, 'temp_video_game_wager', -50, 'DS机率游戏');
INSERT INTO `c_total_report_config` VALUES (10, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.stake_amount AS betAmount,\r\na.valid_stake AS validAmount,\r\na.win_loss AS winLossAmount,\r\n12 AS liveId,\r\n\'ds平台\' AS liveName,\r\n55 AS gameKind,\r\n\'ds传统彩\' AS gameKindName,\r\na.bet_time as betTime,\r\n(CASE a.game_info_id WHEN \'1\' THEN 55004 \r\nWHEN \'2\' THEN 55001  \r\nWHEN \'3\' THEN 55002\r\nWHEN \'4\' THEN 55005 \r\nWHEN \'5\' THEN 55003\r\nELSE 55000 \r\nEND) as gameType,\r\n\r\n(CASE a.game_info_id WHEN \'1\' THEN \'广东快乐十分\' \r\nWHEN \'2\' THEN \'重庆时时彩\'  \r\nWHEN \'3\' THEN \'北京赛车\'\r\nWHEN \'4\' THEN \'江苏骰宝\' \r\nWHEN \'5\' THEN \'幸运农场\'\r\nELSE \'DS传统彩\' \r\nEND)\r\n as gameName\r\nFROM ds_lottery_bet a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ds_live_lottery t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_ds_live_lottery', -50, 'DS传统彩');
INSERT INTO `c_total_report_config` VALUES (11, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.stake_amount AS betAmount,\r\na.valid_stake AS validAmount,\r\na.win_loss AS winLossAmount,\r\n12 AS liveId,\r\n\'ds平台\' AS liveName,\r\n54 AS gameKind,\r\n\'ds香港彩\' AS gameKindName,\r\na.bet_time as betTime,\r\n54000 as gameType,\r\n\'DS香港彩\' as gameName\r\nFROM ds_lotto_bet a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_ds_lotto_bet t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_ds_lotto_bet ', -50, 'DS香港彩');
INSERT INTO `c_total_report_config` VALUES (12, NULL, 'SELECT a.id,\r\na.site_id AS siteId, \r\na.username,\r\na.bet_amount AS betAmount,\r\na.valid_amount AS validAmount,\r\na.pay_off AS winLossAmount,\r\n12 AS liveId,\r\n\'DS 分分彩\' AS liveName,\r\n52 AS gameKind,\r\n\'分分彩\' AS gameKindName,\r\na.bet_time AS betTime,\r\nlotto_type AS gameType,\r\nlotto_name AS gameName\r\nFROM ds_fenfen_lotto a WHERE a.win_loss_type IS NOT NULL AND win_loss_type<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_fenfen t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_fenfen', 50, '分分彩');
INSERT INTO `c_total_report_config` VALUES (13, NULL, 'SELECT a.id,\r\na.siteId AS siteId, \r\na.username,\r\na.betAmount AS betAmount,\r\na.commissonAmount AS validAmount,\r\na.winLose AS winLossAmount,\r\n12 AS liveId,\r\n\'DS电子游戏\' AS liveName,\r\n53 AS gameKind,\r\n\'DS电子游戏\' AS gameKindName,\r\na.createTime AS betTime,\r\nIFNULL((SELECT id FROM ds_game_type b WHERE b.out_game_code = a.gameKey AND b.parent_id=53),53000) as gameType,\r\nIFNULL((SELECT b.game_name FROM ds_game_type b WHERE b.out_game_code = a.gameKey AND b.parent_id=53),\'DS最新电子游戏\') as gameName\r\nFROM video_game_wager a WHERE a.winLoseType IS NOT NULL AND winLoseType<>-1 \r\nAND NOT EXISTS (SELECT * FROM temp_video_game_wager t WHERE t.id=a.id) LIMIT 500', NULL, 'temp_video_game_wager', 50, 'DS电子游戏');
INSERT INTO `c_total_report_config` VALUES (14, '', 'SELECT d.id,\r\nd.site_id siteId,\r\nd.user_name username,\r\nd.betting_amount betAmount,\r\nd.valid_amount validAmount,\r\nd.win_lose_amount winLossAmount,\r\nt.fk_live_id liveId,\r\n(SELECT game_name FROM ds_game_type WHERE id = t.parent_id) liveName,\r\n(SELECT out_game_code FROM ds_game_type WHERE id = t.parent_id) gameKind,\r\n(SELECT game_name FROM ds_game_type WHERE id = t.parent_id) gameKindName,\r\nd.add_time as betTime,\r\nt.out_game_code gameType,\r\nt.game_name gameName\r\nFROM ds_og_record d \r\nLEFT JOIN ds_game_type t ON d.game_name_id = t.out_game_code AND t.parent_id = 23 AND t.fk_live_id = 3\r\nWHERE d.win_lose_type IS NOT NULL AND d.win_lose_type <> -1 AND NOT EXISTS (SELECT * FROM temp_og_live tol WHERE tol.id = d.id)\r\nLIMIT 500', '', 'temp_og_live', 50, 'OG视讯');