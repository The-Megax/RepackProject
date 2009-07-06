--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Punisher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Punisher_Explosion",1500,0)
    pUnit:RegisterEvent("Punisher_Suppression",3000,0)
end

function Punisher_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(33860,pUnit:GetClosestPlayer())
end

function Punisher_Suppression(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35892,pUnit:GetClosestPlayer())
end

function Punisher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Punisher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18698, 1, "Punisher_OnEnterCombat")
RegisterUnitEvent (18698, 2, "Punisher_OnLeaveCombat")
RegisterUnitEvent (18698, 4, "Punisher_OnDied")