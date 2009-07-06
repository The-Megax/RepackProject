--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AlystrostheVerdantKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("AlystrostheVerdantKeeper_LapsingDream", 1000, 1)
Unit:RegisterEvent("AlystrostheVerdantKeeper_TalonStrike", 5000, 0)
Unit:RegisterEvent("AlystrostheVerdantKeeper_WingBeat", 8000, 0)
end

function AlystrostheVerdantKeeper_LapsingDream(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51922, pUnit:GetMainTank()) 
end

function AlystrostheVerdantKeeper_TalonStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51937, pUnit:GetMainTank()) 
end

function AlystrostheVerdantKeeper_WingBeat(pUnit, Event) 
pUnit:CastSpell(51938) 
end

function AlystrostheVerdantKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AlystrostheVerdantKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AlystrostheVerdantKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27249, 1, "AlystrostheVerdantKeeper_OnCombat")
RegisterUnitEvent(27249, 2, "AlystrostheVerdantKeeper_OnLeaveCombat")
RegisterUnitEvent(27249, 3, "AlystrostheVerdantKeeper_OnKilledTarget")
RegisterUnitEvent(27249, 4, "AlystrostheVerdantKeeper_OnDied")