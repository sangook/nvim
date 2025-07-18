return {
  "nvim-orgmode/orgmode",
  enabled = false,
  event = "VeryLazy",
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/GDRIVE/orgfiles/**/*",
      org_default_notes_file = "~/GDRIVE/orgfiles/refile.org",
    })
  end,
}
