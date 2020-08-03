#' Saving to and loading from the file system
#' 
#' @param file_name A character string file name.
#' @param obj_name A character string referring to an object.
#' @param data_dir A path to a system folder.
#' @name file_management
#' @examples
#' \dontrun{
#' # Write object to file system
#' samples_frm <- data.table::fread("path_to_raw_data_file")
#' obj_save('thisProject_samples_frm', 'samples_frm', data_dir='data')
#' 
#' # load object from file system
#' obj_load('thisProject_samples_frm', 'samples_frm', data_dir='data')
#' head(samples_frm)
#' ...
#' }
NULL
#' @rdname file_management
#' @export
obj_save <- function(file_name = "", obj_name = "", data_dir = file.path("data")) {
    assign(file_name, get(obj_name))
    save(list = file_name, file = file.path(data_dir, file_name))
    rm(list = file_name)
}
#' @rdname file_management
#' @export
obj_load <- function(file_name = "", obj_name = "", data_dir = file.path("data")) {
    load(file.path(data_dir, file_name))
    assign(obj_name, get(file_name), pos = 1)
    rm(list = file_name)
}


# timing
start_timed_message <- function(...) {
    x <- paste0(..., collapse = "")
    message(x, appendLF = FALSE)
    ptm <- proc.time()
    return(ptm)
}
stop_timed_message <- function(ptm) {
    time <- proc.time() - ptm
    message(" ", round(time[3], 2), "s")
}

