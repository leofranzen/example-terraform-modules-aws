# example-terraform-modules-aws
Código mostra um pequeno exemplo do uso de módulos no terraform.

Com o uso de módulos é possível evitar a duplicidade de códigos no terraform.

Por exemplo é criado um módulo de criação de VPC na AWS que cria automaticamente vpc, subnet, igw, nat gateway, route public/private.

É fácil a utilização de módulos, sendo apenas passados variavéis no módulo, o resto o módulo irá interpretar essas váriaveis e criar os recursos necessários seguindo o padrão de quem criou o módulo.

# Documentação dos módulos
A documentação dos módulo foi criada com a ajuda do [terraform-docs](https://github.com/terraform-docs/terraform-docs/).

Comando usado para criar a documentação:
```
terraform-docs markdown modules/vpc/ > modules/vpc/README.md
```

Nota a documentação pode ser criada e feito o push durante a pipeline.
