/*
 * Project Euler Problem 2
 * Solution by nathan dotz - nathan (period) dotz (at sign) gmail (period) com
 *
 * Each new term in the Fibonacci sequence is generated by adding
 * the previous two terms. By starting with 1 and 2, the first
 * 10 terms will be:
 * 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 * 
 * Find the sum of all the even-valued terms in the sequence
 * which do not exceed four million.
 */

#include <stdio.h>

int main() {
	int termA = 1;
	int termB = 2;
	int nextTerm;
	int total = 0;

	while (termA <=4000000) {
	
		if (termA % 2 == 0) total += termA;
		nextTerm = termA + termB;
		termA = termB;
		termB = nextTerm;
	}
	
	printf ("The syme of even-valued members of the fibonacci "
			"sequence below 4,000,000 is %d\n", total);

	return 0;
}
