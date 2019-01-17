dofiles('classes/infrastructure/game')
dofiles('classes/infrastructure/utils')
dofiles('classes/infrastructure/repository')
dofiles('classes/model')
dofiles('classes/usecases')
-- Heurics -> Should load after use cases
dofiles('classes/model/heuristics')

DogBot = {}
BotConfig = {}

BotConfig.writeDir = "/dogbot"

function init()
  connect(g_game, { onGameEnd = DogBot.destroy })

  UCPosition.init()
  RuleEngine.init()

  InnerCycle.loopForever(DogBot.update)
end

function terminate()
	disconnect(g_game, { onGameEnd = DogBot.destroy })
  InnerCycle.disable()
  UCPosition.save()
end

function DogBot.destroy() end

function DogBot.update()
  UCPosition.create()
end
