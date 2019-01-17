-- Stores and retrieves location

UCPosition = {}

function UCPosition.init()
  PositionRepository.init()
end

function UCPosition.save()
  PositionRepository.save()
end

function UCPosition.reload()
  PositionRepository.reload()
end

function UCPosition.create()
  GameData.decode()
  local pos = GameData.position
  local key = string.format("%x%x%x",pos.x,pos.y,pos.z)
  if Stored[key] == nil then
    Stored[key] = true
    Position[key] = { x = pos.x, y = pos.y, z = pos.z}
  end
end
