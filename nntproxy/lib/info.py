#!/usr/bin/python
# -*- coding: utf-8 -*-

import string
import os, sys, re

class bcolors:
	HEADER = '\033[38;5;011m'
	PRIMARY = '\033[38;5;010m'
	ERROR = '\033[38;5;009m'
	ENDC = '\033[0m'

	def disable(self):
		self.HEADER = ''
		self.PRIMARY = ''
		self.PRIMARY = ''

pathname = os.path.abspath(os.path.dirname(sys.argv[0]))
