#Pré-requisitos para vincular o git ao RStudio Cloud

# Criar uma conta no Github(editar perfil e url)
# Criar um novo repositório 
# Copiar a url do repositório e trazer pro RStudio Cloud
# No RStudio Cloud, busacar a New project from Git Repository

# Baixar pacotes e liberar os pacotes

install.packages("devtools")
install.packages("usethis")
install.packages("blogdown")
library(usethis)
library(devtools)
library(blogdown)

# Instalar a livraria Hugo para criar o blog

blogdown::install_hugo()
### Ir na pagina do themes.gohugo.io e escolher o tema
### Normalmente usa-se /theme/academic/
### Aqui a escolha foi : 
blogdown::new_site(theme ='darshanbaral/aafu')


usethis::use_git_config(use.name="glauberfbarret",
                        use.email="glauberfbarreto@gmail.com")
serve_site()
blogdown::s