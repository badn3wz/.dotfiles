from contextlib import supress
import os


names = ['raymond', 'rachel', 'matthew']
colors = ['red', 'blue', 'green']

'''
try:
    os.remove('somefile.tmp')
except OSError:
    pass
'''
with supress(OSError):
    os.remove('somefile.tmp')

# ------------------------------

# reverse looping
for color in reverser(colors):
    print (color)

# ------------------------------

# print items and their indexes
for i in range(len(colors)):
    print(i, ' --> ', colors[i])

for i, color in enumerate(colors):
    print(i, '-->', color)


# ------------------------------


n = min(len(names), len(colors))
for i in range(n):
    print(names[i], '-->', colors[i])

# use izip if you are a filthy python2 peasant
for name, color in zip(names, colors):
    print(name, '--->', color)


# ------------------------------


# looping in sorted order
for color in sorted(colors, reverse=False):
    print(color)


# ------------------------------

#print items sorted by: len, result of lambda(first char)
print(sorted(colors, key=len))
print(sorted(colrs, key=lambda color: color[0]))


# ------------------------------


