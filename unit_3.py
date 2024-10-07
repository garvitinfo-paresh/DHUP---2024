import sqlite3
con = sqlite3.connect("tutorial.db")
cur = con.cursor()

# cur.execute("CREATE TABLE movie(title, year, score)")

res = cur.execute("SELECT * FROM movie")
# print(res.fetchone()) 
# print(res.fetchall())
print(res.fetchmany())

# cur.execute("""
#     INSERT INTO movie VALUES
#         ('a', 2024, 8.5),
#         ('b', 2024, 7.7),
#         ('c', 2024, 7.2),
#         ('d', 2023, 9.5)
# """)

# con.commit()

# for row in cur.execute("SELECT * from movie where title = 'a'"):
#     print(row)

# for row in cur.execute("SELECT year, title FROM movie ORDER BY year"):
#     print(row)

# cur.execute("delete from movie where title = 'a'")
# con.commit()

# for row in cur.execute("SELECT * from movie"):
#     print(row)

# res = cur.execute("SELECT score FROM movie")
# print(res.g())