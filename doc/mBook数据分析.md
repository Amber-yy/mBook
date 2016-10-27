

#角色
1-注册用户
2-管理员

#所有功能
1-图书搜索
2-注册
3-登录
4-忘记密码
5-用户设置
6-书籍借阅
7-书籍查看

8-书籍信息修改（管理员）
9-删除信息（管理员）
10-增加图书
11-用户管理（管理员）


#模块
1-首页
2-注册登录
3-查看书籍详细信息
4-用户信息设置
5-书籍借阅
...
模块自由设计

 
# 基础表 
- user（用户*管理员）
    - email   varchar(25) pk  //邮箱
    - password  varchar(25) //密码
    - isAdmin   int（1）    //是否为管理员
 

-userInfo（用户信息表） 
	-readerId int(8)  pk					
    -email    varchar(25) FK（user.email）  //邮箱
    -phoneNo  varchar(25)		  //电话
    -address  varchar(50)     	 //地址
    -sex      varchar(8)     	 //性别
    -birthday date(25)      	//生日

-book 
	-bookId  int(8) pk      	//主键
    -ISBN    varchar(25)       //ISBN编码
    -bookName varchar(25)		//书名
    -author	  varchar(25)		//作者
    -publisher varchar(25)     //出版社
    -price	  double(8)			//价格
    -snum		int(8)			//库存量
    -summary     varchar(50)  	//内容提要
    -photo       varchar(25)   //封面照片

-lend(借阅信息)
	id        int(8) pk                     //借书号 
  	bookId    int(8) FK（book.bookId）      //书号
 	readerId  int(8) FK (userInfo.readerId)  //用户编号
 	LTime      time(25) 	 //借书时间