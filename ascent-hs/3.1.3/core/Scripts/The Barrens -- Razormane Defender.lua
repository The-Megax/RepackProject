--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneDefender_BattleStance", 1000, 1)
Unit:RegisterEvent("RazormaneDefender_DemoralizingShout", 4000, 1)
Unit:RegisterEvent("RazormaneDefender_HeroicStrike", 6000, 0)
end

function RazormaneDefender_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function RazormaneDefender_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function RazormaneDefender_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function RazormaneDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3266, 1, "RazormaneDefender_OnCombat")
RegisterUnitEvent(3266, 2, "RazormaneDefender_OnLeaveCombat")
RegisterUnitEvent(3266, 3, "RazormaneDefender_OnKilledTarget")
RegisterUnitEvent(3266, 4, "RazormaneDefender_OnDied")