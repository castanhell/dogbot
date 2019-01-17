InnerCycle = {}
InnerCycle.on = true

function InnerCycle.loopForever(callback)
  if InnerCycle.on then
    callback()
    scheduleEvent(function() InnerCycle.loopForever(callback) end, 500)
  end
end

function InnerCycle.disable()
  InnerCycle.on = false
end
