return {
  "seblj/roslyn.nvim",
  ft = "cs",
  opts = {
    config = {
      settings = {
        ["csharp|inlay_hints"] = {
          csharp_enable_inlay_hints_for_implicit_object_creation = false,
          csharp_enable_inlay_hints_for_implicit_variable_types = false,
          csharp_enable_inlay_hints_for_lambda_parameter_types = false,
          csharp_enable_inlay_hints_for_types = false,
          dotnet_enable_inlay_hints_for_indexer_parameters = false,
          dotnet_enable_inlay_hints_for_literal_parameters = false,
          dotnet_enable_inlay_hints_for_object_creation_parameters = false,
          dotnet_enable_inlay_hints_for_other_parameters = false,
          dotnet_enable_inlay_hints_for_parameters = false,
          dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = false,
          dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = false,
          dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = false,
        },
        ["csharp|code_lens"] = {
          dotnet_enable_references_code_lens = false,
        },
      },
    },
  },
}
