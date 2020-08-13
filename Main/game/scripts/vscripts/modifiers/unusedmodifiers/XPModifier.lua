require('settings')
if XPModifier == nil then
	XPModifier = class({})
end

function XPModifier:GetAttributes() 
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

function XPModifier:DeclareFunctions() --we want to use these functions in this item
    local funcs = {
        MODIFIER_PROPERTY_EXP_RATE_BOOST,
    }

    return funcs
end

function XPModifier:GetModifierPercentageExpRateBoost()
	return BONUS_XP_PERCENTAGE
end

function XPModifier:IsHidden()
    return true
end

function XPModifier:IsPermanent() 
	return true
end

function XPModifier:IsPurgable()
	return false
end