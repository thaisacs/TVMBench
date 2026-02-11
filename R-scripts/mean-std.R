

resnet_50_seq <- c(24.7719, 24.8331, 24.9216, 25.5688, 24.7003, 25.4225, 27.0299, 24.9686, 25.4570, 24.783)

resnet_50_tgc <- c(24.7239, 25.3549, 26.0110, 24.7632, 25.8626, 25.2244, 24.9640, 24.9991, 25.0872, 25.5154)




resnet_50_seq <- c(6407.760, 6324.714, 6776.017, 6628.855, 6253.207, 6207.248, 6350.847, 6391.527, 6537.798, 6403.603)

resnet_50_tgc <- c(7007.260, 6892.083, 7055.751, 6991.942, 6735.987, 6937.206, 7092.955, 6968.916, 6810.907, 6715.980)

# Dados de exemplo
dados <- resnet_50_seq
dados_tgc <- resnet_50_tgc

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

print(paste("Speedup:", mean(dados_tgc)/mean(dados)))






resnet_50_seq <- c(24.7719, 24.8331, 24.9216, 25.5688, 24.7003, 25.4225, 27.0299, 24.9686, 25.4570, 24.783)

resnet_50_tgc <- c(24.7239, 25.3549, 26.0110, 24.7632, 25.8626, 25.2244, 24.9640, 24.9991, 25.0872, 25.5154)




tgc <- c(2.6499, 3.5014, 2.6595, 2.7093, 3.1773, 2.7507, 3.5164, 3.0027, 2.6307, 2.7751)

tgc_melhorado <- c(2.6468, 2.5974, 3.0705, 2.5490, 2.6521, 3.0666, 2.5928, 3.0792, 3.1353, 2.7266)

tgc <- c(12118, 11994, 12110, 11918, 12048, 11965, 11936, 12165, 12152, 12092)

tgc_melhorado <- c(12484, 12528, 12468, 12721, 12583, 12443, 12269, 12420, 12356, 12137)



# Dados de exemplo
dados <- resnet_50_tgc
dados_tgc <- resnet_50_seq

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


















