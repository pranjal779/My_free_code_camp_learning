han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	wds = line.split()
    # guardian  in a compund statement
	if len(wds) < 3 or wds[0] != 'From' :
		continue
	print(wds[2])
    