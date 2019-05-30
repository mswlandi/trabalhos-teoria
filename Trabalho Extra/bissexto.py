file = open('bissexto.mn', 'w')
file.write('main{\n')    
for i in range(1581):
    file.write('{0}: do dec X goto {1}\n'.format(i+1, i+2))
file.write('{0}: if zero X then goto {1} else goto {2}\n'.format(1582, 0, 1583))
file.write('{0}: do dec X goto {1}\n'.format(1583, 1584))
k = 1584
for i in range(400):
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
    file.write('{0}: do dec X goto {1}\n'.format(k+i, 1584 if i == 399 else k+i+1))
file.write('}')    
file.close()
