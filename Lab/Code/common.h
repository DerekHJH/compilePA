#ifndef COMMON
#define COMMON

#define REPORT_ALL_ERROR 2

struct array_t 
{
	struct type_t *elem; 
	int dim;
};
struct type_t
{
	enum{BASIC, ARRAY, STRUCTURE, FUNCTION} kind;
	union
	{
		int basic;// 1 for int and 2 for float
		struct array_t *array;
		struct entry_t *structure;
	};
};

struct entry_t
{
	char *name;
	struct type_t *type;

	int is_struct;	

	struct entry_t *down;
	struct entry_t *right;
	int hash_pos;
	int stack_pos;
};

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


	struct type_t *type;

	struct _node *left;
	struct _node *right;
};
#endif
