local str = "xx %s x %s xxx %s xx %sxx %s"
str = string.format(str, unpack({1, 3, 4, 5, 9}))
print(str)
