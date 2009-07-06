--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bot_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Bot_Suicide",4000,1)
end

function Bot_Suicide(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7,pUnit:GetClosestPlayer())
	pUnit:CastSpell(7)
end

function Bot_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bot_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19692, 1, "Bot_OnEnterCombat")
RegisterUnitEvent (19692, 2, "Bot_OnLeaveCombat")
RegisterUnitEvent (19692, 4, "Bot_OnDied")