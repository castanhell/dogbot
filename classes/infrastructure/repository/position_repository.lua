PositionRepository = {}

function PositionRepository.init()
  if not g_resources.directoryExists(BotConfig.writeDir) then
    g_resources.makeDir(BotConfig.writeDir)
  end

  if g_resources.fileExists(BotConfig.writeDir .. "/positions.lua") then
    -- loads positions
    UCPosition.reload()
  end
end

function PositionRepository.save()
  print(g_resources.getWriteDir() .. BotConfig.writeDir .. "/positions.lua")
  print(table.save(Position,g_resources.getWriteDir() .. BotConfig.writeDir .. "/positions.lua"))
end

function PositionRepository.reload()
  Position = table.load(g_resources.getWriteDir() .. BotConfig.writeDir .. "/positions.lua")
  for k,v in pairs(Position) do
    Stored[k] = true
  end
end
