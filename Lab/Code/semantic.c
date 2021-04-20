struct _Type
{
	enum{BASIC, ARRAY, STRUCTURE} kind;
	union
	{
		int basic;
		struct {struct _Type *elem; int size;} *array;
		struct _FieldList *structure;
	}u;
};
struct _FieldList
{
	char *name;
	struct _Type *type;
	struct _FieldList *next;
};

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
