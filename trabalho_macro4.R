##### TRABALHO MACRO 4


## Importando os dados e ajustando os dataframes

## ASSETS:

# FDI (BP)

library(readxl)
fdi_assets_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_assets_bp.xlsx",
                            sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_assets_bp.xlsx")[2])
View(fdi_assets_bp_mod)

fdi_assets_bp <- data.frame(t(fdi_assets_bp_mod))

fdi_assets_bp <- fdi_assets_bp[-1 , -c(1:4, 162:166)]

colnames(fdi_assets_bp) <- as.character(unlist(fdi_assets_bp_mod[c(5:161), 1]))
rownames(fdi_assets_bp) <- as.character(unlist(fdi_assets_bp_mod[4, c(2:ncol(fdi_assets_bp_mod))]))

# FDI (IIP)

fdi_assets_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_assets_iip.xlsx",
                                sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_assets_iip.xlsx")[2])
View(fdi_assets_iip_mod)

fdi_assets_iip <- data.frame(t(fdi_assets_iip_mod))

View(fdi_assets_iip)

fdi_assets_iip <- fdi_assets_iip[-1 , -c(1:4, 213:218)]

colnames(fdi_assets_iip) <- as.character(unlist(fdi_assets_iip_mod[c(5:161), 1]))
rownames(fdi_assets_iip) <- as.character(unlist(fdi_assets_iip_mod[4, c(2:ncol(fdi_assets_iip_mod))]))

# Portfolio equity (BP)

equity_assets_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_assets_bp.xlsx",
                                 sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_assets_bp.xlsx")[2])
View(equity_assets_bp_mod)

equity_assets_bp <- data.frame(t(equity_assets_bp_mod))

View(equity_assets_bp)

equity_assets_bp <- equity_assets_bp[-1 , -c(1:4, 161:165)]

colnames(equity_assets_bp) <- as.character(unlist(equity_assets_bp_mod[c(5:160), 1]))
rownames(equity_assets_bp) <- as.character(unlist(equity_assets_bp_mod[4, c(2:ncol(equity_assets_bp_mod))]))

# Portfolio equity (IIP)

equity_assets_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_assets_iip.xlsx",
                                   sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_assets_iip.xlsx")[2])
View(equity_assets_iip_mod)

equity_assets_iip <- data.frame(t(equity_assets_iip_mod))

View(equity_assets_iip)

equity_assets_iip <- equity_assets_iip[-1 , -c(1:4, 213:218)]

colnames(equity_assets_iip) <- as.character(unlist(equity_assets_iip_mod[c(5:212), 1]))
rownames(equity_assets_iip) <- as.character(unlist(equity_assets_iip_mod[4, c(2:ncol(equity_assets_iip_mod))]))

# Portfolio debt (BP)

debt_assets_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_assets_bp.xlsx",
                                    sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_assets_bp.xlsx")[2])
View(debt_assets_bp_mod)

debt_assets_bp <- data.frame(t(debt_assets_bp_mod))

View(debt_assets_bp)

debt_assets_bp <- debt_assets_bp[-1 , -c(1:4, 159:163)]

colnames(debt_assets_bp) <- as.character(unlist(debt_assets_bp_mod[c(5:158), 1]))
rownames(debt_assets_bp) <- as.character(unlist(debt_assets_bp_mod[4, c(2:ncol(debt_assets_bp_mod))]))

# Portfolio debt (IIP)

debt_assets_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_assets_iip.xlsx",
                                 sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_assets_iip.xlsx")[2])
View(debt_assets_iip_mod)

debt_assets_iip <- data.frame(t(debt_assets_iip_mod))

View(debt_assets_iip)

debt_assets_iip <- debt_assets_iip[-1 , -c(1:4, 213:218)]

colnames(debt_assets_iip) <- as.character(unlist(debt_assets_iip_mod[c(5:212), 1]))
rownames(debt_assets_iip) <- as.character(unlist(debt_assets_iip_mod[4, c(2:ncol(debt_assets_iip_mod))]))

# Portfolio other (BP)

other_assets_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_assets_bp.xlsx",
                                sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_assets_bp.xlsx")[2])
View(other_assets_bp_mod)

other_assets_bp <- data.frame(t(other_assets_bp_mod))

View(other_assets_bp)

other_assets_bp <- other_assets_bp[-1 , -c(1:4, 163:167)]

colnames(other_assets_bp) <- as.character(unlist(other_assets_bp_mod[c(5:162), 1]))
rownames(other_assets_bp) <- as.character(unlist(other_assets_bp_mod[4, c(2:ncol(other_assets_bp_mod))]))

# Portfolio other (IIP)

other_assets_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_assets_iip.xlsx",
                                  sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_assets_iip.xlsx")[2])
View(other_assets_iip_mod)

other_assets_iip <- data.frame(t(other_assets_iip_mod))

View(other_assets_iip)

other_assets_iip <- other_assets_iip[-1 , -c(1:4, 213:218)]

colnames(other_assets_iip) <- as.character(unlist(other_assets_iip_mod[c(5:212), 1]))
rownames(other_assets_iip) <- as.character(unlist(other_assets_iip_mod[4, c(2:ncol(other_assets_iip_mod))]))


## LIABILITIES

# FDI (BP)

fdi_liabilities_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_liabilities_bp.xlsx",
                                sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_liabilities_bp.xlsx")[2])
View(fdi_liabilities_bp_mod)

fdi_liabilities_bp <- data.frame(t(fdi_liabilities_bp_mod))

View(fdi_liabilities_bp)

fdi_liabilities_bp <- fdi_liabilities_bp[-1 , -c(1:4, 163:167)]

colnames(fdi_liabilities_bp) <- as.character(unlist(fdi_liabilities_bp_mod[c(5:162), 1]))
rownames(fdi_liabilities_bp) <- as.character(unlist(fdi_liabilities_bp_mod[4, c(2:ncol(fdi_liabilities_bp_mod))]))

# FDI (IIP)

fdi_liabilities_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_liabilities_iip.xlsx",
                                     sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/fdi_liabilities_iip.xlsx")[2])
View(fdi_liabilities_iip_mod)

fdi_liabilities_iip <- data.frame(t(fdi_liabilities_iip_mod))

View(fdi_liabilities_iip)

fdi_liabilities_iip <- fdi_liabilities_iip[-1 , -c(1:4, 213:218)]

colnames(fdi_liabilities_iip) <- as.character(unlist(fdi_liabilities_iip_mod[c(5:212), 1]))
rownames(fdi_liabilities_iip) <- as.character(unlist(fdi_liabilities_iip_mod[4, c(2:ncol(fdi_liabilities_iip_mod))]))

# Portfolio Equity (BP)

equity_liabilities_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_liabilities_bp.xlsx",
                                              sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_liabilities_bp.xlsx")[2])

View(equity_liabilities_bp_mod)

equity_liabilities_bp <- data.frame(t(equity_liabilities_bp_mod))

View(equity_liabilities_bp)

equity_liabilities_bp <- equity_liabilities_bp[-1 , -c(1:4, 161:165)]

colnames(equity_liabilities_bp) <- as.character(unlist(equity_liabilities_bp_mod[c(5:160), 1]))
rownames(equity_liabilities_bp) <- as.character(unlist(equity_liabilities_bp_mod[4, c(2:ncol(equity_liabilities_bp_mod))]))

# Portfolio Equity (IIP)

equity_liabilities_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_liabilities_iip.xlsx",
                                        sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_equity_liabilities_iip.xlsx")[2])

View(equity_liabilities_iip_mod)

equity_liabilities_iip <- data.frame(t(equity_liabilities_iip_mod))

View(equity_liabilities_iip)

equity_liabilities_iip <- equity_liabilities_iip[-1 , -c(1:4, 213:218)]

colnames(equity_liabilities_iip) <- as.character(unlist(equity_liabilities_iip_mod[c(5:212), 1]))
rownames(equity_liabilities_iip) <- as.character(unlist(equity_liabilities_iip_mod[4, c(2:ncol(equity_liabilities_iip_mod))]))

# Portfolio Debt (BP)

debt_liabilities_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_liabilities_bp.xlsx",
                                         sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_liabilities_bp.xlsx")[2])

View(debt_liabilities_bp_mod)

debt_liabilities_bp <- data.frame(t(debt_liabilities_bp_mod))

View(debt_liabilities_bp)

debt_liabilities_bp <- debt_liabilities_bp[-1 , -c(1:4, 158:162)]

colnames(debt_liabilities_bp) <- as.character(unlist(debt_liabilities_bp_mod[c(5:157), 1]))
rownames(debt_liabilities_bp) <- as.character(unlist(debt_liabilities_bp_mod[4, c(2:ncol(debt_liabilities_bp_mod))]))

# Portfolio Debt (IIP)

debt_liabilities_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_liabilities_iip.xlsx",
                                      sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/portfolio_debt_liabilities_iip.xlsx")[2])

View(debt_liabilities_iip_mod)

debt_liabilities_iip <- data.frame(t(debt_liabilities_iip_mod))

View(debt_liabilities_iip)

debt_liabilities_iip <- debt_liabilities_iip[-1 , -c(1:4, 213:218)]

colnames(debt_liabilities_iip) <- as.character(unlist(debt_liabilities_iip_mod[c(5:212), 1]))
rownames(debt_liabilities_iip) <- as.character(unlist(debt_liabilities_iip_mod[4, c(2:ncol(debt_liabilities_iip_mod))]))

# Portfolio other (BP)

other_liabilities_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_liabilities_bp.xlsx",
                                  sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_liabilities_bp.xlsx")[2])
View(other_liabilities_bp_mod)

other_liabilities_bp <- data.frame(t(other_liabilities_bp_mod))

View(other_liabilities_bp)

other_liabilities_bp <- other_liabilities_bp[-1 , -c(1:4, 163:167)]

colnames(other_liabilities_bp) <- as.character(unlist(other_liabilities_bp_mod[c(5:162), 1]))
rownames(other_liabilities_bp) <- as.character(unlist(other_liabilities_bp_mod[4, c(2:ncol(other_liabilities_bp_mod))]))

# Portfolio other (IIP)

other_liabilities_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_liabilities_iip.xlsx",
                                   sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/other_liabilities_iip.xlsx")[2])
View(other_liabilities_iip_mod)

other_liabilities_iip <- data.frame(t(other_liabilities_iip_mod))

View(other_liabilities_iip)

other_liabilities_iip <- other_liabilities_iip[-1 , -c(1:4, 213:218)]

colnames(other_liabilities_iip) <- as.character(unlist(other_liabilities_iip_mod[c(5:212), 1]))
rownames(other_liabilities_iip) <- as.character(unlist(other_liabilities_iip_mod[4, c(2:ncol(other_liabilities_iip_mod))]))


################################################################################

# Reserves assets (BP)

reserves_bp_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/reserve_assets_bp.xlsx",
                                        sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/reserve_assets_bp.xlsx")[2])
View(reserves_bp_mod)

reserves_bp <- data.frame(t(reserves_bp_mod))

View(reserves_bp)

reserves_bp <- reserves_bp[-1 , -c(1:4, 163:167)]

colnames(reserves_bp) <- as.character(unlist(reserves_bp_mod[c(5:162), 1]))
rownames(reserves_bp) <- as.character(unlist(reserves_bp_mod[4, c(2:ncol(reserves_bp_mod))]))

# Reserves assets (IIP)

reserves_iip_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/reserve_assets_iip.xlsx",
                              sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/reserve_assets_iip.xlsx")[2])
View(reserves_iip_mod)

reserves_iip <- data.frame(t(reserves_iip_mod))

View(reserves_iip)

reserves_iip <- reserves_iip[-1 , -c(1:4, 213:218)]

colnames(reserves_iip) <- as.character(unlist(reserves_iip_mod[c(5:212), 1]))
rownames(reserves_iip) <- as.character(unlist(reserves_iip_mod[4, c(2:ncol(reserves_iip_mod))]))

# Claims private sector

claims_ps_mod <- read_excel("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/claims_private_sector.xlsx",
                               sheet = excel_sheets("G:/Meu Drive/PUC - Rio/3º Semestre/Macroeconomia IV/Márcio/Trabalho/Dados FMI/claims_private_sector.xlsx")[2])
View(claims_ps_mod)

claims_ps <- data.frame(t(claims_ps_mod))

View(claims_ps)

claims_ps <- claims_ps[-c(1:3) , -c(1:5)]

colnames(claims_ps) <- as.character(unlist(claims_ps_mod[c(6:153), 1]))
rownames(claims_ps) <- as.character(unlist(claims_ps_mod[5, c(4:ncol(claims_ps_mod))]))


################################################################################

# Inicialmente, vamos selecionar apenas os países da América Latina em cada um
# dos dataframes

# Vetor com nomes de países da LatAm:
paises_latam <- c("Argentina", "Brazil", "Chile", "Colombia", "Costa Rica",
                  "El Salvador", "Mexico", "Paraguay", "Peru")

# Modificando cada um dos dataframes
library(dplyr)

fdi_assets_bp_latam <- select(fdi_assets_bp, all_of(paises_latam))
fdi_assets_iip_latam <- select(fdi_assets_iip, all_of(paises_latam))
equity_assets_bp_latam <- select(equity_assets_bp, all_of(paises_latam))
equity_assets_iip_latam <- select(equity_assets_iip, all_of(paises_latam))
debt_assets_bp_latam <- select(debt_assets_bp, all_of(paises_latam))
debt_assets_iip_latam <- select(debt_assets_iip, all_of(paises_latam))
other_assets_bp_latam <- select(other_assets_bp, all_of(paises_latam))
other_assets_iip_latam <- select(other_assets_iip, all_of(paises_latam))

fdi_liabilities_bp_latam <- select(fdi_liabilities_bp, all_of(paises_latam))
fdi_liabilities_iip_latam <- select(fdi_liabilities_iip, all_of(paises_latam))
equity_liabilities_bp_latam <- select(equity_liabilities_bp, all_of(paises_latam))
equity_liabilities_iip_latam <- select(equity_liabilities_iip, all_of(paises_latam))
debt_liabilities_bp_latam <- select(debt_liabilities_bp, all_of(paises_latam))
debt_liabilities_iip_latam <- select(debt_liabilities_iip, all_of(paises_latam))
other_liabilities_bp_latam <- select(other_liabilities_bp, all_of(paises_latam))
other_liabilities_iip_latam <- select(other_liabilities_iip, all_of(paises_latam))
reserves_bp_latam <- select(reserves_bp, all_of(paises_latam))
reserves_iip_latam <- select(reserves_iip, all_of(paises_latam))

# Substituindo entradas vazias (...) por NA:

fdi_assets_bp_latam[fdi_assets_bp_latam == "..."] <- NA
fdi_assets_iip_latam[fdi_assets_iip_latam == "..."] <- NA
equity_assets_bp_latam[equity_assets_bp_latam == "..."] <- NA
equity_assets_iip_latam[equity_assets_iip_latam == "..."] <- NA
debt_assets_bp_latam[debt_assets_bp_latam == "..."] <- NA
debt_assets_iip_latam[debt_assets_iip_latam == "..."] <- NA
other_assets_bp_latam[other_assets_bp_latam == "..."] <- NA
other_assets_iip_latam[other_assets_iip_latam == "..."] <- NA

fdi_liabilities_bp_latam[fdi_liabilities_bp_latam == "..."] <- NA
fdi_liabilities_iip_latam[fdi_liabilities_iip_latam == "..."] <- NA
equity_liabilities_bp_latam[equity_liabilities_bp_latam == "..."] <- NA
equity_liabilities_iip_latam[equity_liabilities_iip_latam == "..."] <- NA
debt_liabilities_bp_latam[debt_liabilities_bp_latam == "..."] <- NA
debt_liabilities_iip_latam[debt_liabilities_iip_latam == "..."] <- NA
other_liabilities_bp_latam[other_liabilities_bp_latam == "..."] <- NA
other_liabilities_iip_latam[other_liabilities_iip_latam == "..."] <- NA
reserves_bp_latam[reserves_bp_latam == "..."] <- NA
reserves_iip_latam[reserves_iip_latam == "..."] <- NA


# Vamos interpolar os dados para obtermos frequência mensal a partir
# da frequência trimestral

# Uma ideia é tomar a amostra a partir de 2000

fdi_assets_bp_latam <- fdi_assets_bp_latam[-c(1:40), ]
fdi_assets_iip_latam <- fdi_assets_iip_latam[-c(1:40), ]
equity_assets_bp_latam <- equity_assets_bp_latam[-c(1:40), ]
equity_assets_iip_latam <- equity_assets_iip_latam[-c(1:40), ]
debt_assets_bp_latam <- debt_assets_bp_latam[-c(1:40), ]
debt_assets_iip_latam <- debt_assets_iip_latam[-c(1:40), ]
other_assets_bp_latam <- other_assets_bp_latam[-c(1:40), ]
other_assets_iip_latam <- other_assets_iip_latam[-c(1:40), ]

fdi_liabilities_bp_latam <- fdi_liabilities_bp_latam[-c(1:40), ]
fdi_liabilities_iip_latam <- fdi_liabilities_iip_latam[-c(1:40), ]
equity_liabilities_bp_latam <- equity_liabilities_bp_latam[-c(1:40), ]
equity_liabilities_iip_latam <- equity_liabilities_iip_latam[-c(1:40), ]
debt_liabilities_bp_latam <- debt_liabilities_bp_latam[-c(1:40), ]
debt_liabilities_iip_latam <- debt_liabilities_iip_latam[-c(1:40), ]
other_liabilities_bp_latam <- other_liabilities_bp_latam[-c(1:40), ]
other_liabilities_iip_latam <- other_liabilities_iip_latam[-c(1:40), ]
reserves_bp_latam <- reserves_bp_latam[-c(1:40), ]
reserves_iip_latam <- reserves_iip_latam[-c(1:40), ]


fdi_assets_bp_latam$Trimestre <- rownames(fdi_assets_bp_latam)
rownames(fdi_assets_bp_latam) <- NULL

fdi_assets_iip_latam$Trimestre <- rownames(fdi_assets_iip_latam)
rownames(fdi_assets_iip_latam) <- NULL

equity_assets_bp_latam$Trimestre <- rownames(equity_assets_bp_latam)
rownames(equity_assets_bp_latam) <- NULL

equity_assets_iip_latam$Trimestre <- rownames(equity_assets_iip_latam)
rownames(equity_assets_iip_latam) <- NULL

debt_assets_bp_latam$Trimestre <- rownames(debt_assets_bp_latam)
rownames(debt_assets_bp_latam) <- NULL

debt_assets_iip_latam$Trimestre <- rownames(debt_assets_iip_latam)
rownames(debt_assets_iip_latam) <- NULL

other_assets_bp_latam$Trimestre <- rownames(other_assets_bp_latam)
rownames(other_assets_bp_latam) <- NULL

other_assets_iip_latam$Trimestre <- rownames(other_assets_iip_latam)
rownames(other_assets_iip_latam) <- NULL

fdi_liabilities_bp_latam$Trimestre <- rownames(fdi_liabilities_bp_latam)
rownames(fdi_liabilities_bp_latam) <- NULL

fdi_liabilities_iip_latam$Trimestre <- rownames(fdi_liabilities_iip_latam)
rownames(fdi_liabilities_iip_latam) <- NULL

equity_liabilities_bp_latam$Trimestre <- rownames(equity_liabilities_bp_latam)
rownames(equity_liabilities_bp_latam) <- NULL

equity_liabilities_iip_latam$Trimestre <- rownames(equity_liabilities_iip_latam)
rownames(equity_liabilities_iip_latam) <- NULL

debt_liabilities_bp_latam$Trimestre <- rownames(debt_liabilities_bp_latam)
rownames(debt_liabilities_bp_latam) <- NULL

debt_liabilities_iip_latam$Trimestre <- rownames(debt_liabilities_iip_latam)
rownames(debt_liabilities_iip_latam) <- NULL

other_liabilities_bp_latam$Trimestre <- rownames(other_liabilities_bp_latam)
rownames(other_liabilities_bp_latam) <- NULL

other_liabilities_iip_latam$Trimestre <- rownames(other_liabilities_iip_latam)
rownames(other_liabilities_iip_latam) <- NULL

reserves_bp_latam$Trimestre <- rownames(reserves_bp_latam)
rownames(reserves_bp_latam) <- NULL

reserves_iip_latam$Trimestre <- rownames(reserves_iip_latam)
rownames(reserves_iip_latam) <- NULL

# Por enquanto, vamos trabalhar apenas com os dataframes BP, que não apresentam
# tantas entradas NA

# Vamos reunir os dataframes BP de inflows (liabilities) em um só dataframe

# Função para renomear as colunas, exceto "Trimestre"
rename_columns_except_trimestre <- function(df, suffix) {
  cols_to_rename <- names(df)[-match("Trimestre", names(df))]
  new_names <- paste(cols_to_rename, suffix, sep = "_")
  names(df)[names(df) %in% cols_to_rename] <- new_names
  return(df)
}

# Renomear as colunas para cada dataframe
fdi_liabilities_bp_latam <- rename_columns_except_trimestre(fdi_liabilities_bp_latam,
                                                            "fdi_inflows")
equity_liabilities_bp_latam <- rename_columns_except_trimestre(equity_liabilities_bp_latam,
                                                               "equity_inflows")
debt_liabilities_bp_latam <- rename_columns_except_trimestre(debt_liabilities_bp_latam,
                                                             "debt_inflows")
other_liabilities_bp_latam <- rename_columns_except_trimestre(other_liabilities_bp_latam,
                                                             "other_inflows")

# Reunir os dataframes usando merge com base na coluna "Trimestre"
inflows_bp <- merge(fdi_liabilities_bp_latam, equity_liabilities_bp_latam,
                    by = "Trimestre", all = TRUE)
inflows_bp <- merge(inflows_bp, debt_liabilities_bp_latam, by = "Trimestre", all = TRUE)
inflows_bp <- merge(inflows_bp, other_liabilities_bp_latam, by = "Trimestre", all = TRUE)

# Função para corrigir as entradas removendo os caracteres não-numéricos
clean_numeric <- function(x) {
  as.numeric(gsub("[^0-9.-]", "", x))
}

# Aplicar a função para todas as colunas numéricas
inflows_bp[, -1] <- sapply(inflows_bp[, -1], clean_numeric)


# Agora, vamos reunir os dataframes BP de outflows (assets) em um só dataframe

# Renomear as colunas para cada dataframe
fdi_assets_bp_latam <- rename_columns_except_trimestre(fdi_assets_bp_latam,
                                                            "fdi_outflows")
equity_assets_bp_latam <- rename_columns_except_trimestre(equity_assets_bp_latam,
                                                               "equity_outflows")
debt_assets_bp_latam <- rename_columns_except_trimestre(debt_assets_bp_latam,
                                                             "debt_outflows")
other_assets_bp_latam <- rename_columns_except_trimestre(other_assets_bp_latam,
                                                              "other_outflows")

# Reunir os dataframes usando merge com base na coluna "Trimestre"
outflows_bp <- merge(fdi_assets_bp_latam, equity_assets_bp_latam,
                    by = "Trimestre", all = TRUE)
outflows_bp <- merge(outflows_bp, debt_assets_bp_latam, by = "Trimestre", all = TRUE)
outflows_bp <- merge(outflows_bp, other_assets_bp_latam, by = "Trimestre", all = TRUE)

# Aplicar a função para todas as colunas numéricas
outflows_bp[, -1] <- sapply(outflows_bp[, -1], clean_numeric)

# Nossos dois dataframes estão ajustados

# Agora, para converter para frequência mensal, precisamos fazer a interpolação

library(zoo)

inflows_bp$Trimestre <- as.yearqtr(inflows_bp$Trimestre, format = "%Y Q %q")

inflows_bp$Trimestre <- as.Date(inflows_bp$Trimestre)

meses <- lapply(X = inflows_bp$Trimestre, FUN = seq.Date, by = "month", length.out = 3)

meses <- data.frame(Trimestre = do.call(what = c, meses))

library(dplyr)

inflows_bp <- left_join(x = meses, y = inflows_bp, by = "Trimestre")

col_names <- names(inflows_bp)[-1]

# Loop sobre as colunas
for (col in col_names) {
  # Realiza a interpolação usando na.spline
  inflows_bp[[col]] <- na.spline(object = inflows_bp[[col]])
}

# O dataframe inflows_bp agora contém as colunas interpoladas

# Procedendo agora para outflows_bp

outflows_bp$Trimestre <- as.yearqtr(outflows_bp$Trimestre, format = "%Y Q %q")

outflows_bp$Trimestre <- as.Date(outflows_bp$Trimestre)

meses <- lapply(X = outflows_bp$Trimestre, FUN = seq.Date, by = "month", length.out = 3)

meses <- data.frame(Trimestre = do.call(what = c, meses))

outflows_bp <- left_join(x = meses, y = outflows_bp, by = "Trimestre")

col_names <- names(outflows_bp)[-1]

# Loop sobre as colunas
for (col in col_names) {
  # Realiza a interpolação usando na.spline
  outflows_bp[[col]] <- na.spline(object = outflows_bp[[col]])
}

# Agora, precisamos estacionarizar as séries: iremos tomar as primeiras diferenças

# Calculando a primeira diferença para todas as colunas (exceto a primeira coluna com os meses)
inflows_bp <- inflows_bp %>%
  mutate(across(-1, ~ . - lag(.)))

outflows_bp <- outflows_bp %>%
  mutate(across(-1, ~ . - lag(.)))

# Determinando a estrutura do modelo

library(dfms)
library(xts)

# A função ICr( ) pode ser aplicada para determinar o número de fatores: ela 
# computa 3 information criteria propostos em Bai and NG (2002)

ic_inflows <- ICr(inflows_bp)

print(ic_inflows)

plot(ic_inflows)

screeplot(ic_inflows)

# Pelo screeplot, podemos escolher 2 fatores para estimar o modelo, já que 
# aparentemente os fatores 3, 4 e 5 em diante não explicam muito da variância

# Agora, devemos a lag-order do VAR de fatores na equação de transição
# Isto é feito usando o pacote vars, na função VARselect(), com as
# estimativas PCA dos fatores reportadas por ICr()

# Utilizando vars::VARselect() com 2 componentes principais para estimar a
# ordem do lag do VAR

vars::VARselect(ic_inflows$F_pca[ ,1:2])

# Iremos utilizar 10 lags

# Estimando o modelo com 2 fatores e 10 lags

modelo_inflows <- DFM(inflows_bp, r = 2, p = 10) 

# Agora, para outflows

ic_outflows <- ICr(outflows_bp)

print(ic_outflows)

plot(ic_outflows)

screeplot(ic_outflows)

# Vamos utilizar 1 fator para outflows

vars::VARselect(ic_outflows$F_pca[ , 1])

# Estimando o modelo com 1 fator de 10 lags

modelo_outflows <- DFM(outflows_bp, r = 1, p = 10)







