import io, sys
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf8')

x=input()

x=x.split(' ')
h=int(x[0])
b=int(x[1])
c=int(x[2])
s=int(x[3])

sum=h*b*c*s/(2**23)
print(str(round(sum,1))+' MB')
