--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AgedClefthoof_Charge(Unit, event, miscunit, misc)
    print "AgedClefthoof Charge"
	Unit:FullCastSpellOnTarget(32021,Unit:GetMainTank())
end

function AgedClefthoof(Unit, event, miscunit, misc)
    print "AgedClefthoof"
	Unit:RegisterEvent("AgedClefthoof_Charge",10000,0)
end

function AgedClefthoof_Death(Unit)
    Unit:RemoveEvents()
end

function AgedClefthoof_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(17133, 1, "AgedClefthoof")	
RegisterUnitEvent(17133, 2, "AgedClefthoof_OnLeaveCombat")
RegisterUnitEvent(17133, 4, "AgedClefthoof_Death")