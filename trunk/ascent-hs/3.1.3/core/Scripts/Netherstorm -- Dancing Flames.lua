--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Flames_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Flames_Dance",1000,0)
    pUnit:RegisterEvent("Flames_Seduction",180000,0)
    pUnit:RegisterEvent("Flames_Summon",1000,(1))
end

function Flames_Dance(pUnit,Event)
    pUnit:CastSpell(45427)
end

function Flames_Seduction(pUnit,Event)
    pUnit:FullCastSpellOnTarget(47057, pUnit:GetClosestPlayer())
end

function Flames_Summon(pUnit,Event)
    pUnit:CastSpell(45423)
end

function Flames_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Flames_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (25305, 1, "Flames_OnEnterCombat")
RegisterUnitEvent (25305, 2, "Flames_OnLeaveCombat")
RegisterUnitEvent (25305, 4, "Flames_OnDied")
