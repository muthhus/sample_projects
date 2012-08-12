@echo off
set TLB_JOB_NAME=buildr-junit
set TLB_TOTAL_PARTITIONS=2
set TEST_TASK=buildr clean test
set ALL_PARTITIONS_RAN_VERIFICATION_TASK=buildr assert_all_partitions_executed

IF "%~1" == "--help" (
	echo Partitions this sample project into 2 parts and executes them sequentially. You can set 'TLB_JAR' and 'VERBOSE'. Make sure the java is available.
	GOTO EOF
)

call ..\recipe.bat

:EOF