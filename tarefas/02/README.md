<img align="left" width="250" height="200" src="../../assets/cc.png" />

**AARE**: Paradigmas de Linguagem de Programação

**Professor**: Ausberto S. Castro Vera

[ascv@uenf.br](mailto:ascv@uenf.br)

**Data**: 5 de outubro de 2021

**Nome Aluno**: Zoey de Souza Pessanha

---

# Tarefa 02

## 1. Descrição do problema

Defina completamente e mostre pelo menos 2 exemplos de:
- Parâmetros de valor
- Parâmetros de referência
- Parâmetros de procedimento
- Parâmetros de função

### Parâmetros de valor

Na passagem de parâmetros por valor, a função ou procedimento recebe uma cópia do valor do argumento. Isto é, o parâmetro é duplicado e não interfere no valor do parâmetro original, que está num escopo diferente. Essa é a forma padrão de passagem de parâmetros da maioria das linguagens de programação modernas.

##### Exemplos
```rust
fn succ(a: i32) -> i32 {
  a + 1
}

fn prev(a: i32) -> i32 {
  a - 1
}

fn main() {
  let x = 2;

  printf!("x == {}", x); // 2
  printf!("succ(x) == {}", succ(x)); // 3
  printf!("pev(x) == {}", prev(x)); // 1
  printf!("x == {}", x) // 2
}
```

### Parâmetros de referência

Já na passagem de parâmetros por referência, a função ou procedimento recebe um atalho para referência do parâmetro, sem criar cópias. Caso haja alguma mutação no valor do parâmetros passado por referência, ele será alterado em todos os escopos utilizados. Geralmente a passagem por referência é mais performática, porém muito suscetível a erros em tempo de execução por causa da mutabilidade.

Essa forma de passagem de parâmetros não é mais comum, sendo substituida pela passagem por endereçamento - como em `C` - ou um modelo híbrido como em `Javascript` ou `Python` que passam valores primitivos como valor, porém passam objetos e classes como referência.

A título de curiosidade, há algumas exceções. Uma delas é `Rust`, onde todos os parâmetros são passados por valor, mesmo que haja referência na linguagem. Isso porque referências são cidadãs de primeira classe e também são passadas por valor. Já em linguagens funcionais, em específico as da família `ML`, não existe esse conceito de passagem por valor ou por referência uma vez que não é possível atribuir valores a variáveis.

```c
int succ(int* x) {
  return (*x) + 1;
}

int prev(int* x) {
  return (*x) - 1;
}

int main() {
  int x = 2;

  printf("x == %d\n", x); // 2
  succ(&x);
  printf("succ(x) == %d\n", x); // 3
  prev(&x);
  printf("prev(x) == %d\n", x); // 2
  printf("x == %d\n", x); // 2
}
```

### Parâmetros de procedimentos

Procedimentos são trechos idependentes de código que executam uma simples tarefa a fim de não causar repetição de lógica no programa e também pode ser chamado de sub-rotina. A diferença entre procedimentos e funções é que nos procedimentos nenhum valor é retornado, além de sempre haver efeitos colaterais; ou seja, o estado do programa sempre será modificado numa chamada de um procedimento.

```rust
fn msg() {
  printf!("Procedimento sem parâmetro!")
}

fn msg1(texto: &str) {
  printf!("Procedimento com parâmetro{}", texto)
}

fn main() {
  msg();
  msg1("!")
}
```

### Procedimentos de função

As funções seguem o mesmo conceito dos procedimentos, porém sempre retornam um valor como resultado de sua chamada. Elas podem ou não produzir efeitos colaterais.

Em muitas linguagens, funções são cidadãs de primeira classe, o que significa que elas também podem ser passadas como parâmetro para outras funções ou também serem retornadas de outras funções.

```haskell
true a b = a
false a b = b

true 1 2 -- 1
false 1 2 -- 2

true (true) (true) -- true
true (false) (true) -- false
```
