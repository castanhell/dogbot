-- a use case for updating the beliefs
GameData = {}

GameData.position = {}
GameData.position.x = -1
GameData.position.y = -1
GameData.position.z = -1

GameData.size = 1

function GameData.decode()
  local player = g_game.getLocalPlayer()
  local pos = player:getPosition()
  GameData.position.x = pos.x
  GameData.position.y = pos.y
  GameData.position.z = pos.z 
end
