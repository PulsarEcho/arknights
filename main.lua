init("0", 1)
setScreenScale(1080, 1920)
require("path")
require("util")
cron = require("crontab")
基建 = {"更新设备列表", "换人", "戳人", "制造站补充",
          "订单交付", "订单加速", "线索接收", "线索布置",
          "信用奖励"}
作战 = {"邮件", "轮次作战"}
任务 = {"访问好友基建", "信用收取", "信用购买", "干员强化",
          "公开招募聘用", "任务"}

show("开始")
fight_type = {"3-2", "2-10", "PR-A-1", "PR-A-2", "PR-B-1", "PR-B-2", "PR-C-1",
              "PR-C-2", "PR-D-1", "PR-D-2"}
insert(fight_type, "CE-5")
repeat_last(fight_type, 10)
insert(fight_type, "SK-5")
repeat_last(fight_type, 10)
fight_type = {'龙门外环'}

fight_type = fight_type_all
repeat_last(fight_type, 20)
tick = 63
-- now(作战, 基建, 任务, background)
now(基建, 任务, background)
cron(map(hc, {{作战, "2,8,14,20"}, {基建, "2,14"}, {任务, 3},
              {background}, {showBL}}), true)
