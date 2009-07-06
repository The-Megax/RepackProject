--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CrazedInduleSurvivor_OnCombat(Unit, Event)
Unit:RegisterEvent("CrazedInduleSurvivor_Crazed", 4000, 1)
Unit:RegisterEvent("CrazedInduleSurvivor_MortalStrike", 7000, 0)
end

function CrazedInduleSurvivor_Crazed(pUnit, Event) 
pUnit:CastSpell(48139) 
end

function CrazedInduleSurvivor_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function CrazedInduleSurvivor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrazedInduleSurvivor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrazedInduleSurvivor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32409, 1, "CrazedInduleSurvivor_OnCombat")
RegisterUnitEvent(32409, 2, "CrazedInduleSurvivor_OnLeaveCombat")
RegisterUnitEvent(32409, 3, "CrazedInduleSurvivor_OnKilledTarget")
RegisterUnitEvent(32409, 4, "CrazedInduleSurvivor_OnDied")