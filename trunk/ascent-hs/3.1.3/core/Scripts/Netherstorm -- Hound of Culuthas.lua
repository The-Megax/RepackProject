--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Hound_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hound_Breath",2500,0)
    pUnit:RegisterEvent("Hound_Stomp",1000,0)
end

function Hound_Breath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36406,pUnit:GetClosestPlayer())
end

function Hound_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36405,pUnit:GetClosestPlayer())
end

function Hound_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hound_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20141, 1, "Hound_OnEnterCombat")
RegisterUnitEvent (20141, 2, "Hound_OnLeaveCombat")
RegisterUnitEvent (20141, 4, "Hound_OnDied")