han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	print('Line:' ,line)
	wds = line.split()
	print('Words:' ,wds)
    # Guardian statement
	if len(wds) < 1:
		continue
	if wds[0] != 'From' :
        print('Ignore')
		continue
	print(wds[2])
    