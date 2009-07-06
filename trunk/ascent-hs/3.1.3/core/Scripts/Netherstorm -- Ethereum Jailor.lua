--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Jailor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Jailor_Presence",1000,0)
end

function Jailor_Presence(pUnit,Event)
    pUnit:CastSpell(36513)
end

function Jailor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Jailor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23008, 1, "Jailor_OnEnterCombat")
RegisterUnitEvent (23008, 2, "Jailor_OnEnterCombat")
RegisterUnitEvent (23008, 4, "Jailor_OnEnterCombat")