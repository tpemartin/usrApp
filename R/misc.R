#' Scale poster image proportionally to width 360px
#'
#' @param filename
#'
#' @return
#' @export
#'
#' @examples none.
scale_poster <- function(filename) {
  folderpath =dirname(filename)
  basenamex=basename(filename)
  newbasenamex=stringr::str_replace(
    basenamex,
    "\\.(?=[^\\.]+$)","-small.")
  newbasenamex
  newfilename=file.path(folderpath, newbasenamex)
  magick::image_read(filename) |>
    magick::image_scale(geometry = magick::geometry_size_pixels(width=360)) |>
    magick::image_write(newfilename)
}
