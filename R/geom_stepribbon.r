# Courtesy of: https://rdrr.io/cran/RcmdrPlugin.KMggplot2/src/R/geom-stepribbon.r

# require(ggplot2)
#' Step ribbon plots.
#' @title geom_stepribbon
#' \code{geom_stepribbon} is an extension of the \code{geom_ribbon}, and
#' is optimized for Kaplan-Meier plots with pointwise confidence intervals
#' or a confidence band.
#'
#' @section Aesthetics:
#' \Sexpr[results=rd,stage=build]{ggplot2:::rd_aesthetics("geom", "ribbon")}
#'
#' @seealso
#'   \code{\link[ggplot2:geom_ribbon]{geom_ribbon}} \code{geom_stepribbon}
#'   inherits from \code{geom_ribbon}.
#' @param kmplot If \code{TRUE}, missing values are replaced by the previous
#' values. This option is needed to make Kaplan-Meier plots if the last
#' observation has event, in which case the upper and lower values of the
#' last observation are missing. This processing is optimized for results
#' from the survfit function.
#' @param mapping see source reference
#' @param data see source reference
#' @param stat see source reference
#' @param position see source reference
#' @param na.rm see source reference
#' @param show.legend see source reference
#' @param inherit.aes see source reference
#' @param ... see source reference
#' @rdname geom_stepribbon
#' @return geom_stepribbon is an analog to geom_ribbon using step function.
#' @importFrom ggplot2 layer GeomRibbon
#' @export
geom_stepribbon <- function(
  mapping = NULL, data = NULL, stat = "identity", position = "identity",
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE, kmplot = FALSE, ...) {

  GeomStepribbon <- ggplot2::ggproto("GeomStepribbon", GeomRibbon,

                                     extra_params = c("na.rm", "kmplot"),

                                     draw_group = function(data, panel_scales, coord, na.rm = FALSE) {
                                       if (na.rm) data <- data[complete.cases(data[c("x", "ymin", "ymax")]), ]
                                       data <- rbind(data, data)
                                       data <- data[order(data$x), ]
                                       data$x <- c(data$x[2:nrow(data)], NA)
                                       data <- data[complete.cases(data["x"]), ]
                                       GeomRibbon$draw_group(data, panel_scales, coord, na.rm = FALSE)
                                     },

                                     setup_data = function(data, params) {
                                       if (params$kmplot) {
                                         data <- data[order(data$PANEL, data$group, data$x), ]
                                         tmpmin <- tmpmax <- NA
                                         for (i in 1:nrow(data)) {
                                           if (is.na(data$ymin[i])) {
                                             data$ymin[i] <- tmpmin
                                           }
                                           if (is.na(data$ymax[i])) {
                                             data$ymax[i] <- tmpmax
                                           }
                                           tmpmin <- data$ymin[i]
                                           tmpmax <- data$ymax[i]
                                         }
                                       }
                                       data
                                     }
  )

  layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomStepribbon,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      na.rm = na.rm,
      kmplot = kmplot,
      ...
    )
  )
}


