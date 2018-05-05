add_llvm_loadable_module( CSE231
  ReachingDefinitionAnalysis.cpp
  LivenessAnalysis.cpp
  MayPointToAnalysis.cpp

  PLUGIN_TOOL
  opt
  )
