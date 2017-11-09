#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Fri Sep 29 12:19:56 2017

@author: horas
"""

from obspy.core import read
from scipy.integrate import simps
import numpy as np

st = read ("BJI_full.MSEED")

print st
print '\n'
print st[0].data
print '\n'
print type(st)
print '\n'
print st.traces
print '\n'
print st[0].stats
print '\n'
print st[0].stats.delta, '|', st[0].stats.endtime
print '\n'
print st

print st[0]
print st[0].stats.delta


st.plot()

st[0].data = np.array(st[0].data)
i = simps (st[0].data, dx=st[0].stats.delta)

st.plot()