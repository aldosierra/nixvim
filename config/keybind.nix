{
  # Set leader to space
  globals.mapleader = " ";

  keymaps = [
    # Clean hl search results
    { mode = "n"; key = "<Esc>"; action = "<cmd>nohlsearch<CR>"; options = { desc = "Clean search highlight"; }; }
    # Move between buffers
    { mode = "n"; key = "<leader><Tab>"; action = "<cmd>bn<CR>"; options = { desc = "Next buffer"; }; }
    { mode = "n"; key = "<leader><S-Tab>"; action = "<cmd>bp<CR>"; options = { desc = "Previous buffer"; }; }
    # File explerer
    # { mode = "n"; key = "<leader>fe"; action = "<cmd>Neotree filesystem toggle right<CR>"; options = { desc = "[F]ile [E]xplorer"; }; }
    # Move between clients
    { mode = "n"; key = "<leader>wv"; action = "<cmd>vs<CR>"; options = { desc = "[V]ertical [S]plit"; }; }
    { mode = "n"; key = "<leader>ws"; action = "<cmd>sp<CR>"; options = { desc = "[SP]lit"; }; }
    { mode = "n"; key = "<leader>wh"; action = "<C-w>h"; options = { desc = "Left panel"; }; }
    { mode = "n"; key = "<leader>wj"; action = "<C-w>j"; options = { desc = "Down panel"; }; }
    { mode = "n"; key = "<leader>wk"; action = "<C-w>k"; options = { desc = "Up panel"; }; }
    { mode = "n"; key = "<leader>wl"; action = "<C-w>l"; options = { desc = "Right panel"; }; }
    # Close and save
    { mode = "n"; key = "<leader>wq"; action = "<cmd>q<CR>"; options = { desc = "Close panel"; }; }
    { mode = "n"; key = "<leader>ww"; action = "<cmd>w<CR>"; options = { desc = "[W]rite buffer"; }; }
    { mode = "n"; key = "<leader>wb"; action = "<cmd>bd<CR>"; options = { desc = "Close buffer"; }; }
    # Move lines up and down
    { mode = "v"; key = "J"; action = ":m '>+1<CR>gv=gv"; options = { desc = "Move line down"; }; }
    { mode = "v"; key = "K"; action = ":m '<-2<CR>gv=gv"; options = { desc = "Mode line up"; }; }
    # Indent and keep the selection
    { mode = "v"; key = ">"; action = ">gv"; options = { desc = "Increase ident"; }; }
    { mode = "v"; key = "<"; action = "<gv"; options = { desc = "Decrease ident"; }; }
    # Move up and down keeping the cursor in the middle
    { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; options = { desc = "Scroll down and re-center"; }; }
    { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; options = { desc = "Scroll up and re-center"; }; }
    # Yank to computer clipboard
    { mode = "n"; key = "<leader>y"; action = "\"+y"; options = { desc = "Yank to clipboard"; }; }
    { mode = "v"; key = "<leader>y"; action = "\"+y"; options = { desc = "Yank to clipboard"; }; }
    { mode = "n"; key = "<leader>Y"; action = "\"+Y"; options = { desc = "Yank line to clipboard"; }; }
    # Make file executable
    { mode = "n"; key = "<leader>x"; action = "<cmd>!chmod +x %<CR>"; options.silent = true; options = { desc = "Make curr file executable"; }; }
  ];
}
