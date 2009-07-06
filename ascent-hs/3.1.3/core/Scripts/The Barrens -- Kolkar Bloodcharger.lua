--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KolkarBloodcharger_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarBloodcharger_Bloodlust", 4000, 1)
Unit:RegisterEvent("KolkarBloodcharger_Corruption", 10000, 0)
end

function KolkarBloodcharger_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function KolkarBloodcharger_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function KolkarBloodcharger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarBloodcharger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarBloodcharger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3397, 1, "KolkarBloodcharger_OnCombat")
RegisterUnitEvent(3397, 2, "KolkarBloodcharger_OnLeaveCombat")
RegisterUnitEvent(3397, 3, "KolkarBloodcharger_OnKilledTarget")
RegisterUnitEvent(3397, 4, "KolkarBloodcharger_OnDied")