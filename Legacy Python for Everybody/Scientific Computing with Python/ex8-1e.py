han = open('mbox-short.txt')

for line in han:
	line = line.rstrip()
	print('Line:' ,line)
	if line == '' :
		print('Skip Blank')
		continue
	wds = line.split()
	if wds[0] != 'From' :
        print('Ignore')
		continue
	print(wds[2])
    
 # alt way to run ex8-1d.py