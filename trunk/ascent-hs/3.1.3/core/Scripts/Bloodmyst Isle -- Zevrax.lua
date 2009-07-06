--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Zevrax_OnCombat(Unit, Event)
Unit:RegisterEvent("Zevrax_Corruption", 2000, 1)
Unit:RegisterEvent("Zevrax_CurseofWeakness", 3000, 1)
Unit:RegisterEvent("Zevrax_ShadowBolt", 8000, 0)
Unit:RegisterEvent("Zevrax_Immolate", 6000, 1)
end

function Zevrax_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21068, pUnit:GetMainTank()) 
end

function Zevrax_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17227, pUnit:GetMainTank()) 
end

function Zevrax_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function Zevrax_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function Zevrax_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zevrax_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zevrax_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17494, 1, "Zevrax_OnCombat")
RegisterUnitEvent(17494, 2, "Zevrax_OnLeaveCombat")
RegisterUnitEvent(17494, 3, "Zevrax_OnKilledTarget")
RegisterUnitEvent(17494, 4, "Zevrax_OnDied")