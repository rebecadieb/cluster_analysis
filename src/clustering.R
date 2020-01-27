#### AGRUPAMENTO ####

# Parametros da funcao
# input: caminho indicando onde esta localizado o arquivo .CSV com os dados para agrupamento 
# output: caminho que indica onde e com qual nome o arquivo .CSV com os grupos formados devera ser salvo

#### TÉCNICA DE CLUSTER - K-MEDIAN  COM USO DA MEDIANA GEOMÉTRICA ####

clustering <- function(input, output){

input <- read_csv(input)

scale_data <- input %>% mutate_at(2:5, scale) %>% as.matrix()

set.seed(378883)
g1 <- kGmedian(scale_data[,-c(1,6)], ncenters = 5, nstar = 100, nstartkmeans = 100)

#### SALVAR ####

cluster_data <- input %>% dplyr::mutate(grupo = g1$cluster)

write_csv(cluster_data, output)

print(paste0("Os dados agrupados foram salvos em ", output))

}

