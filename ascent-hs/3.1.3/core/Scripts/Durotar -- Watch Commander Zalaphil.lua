--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WatchCommanderZalaphil_OnCombat(Unit, Event)
Unit:RegisterEvent("WatchCommanderZalaphil_DefensiveStance", 1000, 1)
Unit:RegisterEvent("WatchCommanderZalaphil_ShieldBash", 8000, 0)
end

function WatchCommanderZalaphil_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function WatchCommanderZalaphil_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function WatchCommanderZalaphil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WatchCommanderZalaphil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WatchCommanderZalaphil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3192, 1, "WatchCommanderZalaphil_OnCombat")
RegisterUnitEvent(3192, 2, "WatchCommanderZalaphil_OnLeaveCombat")
RegisterUnitEvent(3192, 3, "WatchCommanderZalaphil_OnKilledTarget")
RegisterUnitEvent(3192, 4, "WatchCommanderZalaphil_OnDied")