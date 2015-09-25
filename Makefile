.PHONY : test
PROLOG=swipl

all:
	echo "done"
test:
	$(PROLOG) -g "run_tests,halt." -s dot_dcg.plt
