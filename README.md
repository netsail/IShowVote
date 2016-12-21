### 年会节目投票活动程序
##### 1.本投票程序简介
###### 1.1.来由：是作者Sail为公司2016年12月底举办2017年会节目投票活动编写的代码,于2016年12月10日（周六）一天时间打造而成。
###### 1.2.投入运行是否正常：2016年12底晚会节目投票活动被公司好几百人同时使用且零故障
###### 1.3.后端编程语言：PHP
###### 1.4.数据库系统：mysql
###### 1.5.数据库连接方式：PDO
###### 1.6.第三方框架：无
###### 1.7.实现机制：前端页面全为html+ajax异步加载数据
###### 1.8.具体使用场景：公司年会节目投票分为上半场和下半场，即共两次投票，两次投票共用一个投票码，且每次投票必须勾选三个满意的节目。
##### 2.上线步骤
###### 2.1.创建表结构及初始数据执行./db/sql/votedb.sql
###### 2.2.上传程序PHP代码
###### 2.3.配置域名及nginx服务
##### 3.页面访问地址
###### 3.1.上半场投票地址
		www.word100.com/home.html?type=1
###### 3.2.下半场投票地址
		www.word100.com/home.html?type=2
###### 3.3.全场投票地址
		www.word100.com/home.html?type=0		
###### 3.4.后台控制页面地址		
		www.word100.com/showops.html?s=asdfaswq2017happynewyear
###### 3.5.排名大屏幕，将投票地址加参数t=1
		www.word100.com/top.html?type=1&r=0.4813740496407395&t=1
		说明：目前页面定义为每8秒钟刷新一次数据.