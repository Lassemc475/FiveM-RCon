RegisterNetEvent('lmc_web:alert')
AddEventHandler('lmc_web:alert', function()
    PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
    for i=1,20 do
        Wait(1000)
        PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
    end
end)
