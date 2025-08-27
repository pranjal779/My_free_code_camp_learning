han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	wds = line.split()
	if wds[0] != 'From' :
		continue
	print(wds[2])