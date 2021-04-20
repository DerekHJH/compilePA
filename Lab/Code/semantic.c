struct type_t
{
	enum{BASIC, ARRAY, STRUCTURE} kind;
	union
	{
		int basic;
		struct {struct type_t *elem; int size;} *array;
		struct fieldlist_t *structure;
	}u;
};
struct fieldlist_t
{
	char *name;
	struct type_t *type;
	struct fieldlist_t *next;
};

struct bucket_t
{
	char *name;
	void *addr;

	struct bucket_t *down;
	struct bucket_t *right;
};

struct bucket_t *hash_table[0x3fff] = {0};
struct bucket_t *stack_table[0x3fff] = {0};
int stack_top = 0;

unsigned int hash_pjw(char *name)
{
	unsigned int val = 0, i;
	for(; *name; ++name)
	{
		val = (val << 2) + *name;
		if(i = val & ~0x3fff)
			val = (val ^ (i >> 12)) & 0x3fff;
	}
	return val;
}

void hash_insert(int pos, struct type_t *a)
{
	if(a == NULL)return;
	a->right = hash_table[pos];
	hash_table[pos] = a;
	a->down = stack_table[stack_top];
	stack_table[stack_top] = a;
}

void stack_new()
{
	stack_top++;
	stack_table[stack_top] = NULL;
}

void stack_delete()
{
	struct bucket_t *cur = stack_table[stack_top];
	while(cur)
	{
		
	}
	stack_table[stack_top] = NULL;
	stack_top--;
}


void parse_tree(struct _node *cur)
{
	if(cur->text == NULL && cur->left == NULL)
	{
		if(cur->right != NULL)print_tree(cur->right, Width);
		return;
	}
	for(int i = 1; i <= Width; i++)
		printf(" ");
	printf("%s", cur->token_name);
	if(cur->text == NULL)printf(" (%d)\n", cur->lineno);
	else if(strcmp(cur->token_name, "ID") == 0)printf(": %s\n", cur->text);
	else if(strcmp(cur->token_name, "TYPE") == 0)printf(": %s\n", cur->text);
	else if(strcmp(cur->token_name, "INT") == 0)printf(": %lld\n", cur->int_val);
	else if(strcmp(cur->token_name, "FLOAT") == 0)printf(": %f\n", cur->float_val);
	else printf("\n");

	if(cur->left != NULL)print_tree(cur->left, Width + 2);
	if(cur->right != NULL)print_tree(cur->right, Width);
}
