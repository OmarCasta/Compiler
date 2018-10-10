%{
    int nchar, nword, nline;
%}

%%

abstract	{   printf("Palabra reservada abstract \n");}
assert		{   printf("Palabra reservada assert \n");}
boolean		{   printf("Palabra reservada boolean \n");}
break		{   printf("Palabra reservada break \n");}
byte		{   printf("Palabra reservada byte \n");}
case		{   printf("Palabra reservada case \n");}
catch		{   printf("Palabra reservada catch \n");}
char		{   printf("Palabra reservada char \n");}
class		{   printf("Palabra reservada class \n");}
const		{   printf("Palabra reservada const \n");}

continue	{   printf("Palabra reservada continue \n");}
default		{   printf("Palabra reservada default \n");}
do		{   printf("Palabra reservada do \n");}
double		{   printf("Palabra reservada double \n");}
else		{   printf("Palabra reservada else \n");}
enum		{   printf("Palabra reservada enum \n");}
extends		{   printf("Palabra reservada extends \n");}
final		{   printf("Palabra reservada final \n");}
finally		{   printf("Palabra reservada finally \n");}
float		{   printf("Palabra reservada float \n");}

for		{   printf("Palabra reservada for \n");}
goto		{   printf("Palabra reservada goto \n");}
if		{   printf("Palabra reservada if \n");}
implements	{   printf("Palabra reservada implements \n");}
import		{   printf("Palabra reservada import \n");}
instanceof	{   printf("Palabra reservada instanceof \n");}
int		{   printf("Palabra reservada int \n");}
interface	{   printf("Palabra reservada interface \n");}
long		{   printf("Palabra reservada long \n");}
native		{   printf("Palabra reservada native \n");}

new		{   printf("Palabra reservada new \n");}
package		{   printf("Palabra reservada package \n");}
private		{   printf("Palabra reservada private \n");}
protected	{   printf("Palabra reservada protected \n");}
public		{   printf("Palabra reservada public \n");}
return		{   printf("Palabra reservada return \n");}
short		{   printf("Palabra reservada short \n");}
static		{   printf("Palabra reservada static \n");}
strictfp	{   printf("Palabra reservada stricfp \n");}
super		{   printf("Palabra reservada super \n");}

switch		{   printf("Palabra reservada switch \n");}
this		{   printf("Palabra reservada this \n");}
throw		{   printf("Palabra reservada throw \n");}
throws		{   printf("Palabra reservada throws \n");}
transient	{   printf("Palabra reservada transient \n");}
try		{   printf("Palabra reservada try \n");}
void		{   printf("Palabra reservada void \n");}
volatile	{   printf("Palabra reservada volatile \n");}
while		{   printf("Palabra reservada while \n");}


\+		{   printf("Operador reservado + \n");}
\-		{   printf("Operador reservado - \n");}
\*		{   printf("Operador reservado * \n");}
\/		{   printf("Operador reservado / \n");}
\|		{   printf("Operador reservado ||\n");}
\;		{   printf("Operador reservado ;\n");}
\!		{   printf("Operador reservado ! \n");}
\%		{   printf("Operador reservado % \n");}
\^		{   printf("Operador reservado ^ \n");}
\=		{   printf("Operador reservado = \n");}
\'		{   printf("Operador reservado ' \n");}

[0-9]+[a-zA-Z]+	{   printf("Identificador no valido por que empieza con un digito y para un entero no es posible contiene letras \n");}

[a-zA-Z]+\+[a-zA-Z]* {   printf("Identificador no valido Operador reservado + \n");}
[a-zA-Z]+\-[a-zA-Z]* {   printf("Identificador no valido Operador reservado - \n");}
[a-zA-Z]+\*[a-zA-Z]* {   printf("Identificador no valido Operador reservado * \n");}
[a-zA-Z]+\/[a-zA-Z]* {   printf("Identificador no valido Operador reservado / \n");}
[a-zA-Z]+\|[a-zA-Z]* {   printf("Identificador no valido Operador reservado | \n");}
[a-zA-Z]+\;[a-zA-Z]* {   printf("Identificador no valido Operador reservado ; \n");}
[a-zA-Z]+\![a-zA-Z]* {   printf("Identificador no valido Operador reservado ! \n");}
[a-zA-Z]+\%[a-zA-Z]* {   printf("Identificador no valido Operador reservado % \n");}
[a-zA-Z]+\^[a-zA-Z]* {   printf("Identificador no valido Operador reservado ^ \n");}
[a-zA-Z]+\=[a-zA-Z]* {   printf("Identificador no valido Operador reservado = \n");}
[a-zA-Z]+\'[a-zA-Z]* {   printf("Identificador no valido Operador reservado ' \n");}

a+bb*      		{   printf("una o mas a's\n");} 
[0-9]+      		{   printf("Entero \n");}
[a-zA-Z][a-zA-Z0-9]*	{   printf("Identificador \n");}
\n         		{ nline++; nchar++; }
[^ \t\n]+  		{ nword++, nchar += yyleng; }
.          		{ nchar++; }

%%
int main(void) {
    yylex();
    printf("%d\t%d\t%d\n", nchar, nword, nline);
    return 0;
}