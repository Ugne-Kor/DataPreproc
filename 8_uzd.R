# Funkcijos surušiuoja failą pagal metus ir šalies pavadinimą, pašalina stebinius, kurių daugiau nei 50% reikšmės yra tuščios

#Perskaito duomenų failą "datapol.cvs"
data_pol <- read.csv("C:/Users/ugnek/OneDrive - Kaunas University of Technology/2 semestras/R/datapol.csv")
#Išrikiuoja duomenų failą pagal metus ir šalies pavadinimą.
data_pol <- arrange(data_pol, year, country, politics)
#Pašalina stebinius, kurių daugiau nei 50% reikšmės yra tuščios.
data_pol <- data_pol[rowSums(is.na(data_pol))<(ncol(data_pol)/2),]

