--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WilyFeyDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("WilyFeyDragon_ManaBurn", 6000, 0)
end

function WilyFeyDragon_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17630, pUnit:GetRandomPlayer(4)) 
end

function WilyFeyDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WilyFeyDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WilyFeyDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4017, 1, "WilyFeyDragon_OnCombat")
RegisterUnitEvent(4017, 2, "WilyFeyDragon_OnLeaveCombat")
RegisterUnitEvent(4017, 3, "WilyFeyDragon_OnKilledTarget")
RegisterUnitEvent(4017, 4, "WilyFeyDragon_OnDied")