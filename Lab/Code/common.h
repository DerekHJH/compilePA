#ifndef COMMON
#define COMMON

#define REPORT_ALL_ERROR 2
struct operand_t 
{
	enum {VARIABLE, CONSTANT, ADDRESS} kind;
	int value;
};
struct intercode_t
{
	enum {codeLABEL, codeFUNCTION, codeASSIGN, codeADD, codeSUB, codeMUL, codeDIV, codeAND,
	codeLSTAR, codeRSTAR, codeGOTO, codeE, codeNE, codeG, codeGE, codeL, codeLE, codeRETURN,
	codeDEC, codeARG, codeCALL, codePARAM, codeREAD, codeWRITE} kind;

	struct operand_t *result;
	struct operand_t *op1;
	struct operand_t *op2;

	struct intercode_t *prev;
    struct intercode_t *next;
};
struct array_t 
{
	struct type_t *elem; 
	int dim;
	int size;
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
	int size;
};

struct entry_t
{
	char *name;
	struct type_t *type;

	int is_struct;	
	int var_no;

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
	int var_no;
	int true_label;
	int false_label;

	struct _node *left;
	struct _node *right;
};
#endif
