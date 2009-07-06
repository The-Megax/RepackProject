--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Exarch_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Exarch_Fortitude",2000,0)
    pUnit:RegisterEvent("Exarch_Devotion",1000,0)
end

function Exarch_Fortitude(pUnit,Event)
    pUnit:CastSpellOnTarget(36004,pUnit:GetRandomFriend())
end

function Exarch_Devotion(pUnit,Event)
    pUnit:CastSpell(8258)
end

function Exarch_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Exarch_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21058, 1, "Exarch_OnEnterCombat")
RegisterUnitEvent (21058, 2, "Exarch_OnLeaveCombat")
RegisterUnitEvent (21058, 4, "Exarch_OnDied")