Citizen.CreateThread(function()

    exports.ox_target:addBoxZone({
        coords = vector4(-17.74979, 6487.456, 31.49829, 218.0308),
        options = {
            {
                label = "Ouvrir le magasin",
                icon = "fa-solid fa-cannabis",
                onSelect = function()
                    lib.showContext('Tuto1:shopMenu')
                end
            }
        }
    })
end)

lib.registerContext({
    id = 'Tuto1:shopMenu', 
    title = 'Menu de sélection',
    options = {
        {
            title = "Acheter de la weed",
            onSelect = function()
                OpenWeedMenu()
            end
        },
        {
            title = "Acheter CBD"
        }
    }
})

function OpenWeedMenu()

    local option = {}
    for k, v in pairs(Config.Weed) do 
        print(v.name)
        table.insert(option, {
            title = v.label,
            description = v.name .."  \n Prix : " ..v.price,
            onSelect = function()
                TriggerServerEvent("Tuto1:addItem", v.name, v.price)
            end
        })
    end
    lib.registerContext({
        id = "Tuto1:weed",
        title = "Choix de la weed",
        options = option
    })
    lib.showContext("Tuto1:weed")
end