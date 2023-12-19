data |>
  gt::gt(
    rowname_col = "heading",
    groupname_col = "sub_group"
  ) |>
  gt::cols_align(
    align = "right",
    columns = "Score"
  ) |>
  gt::tab_style(
    locations = gt::cells_column_labels(columns = tidyselect::everything()),
    style = list(
      gt::cell_text(weight = "bold"),
      gt::cell_borders(
        sides = c("bottom"),
        # color = params$background_green,
        weight = gt::px(2)
      )
    )
  ) |>
  gt::tab_style(
    locations = list(
      gt::cells_body(),
      gt::cells_stub(),
      gt::cells_row_groups()
    ),
    style = gt::cell_borders(
      sides = c("top", "bottom"),
      # color = params$background_green,
      weight = gt::px(2)
    )
  ) |>
  gt::tab_style(
    locations = gt::cells_stub(),
    style = gt::cell_borders(
      sides = "right",
      # color = params$background_green,
      weight = gt::px(2)
    )
  ) |>
  gt::tab_style(
    locations = gt::cells_row_groups(),
    style = gt::cell_text(weight = "bold")
  ) |>
  gt::tab_options(
    table.border.top.style = "hidden",
    table.border.bottom.style = "hidden"
  )
