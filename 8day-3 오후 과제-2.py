import pymysql as my

con = my.connect(host='127.0.0.1', user='root', \
    password='dlacogus74!', db='mydb')
c = con.cursor()

# c.execute('insert into movie values("명량", "최민식", 1761)')
# c.execute('update movie set act="김혜수" where act="전지현"')
# c.execute('delete from movie where tit="광해"')

# c.execute('select * from movie')
# res = c.fetchall()
# print(res)

c.execute('drop table if exists Man')
c.execute('create table Man(name char(10), age int)')
c.execute('insert into Man values("김연아", 32)')
c.execute('insert into Man values("손흥민", 30)')
c.execute('insert into Man values("이강인", 21)')

con.commit()
c.close()
con.close()
