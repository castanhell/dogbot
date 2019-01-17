--
RuleEngine.parseRule(
function()
  return r {
     name = "ExploreMoveX",
     isA = "Heuristic",
     ifClause  = { "NOT Attacking", "3 StoppedSinceSecs", "AND", "1 0 0 SlotExists", "AND" },
     thenClause = "1 0 0 MoveToAdjacentSlot",
     weight = 10000
     -- some fields will checked further on
     -- validSintatically = true
  }
end
)
