# importing package
import matplotlib.pyplot as plt
import numpy as np
import argparse
import os
import re
import sys
 
# Parse command line arguments
parser = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument("-d", "--domaine", default="gripper", type=str, help="Full domaine name")
parser.add_argument("-m", "--mode", default="r", type=str, help="Choose to plot which metrics, r for resolution time or m for makespan")
args = vars(parser.parse_args())
if len(sys.argv)==1:
    parser.print_help()
    # parser.print_usage() # for just the usage line
    parser.exit()
# Set up parameters
domaine = str(args["domaine"])
metrics = str(args["mode"])
fileList = [domaine+"ASP.txt", domaine+"static.txt", domaine+"dynamique.txt"]
# fileList = [domaine+"static.txt", domaine+"dynamique.txt"]
if not metrics.startswith("r") and not metrics.startswith("m") and not metrics.startswith("p"):
	print("Bad argument detected!")
	exit(0)
x_asp = []
fig, ax = plt.subplots(1,1) 
for file in fileList:
	file1 = open(file, "r")
	Lines = file1.readlines()
	x = []
	nbPlan = []
	time = []
	mem = []

	# Strips the newline character
	for line in Lines:
		tmp = line.strip()
		if tmp.startswith("Test"):
			patternT = '\d+'
			result = re.findall(patternT, tmp) 
			result = [x.append(int(integer))for integer in result]

		if tmp.startswith("Final"):
			patternF = '\d+'
			result = re.findall(patternF, tmp)
			result = [nbPlan.append(int(integer))for integer in result]

		if tmp.endswith("total time"):
			patternM = '\d+\.\d+'
			result = re.findall(patternM, tmp) 
			result = [time.append(float(integer))for integer in result]

	if metrics.startswith("r"):
		if file.find("static")>0:
			time1 = [time[i] for i in x_asp]
			ax.plot(x, time1, label = "Arvand fixe", linestyle="-",color='green')
		elif file.find("dynamique") > 0:
			time1 = [time[i] for i in x_asp]
			ax.plot(x, time1, label = "Arvand dynamique", linestyle="-",color='red')
		else:
			x_asp = np.argsort(time)
			time.sort()
			r = [ "p" + str(integer+1) for integer in x_asp]
			ax.plot(x, time, label = "Arvand ASP", linestyle="-",color='blue')
		plt.ylabel('resolution time')
		
	elif metrics.startswith("p"):
		# plot lines
		if file.find("static")>0:
			nbPlan1 = [nbPlan[i] for i in x_asp]
			ax.plot(x, nbPlan1, label = "Arvand fixe", linestyle="-",color='green')
		elif file.find("dynamique") > 0:
			nbPlan1 = [nbPlan[i] for i in x_asp]
			ax.plot(x, nbPlan1, label = "Arvand dynamique", linestyle="-",color='red')
		else:
			x_asp = np.argsort(nbPlan)
			nbPlan.sort()
			r = [ "p" + str(integer+1) for integer in x_asp]
			ax.plot(x, nbPlan, label = "Arvand ASP", linestyle="-",color='blue')
		plt.ylabel('makespan')

# Set number of ticks for x-axis
ax.set_xticks(x)
# Set ticks labels for x-axis
ax.set_xticklabels(r, rotation='horizontal', fontsize=6)


plt.xlabel('Problèmes')
plt.title('Domaine ' + domaine)

plt.legend()
# Directory
directory = domaine
  
# Parent Directory path
parent_dir = os.getcwd()
  
# mode
mode = 0o666
  
# Path
path = os.path.join(parent_dir, directory)
  
# Create the directory
# domaine in
# current working directory
# with mode 0o666

os.makedirs(path, mode, exist_ok=True)
plt.savefig(path+ "/"+ domaine + metrics + ".png")
