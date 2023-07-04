han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	wds = line.split()
    # guardian  in a compund statement
    # this one wont work but the ex8-1fb.py would
	if wds[0] != 'From' or len(wds) < 3 :
		continue
	print(wds[2])
    