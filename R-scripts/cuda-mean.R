



wide_resnet_50 <- c(4.1365, 4.2516, 4.1712, 4.4635, 4.1197)
wide_resnet_50_tgc <- c(3.8611, 3.9419, 4.1041, 3.9072, 3.8985)

inception_v3 <- c(3.8011, 4.0226, 3.9661, 3.8606, 3.7750)
inception_v3_tgc <- c(3.7785, 3.9364, 3.7959, 3.6752, 3.7280)

mobilenet_v3 <- c(0.7686, 0.7538, 0.7708, 0.7982, 0.7545)
mobilenet_v3_tgc <- c(0.7418, 0.7577, 0.7491, 0.7313, 0.7742)

mobilenet_v2 <- c(0.5390, 0.5559, 0.5480, 0.5642, 0.5149)
mobilenet_v2_tgc <- c(0.5769, 0.5333, 0.5458, 0.5519, 0.5492)

vgg_16 <- c(20.8558, 22.8471, 20.9205, 23.7761, 20.8930)
vgg_16_tgc <- c(20.9752, 20.8501, 20.7701, 20.8831, 21.3547)

googlenet <- c(1.3036, 1.2442, 1.2377, 1.2923, 1.2436)
googlenet_tgc <- c(1.2568, 1.3008, 1.2584, 1.2600, 1.2561)

resnet_18 <- c(0.9944, 0.9914, 1.0045, 1.0379, 0.9938)
resnet_18_tgc <- c(0.9477, 0.9733, 1.0019, 0.9562, 0.9836)

resnet_50 <- c(2.2278, 2.1584, 2.1245, 2.1144, 2.2488)
resnet_50_tgc <- c(2.0272, 2.0566, 2.0723, 2.0518, 2.1013)

resnet_152 <- c(5.6358, 5.5804, 5.4731, 5.3868, 5.3595)
resnet_152_tgc <- c(5.3595, 5.1409, 5.1345, 5.5535, 5.3356)

resnext_50 <- c(1.8697, 1.8793, 1.8966, 1.8593, 1.9768)
resnext_50_tgc <- c(1.8224, 1.8520, 1.8413, 1.8214, 1.8437)

densenet <- c(2.5489, 2.5808, 2.647, 2.563, 2.5595)
densenet_tgc <- c(2.6522, 2.7617, 2.6019, 2.6097, 2.5772)

alexnet <- c(6.5507, 6.6453, 6.6227, 6.6414, 6.6611)
alexnet_tgc <- c(6.6933, 6.7485, 6.6135, 6.7381, 6.6566)

# Dados de exemplo
dados <- googlenet
dados_tgc <- googlenet_tgc

media <- mean(dados_tgc)
print(paste("Média:", media))

desvio_padrao <- sd(dados_tgc)
print(paste("Desvio padrão:", desvio_padrao))

# Calcula a média
media <- mean(dados)
print(paste("Média:", media))

# Calcula o desvio padrão
desvio_padrao <- sd(dados)
print(paste("Desvio padrão:", desvio_padrao))

print(paste("Speedup:", mean(dados)/mean(dados_tgc)))


