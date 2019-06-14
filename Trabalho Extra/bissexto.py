file = open('bissexto.mn', 'w')
file.write('main{\n')
file.write('1: do sub X 1581 goto 2\n')
file.write('// n < 1582\n')
file.write('2: if zero X then goto 0 else goto 3\n')
file.write('3: do dec X goto 4\n')
k = 4
for i in range(400):
    file.write('// n % 400 == {0}, n % 100 == {1}, n % 4 == {2}\n'.format((i + 1582) % 400, (i + 1582) % 100, (i + 1582) % 4))
    if (i + 1582) % 400 == 0:
        file.write('{0}: if zero X then goto {1} else goto {2}\n'.format(k+i, k+i+1, k+i+2))
        file.write('{0}: do inc Y goto {1}\n'.format(k+i+1, 0))
        k += 2
    elif (i + 1582) % 100 == 0:
        file.write('{0}: if zero X then goto {1} else goto {2}\n'.format(k+i, 0, k+i+1))
        k += 1
    elif (i + 1582) % 4 == 0:
        file.write('{0}: if zero X then goto {1} else goto {2}\n'.format(k+i, k+i+1, k+i+2))
        file.write('{0}: do inc Y goto {1}\n'.format(k+i+1, 0))
        k += 2
    else:
        file.write('{0}: if zero X then goto {1} else goto {2}\n'.format(k+i, 0, k+i+1))
        k += 1
    file.write('{0}: do dec X goto {1}\n'.format(k+i, 4 if i == 399 else k+i+1))
file.write('}')
file.close()
