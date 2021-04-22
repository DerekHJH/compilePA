#ifndef COMMON
#define COMMON
struct type_t
{
	enum{BASIC, ARRAY, STRUCTURE} kind;
	union
	{
		int basic;// 1 for int and 2 for float
		struct {struct type_t *elem; int size;} *array;
		struct fieldlist_t *structure;
	};
};
struct fieldlist_t
{
	char *name;
	struct type_t *type;
	struct fieldlist_t *next;
};

struct entry_t
{
	char *name;
	struct type_t *type;

	
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
