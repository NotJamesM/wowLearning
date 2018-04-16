function Foo_OnLoad()
  this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
end

function Foo_OnEvent(self, event, ...)

  local timestamp, type, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2 = select(1, ...)
  -- Note, for this example, you could just use 'local type = select(2, ...)'.  The others are included so that it's clear what's available.

  if (event=="COMBAT_LOG_EVENT_UNFILTERED") then
    print("type: ",  type)
    print("hideCaster: ",  hideCaster)
    print("sourceGUID: ",  sourceGUID)
    print("sourceName: ",  sourceName)
    print("sourceFlags: ",  sourceFlags)
    print("sourceFlags2: ",  sourceFlags2)
    print("destGUID: ",  destGUID)
    print("destName: ",  destName)
    print("destFlags: ",  destFlags)
    print("destFlags2: ",  destFlags2)
  end
end