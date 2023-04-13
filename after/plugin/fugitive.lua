vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.g["fugitive_gitlab_domains"] = 'https://my.gitlab.com'

--- During a conflict
--  https://youtu.be/FrMRyXtiJkc?t=771
--
--  dv, then:
vim.keymap.set("n", "<leader>gf", "<cmd>diffget //2");
vim.keymap.set("n", "<leader>gh", "<cmd>diffget //3");
