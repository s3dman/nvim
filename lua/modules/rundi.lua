local rundi = require('rundi')

rundi.setup({
  autocompile = {
    python = {
      compiler = "python3",
	  compiler_args = "-i"
    },
    cpp = {
      compiler = "g++",
      compiler_args = "-std=c++14 -Wshadow -Wall -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG",
      output_format = "%:t:r",
    },
    c = {
      compiler = "gcc",
      compiler_args = "-Wshadow -Wall -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG",
      output_format = "%:t:r",
    },
  },
  silent = true,
  keymap = "<C-c>",
})