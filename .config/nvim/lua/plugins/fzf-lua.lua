return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096",
      },
    },
    keys = {
      { "<leader>f", function() require("fzf-lua").files() end, desc = "fzf files" },
      { "<leader>b", function() require("fzf-lua").buffers() end, desc = "fzf buffers" },
      { "<leader>a", function() require("fzf-lua").grep() end, desc = "fzf grep" },
      { "<leader>g", function() require("fzf-lua").global() end, desc = "fzf global" },
      { "<leader>ll", function() require("fzf-lua").lines() end, desc = "fzf lines" },
      { "<leader>lb", function() require("fzf-lua").blines() end, desc = "fzf blines" },
      { "<leader>lg", function() require("fzf-lua").grep_cword() end, desc = "fzf grep_cword" },
      { "<leader>lv", function() require("fzf-lua").grep_visual() end, desc = "fzf grep_visual" },
    },
  },
}
