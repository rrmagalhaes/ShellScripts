# ShellScripts

-- Bourn Shell (Sh)
-- Bourn Again Shell (Bash)
Interpretador de Comandos e/ou linguágem de programção que visa criar automatizações de tarefas.

## Invoke .sh
sh script.sh
bash script.sh
./script.sh
chmod +x script.sh
source script.sh

## Coments
*simples* - # Texto do comentário (Pode ser usado após um comando na mesma linha)
*por bloco* - 
:<<'TEXTOEMMAISCULO'
    comand
    comand
    comand
TEXTOEMMAISCULO'

## Variables
*printenv* e *env* - Variáveis de ambiente

Ex.:
*simples*
ola="Olá Mundo"
echo $ola

*array*
mundo=("América" "África" "Europa" "Ásia" "Oceania")
echo ${mundo[3]}

echo ${mundo[*]} - Printa todos os elementos
echo ${mundo[@]:1} - Printa o elemento 1 (pode adicionar mais colocando : e a posição ${mundo[@]:0:1:2})
echo ${#mundo[@]} - Printa a quantidade de elementos no array

*unset mundo* -  deleta array mundo
*unset mundo[1]* - deleta posição 1 do array

*Outra maneira de criar o array* - declare -a mundo

*declarar posição array*
mundo[0]="Terra"

*set* - mostrar ou modificar variáveis de ambiente
*export* - exportar varíavel para as variáveis de ambiente (apenas para aquela sessão)

## Commands
#!/bin/bash

*echo* - Printa informação na tela

