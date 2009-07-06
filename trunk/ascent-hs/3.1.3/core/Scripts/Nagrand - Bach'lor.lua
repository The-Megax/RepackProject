--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bachlor_Gore(Unit, event, miscunit, misc)
    print "Bachlor Gore"
	Unit:FullCastSpellOnTarget(32019,Unit:GetMainTank())
end

function Bachlor_TalbukStrike(Unit, event, miscunit, misc)
    print "Bachlor TalbukStrike"
	Unit:FullCastSpellOnTarget(32020,Unit:GetMainTank())
end

function Bachlor(Unit, event, miscunit, misc)
    print "Bachlor"
	Unit:RegisterEvent("Bachlor_Gore",15000,0)
	Unit:RegisterEvent("Bachlor_TalbukStrike",25000,0)
end

function Bachlor_Death(Unit)
    Unit:RemoveEvents()
end

function Bachlor_OnleaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(18258, 1, "Bachlor")
RegisterUnitEvent(18258, 2, "Bachlor_OnleaveCombat")
RegisterUnitEvent(18258, 4, "Bachlor_Death")