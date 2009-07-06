--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Relay_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Relay_Shadowform",1000,0)
end

function Relay_Shadowform(pUnit,Event)
    pUnit:CastSpell(16592)
end

function Relay_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Relay_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20619, 1, "Relay_OnEnterCombat")
RegisterUnitEvent (20619, 2, "Relay_OnLeaveCombat")
RegisterUnitEvent (20619, 4, "Relay_OnDied")