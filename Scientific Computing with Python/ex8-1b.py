han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	wds = line.split()
	if wds[0] != 'From' :
        print('Ignore')
		continue
	print(wds[2])