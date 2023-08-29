#'Full Color List
#'
#'A full list of the individual colors used in this package, including name and
#'hex code
#'
#' @export
rpg_color_list <- c(
#Logo Colors
  `shale` = "#3e4d54",
    #shale ramp colors
    `shale_ramp1` = "#d6dde0",
    `shale_ramp5` = "#20272b",

  `green` = "#96a821",
    #green color ramp
    `green_ramp1` = "#f6f0d5",
    `green_ramp5` = "#4b541d",

  `teal` = "#3fbfba",
    #teal color ramp
    `teal_ramp1` = "#d7f2f1",
    `teal_ramp5` = "#1f5f5e",

  `orange` = "#F29C20",
    #orange ramp colors
    `orange_ramp1` = "#fcecd3",
    `orange_ramp5` = "#F29C20",

#additional brand colors
  `gray` = "#beb5af",
    #gray ramp colors
    `gray_ramp1` = "#f1f0ef",
    `gray_ramp5` = "#655852",

  `bright green` = "#CEDB00",

  `sea green` = "#218675",
    #sea green color ramp
    `sea_green_ramp1` = "#c6f2eb",
    `sea_green_ramp2` = "#10433a",

  `blue` = "#008ba6",
    #blue color ramp
    `blue_ramp1` = "#bff0fb",
    `blue_ramp5` = "#008ba6",

  `navy` = "#40516f",
    #navy color ramp
    `navy_ramp1` = "#d5dbe6",
    `navy_ramp5` = "#202837",

  `black` = "#58585B",
    #black color ramp
    `black_ramp1` = "#dcddde",
    `black_ramp5` = "#2c2d2e",

  #Chartreuse
  `chartreuse` = "#CDDC29",
  #Chartreuse color ramp
    `chartreuse_ramp1` = "#f4f8d3",
    `chartreuse_ramp5` = "#687012",

  #gold
  `gold` = "#ffee2a",
  #gold color ramp
  `gold_ramp1` = "#fffcd5",
  `gold_ramp5` = "#958a00",

  #burnt orange
  `burnt orange` = "#f19d23",
  #burnt orange ramp
  `burnt_orange_ramp1` = "#fcecd3",
  `burnt_orange_ramp5` = "#825109",

  #red
  `red` = "#ea425a",
  #red color ramp
  `red_ramp1` = "#fbd9de",
  `red_ramp5` = "#860f21",

  #purple
  `purple` = "#8400a8",
  #purple alternates
  `light purple` = "#c29ed7",
  `medium purple` = "#7030a0",
  `gray purple` = "#704489",
  `deep purple` = "#4c0073",

  #pink
  `pink` = "#e600a9",
  #pink alternates
  `hot pink` = "#ff00c5",
  `medium pink` = "#a80084",
  `maroon pink` = "#8400a8",
  `dark pink` = "#73004c",

  #earth
  `earth` = "#edece6",
  #earth ramp
  `earth_ramp1` = "#f0f2da",
  `earth_ramp2` = "#d9d6ce",

  #horizon
  `horizon1` = "#c9d1d4",
  `horizon2` = "#bcd2d4",

  #cold to warm colors
  `cw_1` = "#3D4E56",
  `cw_2` = "#3DBFBA",
  `cw_3` = "#FFFFD3",
  `cw_4` = "#FFE607",
  `cw_5` = "#FFAA00",

  #rpg colors
  `rpg_1` = "#3DBFBA",
  `rpg_2` = "#F9F963",
  `rpg_3` = "#F29F24",
  `white` = "#ffffff",

  #rpg rainbow
  `rainbow_1` = "#E0E0E0",
  `rainbow_2` = "#425270",
  `rainbow_3` = "#3DBFBA",
  `rainbow_4` = "#95A53A",
  `rainbow_5` = "#FFED28",
  `rainbow_6` = "#FFAA00",
  `rainbow_7` = "#ED2D46",
  `rainbow_8` = "#8C50AA"
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
  `logo` = rpg_cols("shale", "green", "teal", "orange"),

  `additional` = rpg_cols("gray", "bright green", "sea green",
                          "blue", "navy", "black"),

  `main and additional` = rpg_cols("shale", "green", "teal", "orange",
                                   "gray", "bright green", "sea green",
                                   "blue", "navy", "black"),

  `shale_ramp` = rpg_cols("Shale_ramp1", "shale_ramp5"),

  `green_ramp` = rpg_cols("green_ramp1", "green_ramp5"),

  `teal_ramp` = rpg_cols("teal_ramp1","teal_ramp5"),

  `rpg_orange_ramp` = rpg_cols("orange_ramp1","orange_ramp5"),

  `gray_ramp` = rpg_cols("gray_ramp1","gray_ramp5"),

  `sea_green_ramp` = rpg_cols("sea_green_ramp1","sea_green_ramp2"),

  `rpg_blue_ramp` = rpg_cols("blue_ramp1","blue_ramp5"),

  `navy_ramp` = rpg_cols("navy_ramp1","navy_ramp5"),

  `black_ramp` = rpg_cols("black_ramp1","black_ramp5"),

  `chartreuse_ramp` = rpg_cols("chartreuse_ramp1","chartreuse_ramp5"),

  `chartreuse_ramp_white` = rpg_cols("white",
                                     "chartreuse_ramp5"),

  `gold_ramp` = rpg_cols("gold_ramp1","gold_ramp5"),

  `burnt_orange_ramp` = rpg_cols("burnt_orange_ramp1","burnt_orange_ramp5"),

  `red_ramp` = rpg_cols("red_ramp1","red_ramp5"),

  `red_ramp_white` = rpg_cols("white","red_ramp5"),

  `earth_ramp` = rpg_cols("earth_ramp1","earth_ramp2"),

  `rpg_colors` = rpg_cols("rpg_1", "rpg_2", "rpg_3"),

  `rpg_colors_white` = rpg_cols("rpg_1", "white", "rpg_3"),

  `rpg_cold_warm` = rpg_cols("cw_1","cw_2","cw_3","cw_4","cw_5"),

  `rpg_rainbow` = rpg_cols("rainbow_1", "rainbow_2", "rainbow_3", "rainbow_4",
                           "rainbow_5", "rainbow_6", "rainbow_7", "rainbow_8"),

  `rpg_rainbow_no_grey` = rpg_cols("rainbow_2", "rainbow_3", "rainbow_4",
                                   "rainbow_5", "rainbow_6", "rainbow_7",
                                   "rainbow_8")
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
rpg_color_pal <- function(palette = "logo", reverse = FALSE, ...) {
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
scale_color_rpg <- function(palette = "logo", discrete = TRUE, reverse = FALSE, ...) {
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
scale_fill_rpg <- function(palette = "logo", discrete = TRUE, reverse = FALSE, ...) {
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
mapdeck_palette <- function(palette = "logo", reverse = FALSE, alpha = 256){
  steps <- length(rpg_color_palettes[[palette]])
  colors <- rpg_color_pal(palette = palette, reverse = reverse)(steps)
  matrix <- colorRamp(colors)( (1:256)/256 )
  matrix <- cbind(matrix, alpha)
  return(matrix)
}

#'RPG Mapbox Base Maps
#'
#'URLs to use Mapbox vector tile services as an interactive basemap
#'
#' @export
rpg_basemaps <- list(
  `atlas_tmap` = paste0(
    "https://api.mapbox.com/styles/v1/renplan/cl4olqb9v000514ldljtf1omt/",
    "tiles/256/{z}/{x}/{y}@2x?access_token=pk.",
    "eyJ1IjoicmVucGxhbiIsImEiOiJjaWgzcHdjOTIweTJvdzdtNWxlYnZ5MXZjIn0",
    ".zMsUwMAoEu6DZvd7IYVtjg"
  ),
  `atlas_style` = paste0(
    "mapbox://styles/renplan/cl4olqb9v000514ldljtf1omt"
  ),
  `rpg_access_token` = paste0(
    "pk.eyJ1IjoicmVucGxhbiIsImEiOiJjaWgzcHdjOTIweTJ",
    "vdzdtNWxlYnZ5MXZjIn0.zMsUwMAoEu6DZvd7IYVtjg"
  )
)









