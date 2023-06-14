return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
	dependencies = {
		...,
		'haydenmeade/neotest-jest'
	},
    opts = { adapters = { "neotest-jest" } },
  },
}
