--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ThistleshrubRootshaper_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleshrubRootshaper_EarthgrabTotem", 10000, 1)
end

function ThistleshrubRootshaper_EarthgrabTotem(pUnit, Event) 
pUnit:CastSpell(8376) 
end

function ThistleshrubRootshaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleshrubRootshaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleshrubRootshaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5485, 1, "ThistleshrubRootshaper_OnCombat")
RegisterUnitEvent(5485, 2, "ThistleshrubRootshaper_OnLeaveCombat")
RegisterUnitEvent(5485, 3, "ThistleshrubRootshaper_OnKilledTarget")
RegisterUnitEvent(5485, 4, "ThistleshrubRootshaper_OnDied")