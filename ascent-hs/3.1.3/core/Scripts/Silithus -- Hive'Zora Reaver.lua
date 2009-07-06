--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveZoraReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraReaver_Cleave", 8000, 0)
Unit:RegisterEvent("HiveZoraReaver_Knockdown", 10000, 0)
end

function HiveZoraReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function HiveZoraReaver_Knockdown(pUnit, Event) 
pUnit:CastSpell(16790) 
end

function HiveZoraReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11728, 1, "HiveZoraReaver_OnCombat")
RegisterUnitEvent(11728, 2, "HiveZoraReaver_OnLeaveCombat")
RegisterUnitEvent(11728, 3, "HiveZoraReaver_OnKilledTarget")
RegisterUnitEvent(11728, 4, "HiveZoraReaver_OnDied")