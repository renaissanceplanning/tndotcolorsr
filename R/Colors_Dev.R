#'Full Color List
#'
#'A full list of the individual colors used in this package, including name and
#'hex code
#'
#' @export
rpg_color_list <- c(
  `purple` = "#552973",
  `blue` = "#203C73",
  `red` = "#F22727",
  `salmon` = "#F27777",
  `white` = "#F2F2F2"
)

### function takes a group of strings and returns the string and hex code
### can be used to call one of the 97 colors contained in the full color list
### within a plotting function

#'Retrieve a Color
#'
#'This function takes a string or group of strings and returns hex codes
#'for the corresponding colors
#'
#'A full list of the colors in this package can be returned by running the
#'function with no input
#'
#' @export
rpg_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (rpg_color_list)

  rpg_color_list[cols]
}

#'Full Palette List
#'
#'A full list of the color palettes used in this package
#'
#' @export
rpg_color_palettes <- list(
  `cool_to_warm` = rpg_cols("blue", "purple",  "white", "salmon", "red"),

  `reds` = rpg_cols("white", "salmon", "red"),

  `blue_purple` = rpg_cols("white", "purple", "blue"),

  `blue` = rpg_cols("white",  "blue"),

)

#'Retrieve a Palette
#'
#'This function excepts a character string for a palette and returns a function
#'that can be turned into a palette
#'
#'adding a number after the function call will create a palette with that number
#'of steps
#'
#'@param palette A string representing a color palette, see https://bfroebrpg.github.io/rpgcolorsr_pages/
#'for a full list of palettes
#'
#'@param reverse When true the default order of the color palette is reversed
#'
#'@return a function to create a color palette
#'
#' @export
rpg_color_pal <- function(palette = "cool_to_warm", reverse = FALSE, ...) {
  pal <- rpg_color_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

#'Create a Color Scale for ggplot
#'
#'This function is inserted into a ggplot call to replace a scale_color
#'command.
#'
#'By default the palette will be discrete.
#'
#'@param palette A string representing a color palette, see https://bfroebrpg.github.io/rpgcolorsr_pages/
#'for a full list of palettes
#'
#'@param discrete Changes between discrete or continuous scales
#'
#'@param reverse When true the default order of the color palette is reversed
#'
#'@return a function to create a color palette
#' @export
scale_color_rpg <- function(palette = "cool_to_warm", discrete = TRUE, reverse = FALSE, ...) {
  pal <- rpg_color_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("rpg_color_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#'Create a Fill Scale for ggplot
#'
#'This function is inserted into a ggplot call to replace a scale_fill
#'command.
#'
#'By default the palette will be discrete.
#'
#'@param palette A string representing a color palette, see https://bfroebrpg.github.io/rpgcolorsr_pages/
#'for a full list of palettes
#'
#'@param discrete Changes between discrete or continuous scales
#'
#'@param reverse When true the default order of the color palette is reversed
#'
#'@return a function to create a color palette
#' @export
scale_fill_rpg <- function(palette = "cool_to_warm", discrete = TRUE, reverse = FALSE, ...) {
  pal <- rpg_color_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("rpg_color_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}


#' Create a Color Matrix for Mapdeck
#'
#' This funciton will create the color matrix required to a use a custom
#' palette while using mapdeck.
#'
#'@param palette A string representing a color palette, see https://bfroebrpg.github.io/rpgcolorsr_pages/
#'for a full list of palettes
#'
#'@param reverse When true the default order of the color palette is reversed
#'
#'@param alpha sets the alpha for the colors, must be int between 1 and 256.
#'1 is transparent and 256 is solid.
#'
#'
#'@return a color matrix
#' @export
mapdeck_palette <- function(palette = "cool_to_warm", reverse = FALSE, alpha = 256){
  steps <- length(rpg_color_palettes[[palette]])
  colors <- rpg_color_pal(palette = palette, reverse = reverse)(steps)
  matrix <- colorRamp(colors)( (1:256)/256 )
  matrix <- cbind(matrix, alpha)
  return(matrix)
}

#' #'RPG Mapbox Base Maps
#' #'
#' #'URLs to use Mapbox vector tile services as an interactive basemap
#' #'
#' #' @export
#' rpg_basemaps <- list(
#'   `atlas_tmap` = paste0(
#'     "https://api.mapbox.com/styles/v1/renplan/cl4olqb9v000514ldljtf1omt/",
#'     "tiles/256/{z}/{x}/{y}@2x?access_token=pk.",
#'     "eyJ1IjoicmVucGxhbiIsImEiOiJjaWgzcHdjOTIweTJvdzdtNWxlYnZ5MXZjIn0",
#'     ".zMsUwMAoEu6DZvd7IYVtjg"
#'   ),
#'   `atlas_style` = paste0(
#'     "mapbox://styles/renplan/cl4olqb9v000514ldljtf1omt"
#'   ),
#'   `rpg_access_token` = paste0(
#'     "pk.eyJ1IjoicmVucGxhbiIsImEiOiJjaWgzcHdjOTIweTJ",
#'     "vdzdtNWxlYnZ5MXZjIn0.zMsUwMAoEu6DZvd7IYVtjg"
#'   )
#' )









