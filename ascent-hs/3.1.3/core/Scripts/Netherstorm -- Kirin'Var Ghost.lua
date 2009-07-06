--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Ghost_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ghost_Soulbind",2000,0)
end

function Ghost_Soulbind(pUnit,Event)
    pUnit:CastSpell(36153)
end

function Ghost_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ghost_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20409, 1, "Ghost_OnEnterCombat")
RegisterUnitEvent (20409, 2, "Ghost_OnLeaveCombat")
RegisterUnitEvent (20409, 4, "Ghost_OnDied")