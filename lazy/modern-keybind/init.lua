local M = {}

function M.setup()
  -- 挿入モードでのキーマッピングを設定
  vim.api.nvim_set_keymap('i', '<S-Left>', [[<C-o>v<Left>]], { noremap = true, silent = true, desc = 'Shift + Left: Select left' })
  vim.api.nvim_set_keymap('i', '<S-Right>', [[<C-o>v<Right>]], { noremap = true, silent = true, desc = 'Shift + Right: Select right' })
  vim.api.nvim_set_keymap('i', '<S-Up>', [[<C-o>v<Up>]], { noremap = true, silent = true, desc = 'Shift + Up: Select up' })
  vim.api.nvim_set_keymap('i', '<S-Down>', [[<C-o>v<Down>]], { noremap = true, silent = true, desc = 'Shift + Down: Select down' })

  -- Ctrl+C: 選択した文字列をコピー (クリップボードへ)
  -- 挿入モードでは選択状態に入れないため、ノーマルモードに一時的に切り替えてから選択・コピーします
  vim.api.nvim_set_keymap('i', '<C-c>', [[<Esc>"+y]], { noremap = true, silent = true, desc = 'Ctrl+C: Copy selected' })

  -- Ctrl+V: ペースト (クリップボードから)
  vim.api.nvim_set_keymap('i', '<C-v>', [[<C-r>+]], { noremap = true, silent = true, desc = 'Ctrl+V: Paste from clipboard' })

  -- Ctrl+F: 選択した文字列の検索
  -- 選択後、検索プロンプトを表示
  vim.api.nvim_set_keymap('i', '<C-f>', [[<Esc>gv"zy/<C-r>z<CR>]], { noremap = true, silent = true, desc = 'Ctrl+F: Search selected' })

  -- Ctrl+S: ファイルの保存
  vim.api.nvim_set_keymap('i', '<C-s>', [[<Esc>:w<CR>a]], { noremap = true, silent = true, desc = 'Ctrl+S: Save file' })

  -- Ctrl+Q: NeoVimの終了
  vim.api.nvim_set_keymap('i', '<C-q>', [[<Esc>:qa!<CR>]], { noremap = true, silent = true, desc = 'Ctrl+Q: Quit NeoVim' })
end

return M
