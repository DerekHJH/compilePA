#ifndef COMMON
#define COMMON
struct _node
{
	union
	{
		long long int_val;
		double float_val;
	};
	int lineno;
	char *text;
	char *token_name;

	struct _node *left;
	struct _node *right;
};
#endif
