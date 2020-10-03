

#' Gera um grafico de serie
#'
#' @param tab uma tabela
#' @param nome_muinicipio nome de um nunuciipo da tabela
#'
#' @return um grafico
#' @export
#'
criar_serie_municipio <- function(tab, munip) {
  tab %>%
    dplyr::filter(municipio == munip) %>%
  ggplot2::ggplot() +
  ggplot2::geom_line(ggplot2::aes(x = mes_ano, y = vitimas)) +
   ggplot2::labs(y = "Número de vítimas", x = "Mês", title = munip) +
   ggplot2::theme_minimal()

}





