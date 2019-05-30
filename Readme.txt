#项目名称
Graduate

#技术描述
前台技术：HTML5+CSS3+JSP+Javascript+JQuery+Bootstrap++BootstrapTable+Ajax
后台技术：SpringBoot+Spring+SpringMVC+Mybatis

#运行服务器环境
Tomcat+Maven项目管理工具
（Maven管理工具需要进行配置，可配置为阿里私服，对jar包下载速度较快）

#运行地址
http://localhost:8080/index.jsp

#运行用户
	账号		密码
管理员：admin		admin
教 师：	201541012	201541012
学 生：	1001		1001

#项目文件说明
系统文件以com.graduate为开头

java下文件包说明：
filter包：过滤器
configuration包：系统配置文件，如数据库事务管理器、数据库连接配置、web过滤器/跨域等配置类
constant包：系统静态常量
entity包：实体类
dto包：前后端数据交互对象类
mapper包：与数据库进行数据交互的方法（接口），映射文件为
service包：逻辑服务层接口类，供controller控制层调用
service.impl包：service逻辑服务层的实现类
controller包：控制层，接收前端传入参数以及对请求路径和数据进行返回
start包：系统启动类（加载需要扫描的文件）

resource下文件说明：
mapper：映射Java下的mapper文件，以xml形式包含Java下mapper所有方法
application.properties：系统主要加载的配置文件
sql：包含MySQL数据库的表结构和数据
webapp下文件说明：
refer文件夹：学生上传的课程设计报告压缩文件
template文件夹：教师上传的课程设计模板
index.jsp：系统登陆界面
WEB-INF下文件说明：
admin文件夹：主要是对专业、课程设计科目、教师、学生信息添加页面
teacher文件夹下：
teacherinfomation.jsp：教师个人信息页
teapassword.jsp：教师密码修改页
coursedesign.jsp：教师对课程设计题目管理页
choosestudent.jsp：教师查看所有已选择课程设计题目的学生，并对学生课题手动录入和取消
allstudent.jsp：教师对提交课程设计报告的学生进行下载审阅、评分
student文件夹下：
studentinfomation.jsp：学生个人信息页
stupassword.jsp：学生密码修改页
choosecourse.jsp：学生选择课程设计题目信息
lookcourse.jsp：学生查看已选择课程设计题目信息，并对课程设计模板进行下载，对课程设计报告进行上传
stuscourse.jsp：学生查看已提交的课程设计报告和教师所评定的成绩
 
#LOG
管理员：对系统初始化数据进行添加，添加顺序为专业->课程设计科目->教师->学生
教 师：对课程设计题目进行管理，对学生所提交的课程设计报告进行审批评分
学 生：在线进行课程设计题目选择，进行模板下载和课程设计报告提交，最后对所提交报告进行成绩查询