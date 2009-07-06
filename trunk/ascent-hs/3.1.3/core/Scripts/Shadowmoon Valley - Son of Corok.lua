--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SonOfCorok_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12612,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("SonOfCorok_Stomp", 15000, 0)
end

function SonOfCorok_Stomp(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12612,pUnit:GetClosestPlayer())
end

function SonOfCorok_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SonOfCorok_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19824, 1, "SonOfCorok_OnEnterCombat")
RegisterUnitEvent(19824, 2, "SonOfCorok_OnLeaveCombat")
RegisterUnitEvent(19824, 4, "SonOfCorok_OnDied")