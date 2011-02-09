#!/bin/bash

export TLB_JAR=`ruby -e 'require "rubygems"; gem "tlb-rspec2"; require "tlb"; puts Tlb.tlb_jar;'`
export TLB_JOB_NAME='rspec-2' 
export TLB_TOTAL_PARTITIONS=2
export TEST_TASK='rake bal'

source ../recipe.sh