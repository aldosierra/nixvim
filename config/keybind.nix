{
  # Set leader to space
  globals.mapleader = " ";

  keymaps = [
    # Move between buffers
    { mode = "n"; key = "<leader><Tab>"; action = "<cmd>bn<CR>"; }
    { mode = "n"; key = "<leader><S-Tab>"; action = "<cmd>bp<CR>"; }
    # File explerer
    { mode = "n"; key = "<leader>fe"; action = "<cmd>NvimTreeToggle<CR>"; }
    # Move between clients
    { mode = "n"; key = "<leader>wv"; action = "<cmd>vs<CR>"; }
    { mode = "n"; key = "<leader>ws"; action = "<cmd>sp<CR>"; }
    { mode = "n"; key = "<leader>wh"; action = "<C-w>h"; }
    { mode = "n"; key = "<leader>wj"; action = "<C-w>j"; }
    { mode = "n"; key = "<leader>wk"; action = "<C-w>k"; }
    { mode = "n"; key = "<leader>wl"; action = "<C-w>l"; }
    # Close and save
    { mode = "n"; key = "<leader>wq"; action = "<cmd>q<CR>"; }
    { mode = "n"; key = "<leader>ww"; action = "<cmd>w<CR>"; }
    { mode = "n"; key = "<leader>wb"; action = "<cmd>bd<CR>"; }
    # Move lines up and down
    { mode = "v"; key = "J"; action = "<cmd>m '>+1<CR>gv=gv"; }
    { mode = "v"; key = "K"; action = "<cmd>m '>-2<CR>gv=gv"; }
    # Indent and keep the selection
    { mode = "v"; key = ">"; action = ">gv"; }
    { mode = "v"; key = "<"; action = "<gv"; }
    # Move up and down keeping the cursor in the middle
    { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; }
    { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; }
    # Yank to computer clipboard
    { mode = "n"; key = "<leader>y"; action = "\"+y"; }
    { mode = "v"; key = "<leader>y"; action = "\"+y"; }
    { mode = "n"; key = "<leader>Y"; action = "\"+Y"; }
    # Make file executable
    { mode = "n"; key = "<leader>x"; action = "<cmd>!chmod +x %<CR>"; options.silent = true; }
    # Toggle scope indent
    { mode = "n"; key = "<leader>wq"; action = "<cmd>IBLToggleScope<CR>"; }
  ];
}
