local YourWebhook = 'https://discord.com/api/webhooks/1287302866704404611/hTWpDfeLLl2MxQ57KZ2zgVTt-fG8TzRBO1pW1TQ9rUAawRuS49_vy3MROkglhy7yukwK'  -- help: https://docs.brutalscripts.com/site/others/discord-webhook

function GetWebhook()
    return YourWebhook
end

-- Buy here: (4€+VAT) https://store.brutalscripts.com
function notification(source, title, text, time, type)
    if Config.BrutalNotify then
        TriggerClientEvent('brutal_notify:SendAlert', source, title, text, time, type)
    else
        TriggerClientEvent('brutal_policejob:client:DefaultNotify', text)
    end
end

function ClearPlayerInventory(source)
    if Config.Inventory:lower() == 'ox_inventory' then
        exports.ox_inventory:ClearInventory(source)
    elseif Config.Inventory:lower() == 'qb_inventory' then
        exports['qb-inventory']:ClearInventory(source)
    end
end