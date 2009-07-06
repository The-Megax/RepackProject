--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DeathsHeadCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathsHeadCultist_DeathDecay", 15000, 0)
Unit:RegisterEvent("DeathsHeadCultist_ShadowBolt", 8000, 0)
end

function DeathsHeadCultist_DeathDecay(pUnit, Event) 
pUnit:CastSpell(11433) 
end

function DeathsHeadCultist_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DeathsHeadCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathsHeadCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathsHeadCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7872, 1, "DeathsHeadCultist_OnCombat")
RegisterUnitEvent(7872, 2, "DeathsHeadCultist_OnLeaveCombat")
RegisterUnitEvent(7872, 3, "DeathsHeadCultist_OnKilledTarget")
RegisterUnitEvent(7872, 4, "DeathsHeadCultist_OnDied")