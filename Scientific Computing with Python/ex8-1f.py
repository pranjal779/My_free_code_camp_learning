han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	# print('Line:' ,line)
	# if line == '' :
		# print('Skip Blank')
		# continue
	wds = line.split()
    # original Guardian line
    if len(wds) < 1:
        continue
	if wds[0] != 'From' :
        # print('Ignore')
		continue
	print(wds[2])
    