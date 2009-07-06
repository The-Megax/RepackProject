--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Occulus_OnCombat(Unit, Event)
Unit:RegisterEvent("Occulus_ArcaneBlast", 6000, 0)
Unit:RegisterEvent("Occulus_SandBreath", 8000, 0)
Unit:RegisterEvent("Occulus_Swoop", 7000, 0)
end

function Occulus_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10833, pUnit:GetMainTank()) 
end

function Occulus_SandBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20717, pUnit:GetMainTank()) 
end

function Occulus_Swoop(pUnit, Event) 
pUnit:CastSpell(18144) 
end

function Occulus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Occulus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Occulus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8196, 1, "Occulus_OnCombat")
RegisterUnitEvent(8196, 2, "Occulus_OnLeaveCombat")
RegisterUnitEvent(8196, 3, "Occulus_OnKilledTarget")
RegisterUnitEvent(8196, 4, "Occulus_OnDied")