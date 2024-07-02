if SERVER then
    util.AddNetworkString("OpenSoundMenu")
    util.AddNetworkString("PlaySoundForEveryone")


    net.Receive("PlaySoundForEveryone", function(len, ply)
        local soundName = net.ReadString()
        -- Здесь была удалена переменная soundPos, так как она не использовалась

        -- Отправляем звук всем игрокам в радиусе 100 юнитов от позиции игрока
        -- Исправлено: Добавлена функция EmitSound с корректными параметрами
        for _, listener in ipairs(player.GetAll()) do
            if listener:GetPos():Distance(ply:GetPos()) <= 100 then
                listener:EmitSound(soundName, 70)
            end
        end
    end)

    concommand.Add("sound_menu", function(ply, cmd, args)
        net.Start("OpenSoundMenu")
        net.Send(ply)
    end)
else
    -- Клиентские категории
    local phrases = {
        -- Категория: Обычные фразы
        {category = "Ordinary phrases", text = "yeah", sound = "vo/npc/male01/yeah02.wav"},
        {category = "Ordinary phrases", text = "We trusted you.", sound = "vo/npc/male01/wetrustedyou01.wav"},
        {category = "Ordinary phrases", text = "okey", sound = "vo/npc/male01/ok01.wav"},
        {category = "Ordinary phrases", text = "okey, im ready", sound = "vo/npc/male01/okimready01.wav"},
        -- Категория: Бред
        {category = "Rave", text = "some time, im dream about cheese", sound = "vo/npc/male01/question06.wav"},
        {category = "Rave", text = "like that!", sound = "vo/npc/male01/likethat.wav"},
        -- Категория: Команды
        {category = "Orders", text = "follow me", sound = "vo/npc/male01/squad_away03.wav"},
        {category = "Orders", text = "HANDS UP", sound = "murdered/player/police/surrender (19).mp3"},
        {category = "Orders", text = "DROP THAT", sound = "murdered/player/police/surrender (2).mp3"},
        {category = "Orders", text = "drop it now!", sound = "murdered/player/police/surrender (10).mp3"},
        {category = "Orders", text = "drop the gun!", sound = "murdered/player/police/surrender (3).mp3"},
        {category = "Orders", text = "get on the ground!", sound = "murdered/player/police/surrender (15).mp3"},
        {category = "Orders", text = "do not move!", sound = "murdered/player/police/surrender (26).mp3"},
        -- Категория: Экстренные ситуации
        {category = "State of emergency", text = "GET THE HELL", sound = "vo/npc/male01/gethellout.wav"},
        {category = "State of emergency", text = "AAAH", sound = "vo/npc/male01/pain08.wav"},
        {category = "State of emergency", text = "RUN FOR YOUR LIFE", sound = "vo/npc/male01/runforyourlife01.wav"},
        {category = "State of emergency", text = "WATCH OUT", sound = "vo/npc/male01/watchout.wav"},
        {category = "State of emergency", text = "behind you!", sound = "vo/npc/male01/behindyou02.wav"},
        {category = "State of emergency", text = "no HELP", sound = "vo/coast/bugbait/sandy_help.wav"},
        -- Добавь больше категорий и фраз здесь
    }

    net.Receive("OpenSoundMenu", function(len)
        local frame = vgui.Create("DFrame")
        frame:SetTitle("Phrase Menu")
        frame:SetSize(300, 655)
        frame:Center()
        frame:MakePopup() -- Убедитесь, что это после установки ввода
        frame:SetKeyboardInputEnabled(false) -- Разрешить ввод с клавиатуры в игре
        frame:SetMouseInputEnabled(true) -- Разрешить ввод мыши для меню
  

        local DPanel = vgui.Create("DScrollPanel", frame)
        DPanel:SetPos(0, 0)
        DPanel:SetSize(300, 655)
        DPanel.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(32, 33, 34, 255))
        end

                -- Кнопка закрытия
                local closeButton = vgui.Create("DButton", frame)
                closeButton:SetText("✕")
                closeButton:SetTextColor(Color(32, 90, 140))
                closeButton:SetPos(frame:GetWide() - 27, 3)
                closeButton:SetFont("HudDefault")
                closeButton:SetSize(22, 22)
                closeButton.Paint = function(self, w, h)
                    draw.RoundedBox(8, 0, 0, w, h, Color(51, 51, 51))
                end
                closeButton.DoClick = function()
                    frame:Close()
                end

        -- Создание категорий для фраз
        local categories = {}
        for _, phrase in pairs(phrases) do
            categories[phrase.category] = categories[phrase.category] or {}
            table.insert(categories[phrase.category], phrase)
        end

        -- Отображение кнопок фраз по категориям
        for category, phrases in pairs(categories) do
            local categoryLabel = vgui.Create("DLabel", DPanel)
            categoryLabel:SetText(category)
            categoryLabel:Dock(TOP)
            categoryLabel:SetDark(1)
            categoryLabel:DockMargin(5, 5, 5, 5)
            categoryLabel:SetTextColor(Color(32, 90, 140))
            categoryLabel:SetFont("CreditsText")

            for _, phrase in ipairs(phrases) do
                local button = vgui.Create("DButton", DPanel)
                button:SetText(phrase.text)
                button:Dock(TOP)
                button:DockMargin(5, 0, 5, 5)
                button:SetFont("CreditsText")
                button:SetSize(180, 23)
                button.Paint = function(self, w, h)
                    draw.RoundedBox(3, 0, 0, w, h, Color(55, 55, 55, 155))

                end
                button.DoClick = function()
                    net.Start("PlaySoundForEveryone")
                    net.WriteString(phrase.sound)
                    net.SendToServer()
                    frame:Close() -- Закрыть меню после нажатия

                end
            end
        end
    end)
end