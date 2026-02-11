
wide_resnet_50     <- c()
wide_resnet_50_tgc <- c()

alexnet     <- c()
alexnet_tgc <- c()

inception_v3     <- c()
inception_v3_tgc <- c()

mobilenet_v3     <- c()
mobilenet_v3_tgc <- c()

mobilenet_v2     <- c()
mobilenet_v2_tgc <- c()

vgg_16     <- c()
vgg_16_tgc <- c()

googlenet     <- c()
googlenet_tgc <- c()

resnet_18     <- c()
resnet_18_tgc <- c()

resnet_50     <- c()
resnet_50_tgc <- c()

resnet_152     <- c()
resnet_152_tgc <- c()

resnext_50     <- c()
resnext_50_tgc <- c()

densenet     <- c(2.5489, 2.5808, 2.6478, 2.5636, 2.5595)
densenet_tgc <- c(2.5772, 2.6097, 2.6019, 2.7617, 2.6522)


densenet     <- c(20.2684, 20.2586, 19.5586, 19.5268, 19.8468)
densenet_tgc <- c(19.8193, 20.1136, 19.7716, 20.3277, 19.4128)

# Dados de exemplo
dados <- densenet
dados_tgc <- densenet_tgc

# Calcula a média
media <- mean(dados)
print(paste("Média:", media))
media <- mean(dados_tgc)
print(paste("Média:", media))

# Calcula o desvio padrão
desvio_padrao <- sd(dados)
print(paste("Desvio padrão:", desvio_padrao))
desvio_padrao <- sd(dados_tgc)
print(paste("Desvio padrão:", desvio_padrao))

print(paste("Speedup:", mean(dados)/mean(dados_tgc)))

