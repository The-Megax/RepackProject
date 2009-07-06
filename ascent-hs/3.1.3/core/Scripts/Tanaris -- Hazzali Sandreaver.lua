--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HazzaliSandreaver_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliSandreaver_ArcingSmash", 4000, 0)
end

function HazzaliSandreaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function HazzaliSandreaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliSandreaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliSandreaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5454, 1, "HazzaliSandreaver_OnCombat")
RegisterUnitEvent(5454, 2, "HazzaliSandreaver_OnLeaveCombat")
RegisterUnitEvent(5454, 3, "HazzaliSandreaver_OnKilledTarget")
RegisterUnitEvent(5454, 4, "HazzaliSandreaver_OnDied")