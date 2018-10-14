local L = KuiNameplatesCoreConfig:Locale('ruRU')
if not L then return end

L["page_names"] = {
	["auras"] = "Ауры",
	["bossmod"] = "Босс моды",
	["castbars"] = "Полоса заклинания",
	["classpowers"] = "Энергия классов",
	["cvars"] = "CVars",
	["fade_rules"] = "Параметры затухания",
	["framesizes"] = "Размеры рамок",
	["general"] = "Основное",
	["healthbars"] = "Полоса здоровья",
	["nameonly"] = "Только-имя",
	["text"] = "Текст",
	["threat"] = "Угроза",
	["more_settings"] = "Доп. настройки",
}

L["titles"] = {
	["absorb_enable"] = "Показывать поглощения",
	["absorb_striped"] = "Полосатая текстура поглощения",
	["auras_centre"] = "Выравнивание по центру",
	["auras_colour_long"] = "Длинный таймер",
	["auras_colour_medium"] = "Средний таймер",
	["auras_colour_short"] = "Короткий таймер",
	["auras_enabled"] = "Показывать ауры",
	["auras_filtering_sep"] = "Фильтрация",
	["auras_hide_all_other"] = "Черный список всех других аур",
	["auras_icon_minus_size"] = "Размер значка (минус)",
	["auras_icon_normal_size"] = "Размер значка (обычный)",
	["auras_icon_squareness"] = "Форма значка",
	["auras_icons_sep"] = "Значки",
	["auras_kslc_hint"] = "KuiSpellListConfig из Curse, может быть использован для белого списка или черного списка для, любых применяемых аур.",
	["auras_offset"] = "Смещение по вертикали",
	["auras_on_personal"] = "Показывать на личной рамке",
	["auras_pulsate"] = "Пульсирующие значки",
	["auras_purge_opposite"] = "Развеиваемые на противоположной",
	["auras_purge_size"] = "Размер значка (развеиваемые)",
	["auras_show_all_self"] = "Белый список всех своих аур",
	["auras_show_purge"] = "Показывать развеиваемые",
	["auras_side"] = "Сторона",
	["auras_sort"] = "Метод сортировки",
	["auras_time_threshold"] = "Порог таймера",
	["bar_animation"] = "Полоса анимации",
	["bar_texture"] = "Полоса текстуры",
	["bossmod_clickthrough"] = "Включить сквозной щелчок, при автоматическом отображении",
	["bossmod_control_visibility"] = [=[Позволить босс-модам управлять 
видимостью индикаторами здоровья]=],
	["bossmod_enable"] = "Включить босс мод, модуль взаимодействия",
	["bossmod_icon_size"] = "Размер значка",
	["bossmod_x_offset"] = "Смещение по горизонтали",
	["bossmod_y_offset"] = "Смещение по вертикали",
	["bot_vertical_offset"] = "Уров./здор. в.смещение",
	["castbar_animate"] = "Анимация",
	["castbar_animate_change_colour"] = "Изменить цвет",
	["castbar_colour"] = "Цвет полосы заклинания",
	["castbar_enable"] = "Включить",
	["castbar_height"] = "Высота полосы заклинания",
	["castbar_icon"] = "Показать значок заклинания",
	["castbar_name"] = "Показать название заклинания",
	["castbar_name_vertical_offset"] = "Название заклинания в.смещение",
	["castbar_shield"] = "Показать не прерываемый щит",
	["castbar_showall"] = "На всех табличках с именами",
	["castbar_showenemy"] = "Показать полосу заклинания противников",
	["castbar_showfriend"] = "Показать полосу заклинания союзников",
	["castbar_showpersonal"] = "Показать собст. полосу заклин.",
	["castbar_unin_colour"] = "Цвет невоз. прерывания",
	["class_colour_enemy_names"] = [=[Окрашивать имена
противников по классу]=],
	["class_colour_friendly_names"] = [=[Окрашивать имена
союзников по классу]=],
	["classpowers_bar_height"] = "Регулировать полосу высоты",
	["classpowers_bar_width"] = "Ширина регулировки полосы",
	["classpowers_colour"] = "Окрасить значок",
	["classpowers_colour_inactive"] = "Неактив. цвет",
	["classpowers_colour_overflow"] = "Цвет переполнения",
	["classpowers_enable"] = "Показывать ресурсы класса",
	["classpowers_on_target"] = "Показать на цели",
	["classpowers_size"] = "Размер значка",
	["clickthrough_enemy"] = "Противник",
	["clickthrough_friend"] = "Союзник",
	["clickthrough_self"] = "Индикатор",
	["clickthrough_sep"] = "Прокликивание насквозь рамки",
	["colour_absorb"] = "Наложение поглощения",
	["colour_enemy_class"] = "Окрасить класс вражеских игроков",
	["colour_enemy_pet"] = "Питомец вражеского игрока",
	["colour_enemy_player"] = "Враждебный игрoк",
	["colour_friendly"] = "Союзники",
	["colour_friendly_pet"] = "Питомец союзного игрока",
	["colour_hated"] = "Ненависть",
	["colour_neutral"] = "Нейтральные",
	["colour_player"] = "Игрок",
	["colour_player_class"] = "Окрасить класс союзных игроков",
	["colour_self"] = "Свое",
	["colour_self_class"] = "Окрасить свой класс",
	["colour_tapped"] = "Потускнение",
	["combat_friendly"] = "Боевое действие: союзные",
	["combat_hostile"] = "Боевое действие: враждебное",
	["copy_profile_label"] = "Введите имя для нового профиля",
	["copy_profile_title"] = "Копир. профиль",
	["dd_auras_sort_index"] = "Индекс аур",
	["dd_auras_sort_time"] = "Оставшееся время",
	["dd_bar_animation_cutaway"] = "Срез",
	["dd_bar_animation_smooth"] = "Плавно",
	["dd_combat_toggle_hide"] = "Скрыть, затем показать",
	["dd_combat_toggle_nothing"] = "Ничего не делать",
	["dd_combat_toggle_show"] = "Показать, затем скрыть",
	["dd_font_style_monochrome"] = "Монохромный",
	["dd_font_style_none"] = "Никакой",
	["dd_font_style_outline"] = "Контур",
	["dd_font_style_shadow"] = "Тень",
	["dd_font_style_shadowandoutline"] = "Тень+контур",
	["dd_health_text_blank"] = "Пусто",
	["dd_health_text_current"] = "Текущие",
	["dd_health_text_current_deficit"] = "Текущий + дефицит",
	["dd_health_text_current_percent"] = "Текущий + процент",
	["dd_health_text_deficit"] = "Дефицит",
	["dd_health_text_maximum"] = "Максимальное",
	["dd_health_text_percent"] = "Процентов",
	["delete_profile_label"] = "Удалить профиль |cffffffff%s|r?",
	["delete_profile_title"] = "Удалить профиль",
	["execute_auto"] = "Авто-определение диапазона",
	["execute_colour"] = "Цвет добивания",
	["execute_enabled"] = "Включить диапазон добивания",
	["execute_percent"] = "Диапазон добивания",
	["execute_sep"] = "Диапазон добивания",
	["fade_all"] = "Затухание по умолчанию",
	["fade_avoid_casting_friendly"] = "Применение заклинания (союзники)",
	["fade_avoid_casting_hostile"] = "Применение заклинания (противники)",
	["fade_avoid_casting_interruptible"] = "Прерываемое",
	["fade_avoid_casting_uninterruptible"] = "Не прерываемое",
	["fade_avoid_combat"] = "В бою",
	["fade_avoid_execute_friend"] = "Искл. союзников с низким УЗ",
	["fade_avoid_execute_hostile"] = "Искл. врагов с низким УЗ",
	["fade_avoid_mouseover"] = "При наведении",
	["fade_avoid_nameonly"] = "Исключить только-имя",
	["fade_avoid_raidicon"] = "Искл. рейдовою иконку",
	["fade_avoid_sep"] = "Не затемнять...",
	["fade_avoid_tracked"] = "Искл. отслеживание или в бою",
	["fade_conditional_alpha"] = "Прозрачность от условия",
	["fade_friendly_npc"] = "Затухание союзных НИПов",
	["fade_neutral_enemy"] = "Затухание нейтрал. противников",
	["fade_non_target_alpha"] = "Прозрачность не-цели",
	["fade_speed"] = "Скорость анимации",
	["fade_untracked"] = "Затухание не отслеж. юнита",
	["font_face"] = "Лицевой шрифт",
	["font_size_normal"] = "Обычный размер шрифта",
	["font_size_small"] = "Маленький размер шрифта",
	["font_style"] = "Стиль шрифта",
	["frame_glow_size"] = "Размер рамки свечения",
	["frame_glow_threat"] = "Показать свечение угрозы",
	["frame_height"] = "Высота рамки",
	["frame_height_minus"] = "Минус высоты рамки",
	["frame_height_personal"] = "Высота рамки личного индикатора",
	["frame_width"] = "Ширина рамки",
	["frame_width_minus"] = "Минус ширины рамки",
	["frame_width_personal"] = "Ширина рамки индикатора",
	["framesizes_element_sep"] = "Части",
	["framesizes_scale_sep"] = "Масштабирование",
	["global_scale"] = "Общее масштабирование",
	["glow_as_shadow"] = "Показывать рамку тени",
	["guild_text_npcs"] = "Показать звание НИПа",
	["guild_text_players"] = "Показать гильдию игроков",
	["health_text"] = "Показать здоровье текстом",
	["health_text_friend_dmg"] = "Повреждение союзников",
	["health_text_friend_max"] = "Макс. здоровье союзника",
	["health_text_hostile_dmg"] = "Повреждение враждебное",
	["health_text_hostile_max"] = "Макс. здоровье противника",
	["health_text_sep"] = "Текст: здоровье",
	["hide_names"] = "Скрыть не отслеживаемые имена",
	["level_text"] = "Показать уровень текстом",
	["mouseover_glow"] = "Свечение при наведении",
	["mouseover_glow_colour"] = "Цвет свечения при наведении",
	["name_colour_npc_friendly"] = "Союзники",
	["name_colour_npc_hostile"] = "Враждебный",
	["name_colour_npc_neutral"] = "Нейтральный",
	["name_colour_player_friendly"] = "Союзный игрок",
	["name_colour_player_hostile"] = "Враждебный игрок",
	["name_colour_sep"] = "Текст: цветные имена",
	["name_colour_white_in_bar_mode"] = "Белые имена с включенными индикаторами здоровья.",
	["name_text"] = "Показать имя текстом",
	["name_vertical_offset"] = "В.смещение имени",
	["nameonly"] = "Использ. режим только-имя",
	["nameonly_all_enemies"] = "Которых можно атаковать",
	["nameonly_combat_friends"] = "Союзники в бою",
	["nameonly_combat_hostile"] = "Противники в бою",
	["nameonly_damaged_enemies"] = "Противники с повреждениями",
	["nameonly_damaged_friends"] = "Союзники с повреждениями",
	["nameonly_enemies"] = "Враждебных противниках",
	["nameonly_friends"] = "Дружественные",
	["nameonly_health_colour"] = "Цвет здоровья",
	["nameonly_neutral"] = "Нейтральных противниках",
	["nameonly_no_font_style"] = "Нет контура текста",
	["nameonly_target"] = "Цель",
	["nameonly_text_sep"] = "Текст",
	["nameonly_visibility_sep"] = "Испоьзовать только-имя на…",
	["new_profile"] = "Новый профиль...",
	["new_profile_label"] = "Введите имя профиля",
	["powerbar_height"] = "Высота полосы энергии",
	["profile"] = "Профиль",
	["reaction_colour_sep"] = "Цвета",
	["rename_profile_label"] = "Введите новое имя для |cffffffff%s",
	["rename_profile_title"] = "Переим. профиль",
	["reset_profile_label"] = "Сбросить профиль |cffffffff%s|r?",
	["reset_profile_title"] = "Сброс профиля",
	["state_icons"] = "Показать состояния значков",
	["tank_mode"] = "Включить режим танка",
	["tankmode_colour_sep"] = "Цветовые полосы в режиме танка",
	["tankmode_force_enable"] = "Режим принудительного танка",
	["tankmode_force_offtank"] = "Принудительное обнаружение офф-танка",
	["tankmode_other_colour"] = "Офф-танк",
	["tankmode_tank_colour"] = "Танкование",
	["tankmode_trans_colour"] = "Переходной",
	["target_arrows"] = "Показывать стрелки на цели",
	["target_arrows_size"] = "Размер стрелки цели",
	["target_glow"] = "Свечение цели",
	["target_glow_colour"] = "Цветовое свечение цели",
	["text_vertical_offset"] = "В.смещение текста",
	["threat_brackets"] = "Показывать \"ковычки\" угрозы",
	["title_text_players"] = "Показывать звания игрока",
	["use_blizzard_personal"] = [=[Игнорировать индикатор
личного ресурса]=],
	["version"] = "%s от %s @ Curse, версия %s",
	["highlight_target"] = "Подсветка цели",
	["highlight_target_colour"] = "Цвет подсветки цели",
	["highlight_mouseover_colour"] = "Цвет подсветки при наведении",
	["name_colour_target_check"] = "Другой цвет имени цели",
	["name_colour_target"] = "Цвет имени цели",
}

L["tooltips"] = {
	["absorb_enable"] = "Показывать поглощение на индикаторе здоровья",
	["absorb_striped"] = "Использование полосатой текстуры для наложенного поглощения. Если флажок снят, то применяется текстура полосы здоровья",
	["auras_enabled"] = "Бафы на союзниках, дебафы на противниках",
	["auras_hide_all_other"] = "Не показывать наложенные от других игроков ауры в главной рамке аур (такие как контроли или замедления)",
	["auras_icon_minus_size"] = "Размер значка на уменьшенных рамках",
	["auras_icon_normal_size"] = "Размер значка на рамках обычного размера",
	["auras_icon_squareness"] = "Соотношение сторон значков ауры, где 1 означает идеальный квадрат",
	["auras_on_personal"] = "Показывать бафы на индикаторе личного ресурса",
	["auras_pulsate"] = "Пульсирующие значки, когда они вот-вот истекут",
	["auras_show_all_self"] = "Показывать все ауры, которые вы накладываете, а не только те, которые выбраны Blizzard как важные.",
	["auras_show_purge"] = "Показывать бафы на противниках, которые вы можете украсть, снять или развеять.",
	["auras_time_threshold"] = "Текст обратного отсчета будет отображаться, если на ауре меньше или равно этому количеству времени. Установить в -1, чтобы всегда отображать таймер",
	["bar_animation"] = "Стиль анимации, используемой на панелях здоровья/полосы энергии",
	["bar_texture"] = "Текстура, используемая для полосы статуса (предоставляется LibSharedMedia)",
	["bossmod_clickthrough"] = "Отключить, щелчок на индикаторах здоровья, которые включены автоматически",
	["bossmod_control_visibility"] = "Босс мод аддоны, могут отправлять сообщение аддонам с индикаторами здоровья, информируя их о включении индикатора здоровья во время схваток, игнорируя другие параметры, такие как боевое автоматическое переключение, чтобы на них могли отображаться дополнительные сведения.|n|n|cffff6666Если этот параметр отключен, а индикаторы здоровья, как правило, не включены, то в случае босс моды, не смогут показать эти данные.",
	["bossmod_enable"] = "Босс мод аддоны, могут взаимодействовать с индикаторами здоровья, чтобы отображать дополнительную информацию на индикаторе здоровья в соответствующих схватках, таких как важные баффы или дебаффы, наложенными боссами.",
	["bossmod_icon_size"] = "Размер значков ауры босса",
	["bossmod_x_offset"] = "Горизонтальное смещение значков ауры босса",
	["bossmod_y_offset"] = "Вертикальное смещение значков ауры босса",
	["castbar_animate"] = "Затухание полосы заклинаний после завершения",
	["castbar_animate_change_colour"] = "Изменение цвета полосы заклинаний при окончании \"произнесения\". Это позволяет легче отличать друг от друга законченные, отмененные или прерванные заклинания.",
	["castbar_colour"] = "Цвет полосы заклинаний.|n|nЕсли анимация включена, то используется для отображения успешного применения заклинания.",
	["castbar_enable"] = "Включить элемент полосы заклинания",
	["castbar_name_vertical_offset"] = "Вертикальное смещение текста названия заклинания",
	["castbar_shield"] = "Показывать значок щита на полосе применения во время применения, которые невозможно прервать",
	["castbar_showall"] = "Показать полосу заклинания, на всех индикаторах здоровья, а не только на текущей цели",
	["castbar_showenemy"] = "Показывать полосу заклинания противников на индикаторах здоровья",
	["castbar_showfriend"] = "Показывать полосу заклинания союзников на индикаторах здоровья (обратите внимание, что полоса заклинаний не отображаются на рамках, с активным режимом только-имя)",
	["castbar_showpersonal"] = "Показывать полосу заклинаний, для вашего персонажа на индикаторе здоровья, если она включена",
	["castbar_unin_colour"] = "Цвет полосы заклинаний, при невозможности прерывания",
	["class_colour_enemy_names"] = "Цвет индикатора здоровья противников на их класс. Также влияет на текст в режиме только-имя.",
	["class_colour_friendly_names"] = "Цвет индикатора здоровья союзников на их класс. Также влияет на текст в режиме только-имя.",
	["classpowers_bar_height"] = "Высота регулировки полосы",
	["classpowers_bar_width"] = "Регулировать пoлосу ширины",
	["classpowers_colour"] = "Окрашивать значок класса энергии для текущего класса",
	["classpowers_colour_inactive"] = "Окрашивать неактивные значки энергии классов",
	["classpowers_colour_overflow"] = "Окрашивать классовою энергию \"переполнение\" (аля Предчувствие у разбойников)",
	["classpowers_enable"] = "Показывать специальный ресурс вашего класса, такие как длина серии приемов, Энергия Света, и т. д.",
	["classpowers_on_target"] = "Показывать на рамке вашей цели, а не на личном индикаторе",
	["classpowers_size"] = "Размер значков энергии класса",
	["clickthrough_enemy"] = "Отключить, прокликивание на индикаторах здоровья противников",
	["clickthrough_friend"] = "Отключить, прокликивание на индикаторах здоровья союзников",
	["clickthrough_self"] = "Отключить, прокликивание на вашем индикаторе личного ресурса",
	["colour_friendly_pet"] = "Обратите внимание, что для союзных питомцев, как правило, не отображаются индикаторы здоровья",
	["colour_player"] = "Окрасить полосу здоровья других союзных игроков",
	["colour_self"] = "Цвет полосы здоровья, вашего индикатора личного ресурса",
	["colour_self_class"] = "Использовать цвет вашего класса, на вашем индикаторе личного ресурса",
	["combat_friendly"] = "Действия, направленные на то, чтобы принять союзные рамки после вступления в бой и покидания из него.",
	["combat_hostile"] = "Действия, направленные на то, чтобы принять враждебные рамки после вступления в бой и покидания из него.",
	["execute_auto"] = "Автоматически определять соответствующий диапазон добивания из ваших талантов, по умолчанию на 20% на персонаже без добивания",
	["execute_colour"] = "Окрасить добивание в пределах диапазона",
	["execute_enabled"] = "Перекрашивать полоски здоровья, когда юниты, находятся в пределах диапазона добивания",
	["execute_percent"] = "Вручную установить диапазон добивания (проценты)",
	["fade_all"] = "Затухать все рамки по умолчанию",
	["fade_avoid_execute_friend"] = "Не затухать на союзных индикаторах здоровья, в диапазоне добивания (устанавливается на странице \"Полоса здоровья\")",
	["fade_avoid_execute_hostile"] = "Не затухать на вражеских индикаторах здоровья, в диапазоне добивания (устанавливается на странице \"Полоса здоровья\")",
	["fade_avoid_tracked"] = "Не затухать, отслеживаемым индикаторам или индикаторами здоровья, которые в бою с вами.|nНезависимо от того, отслеживается ли юнит, можно установить, изменив выпадающем списке \"имена НИП\" и другие флажки в настройках интерфейса по умолчанию в разделе Esc > Интерфейс > Имена",
	["fade_friendly_npc"] = "Затухание союзных НИП, индикаторы здоровья, по умолчанию (в том числе в режиме только-имя)",
	["fade_neutral_enemy"] = "Затухание нейтральных индикаторах здоровья, по умолчанию (в том числе в режиме только-имя)",
	["fade_speed"] = "Скорость анимации затухания рамки, где 1 - самая медленная, а 0 - мгновенная",
	["fade_untracked"] = "Затухание не отслеживаемого индикатора здоровья, по умолчанию (в том числе в режиме только-имя).|nНезависимо от того, отслеживается ли юнит, можно установить, изменив раскрывающийся списке \"имена НИП\" и другие флажки в параметрах интерфейса по умолчанию в разделе Esc > Интерфейс > Имена",
	["font_face"] = "Шрифт, используемый для всех строк на индикаторах здоровья (предоставляется LibSharedMedia)",
	["font_size_normal"] = "Стандартный размер шрифта (имя и т. д.)",
	["font_size_small"] = "Мелкий размер шрифта (продавец, название заклинания и т. д.)",
	["frame_glow_threat"] = "Изменение цвета свечения для индикации состояния угрозы",
	["frame_height"] = "Высота стандартного индикатора здоровья",
	["frame_height_minus"] = "Высота индикатора здоровья, используемых на мобов, помечено как \"минус\" (ранее называемый как тривиальный), а также, такие как безымянные рамки (т. е. \"неважные\" юниты)",
	["frame_height_personal"] = "Высота индикатора личного ресурса (Для включения Esc > Интерфейс > Имена > Индикатор личного ресурса)",
	["frame_width"] = "Ширина стандартного индикатора здоровья",
	["frame_width_minus"] = "Ширина индикатора здоровья, используемых на мобов, помечено как \"минус\" (ранее называемый как тривиальный)",
	["frame_width_personal"] = "Ширина индикатора личного ресурса (Для включения Esc > Интерфейс > Имена > Индикатор личного ресурса)",
	["global_scale"] = "Этим значением выполняется масштабирование всех табличек с именами (используя пиксельную сетку)",
	["guild_text_npcs"] = "Показывать звание НИПов, такие как Интенданты, и т. д.",
	["health_text_friend_dmg"] = "Формат текста для здоровья, используемый на повреждения союзных юнитах",
	["health_text_friend_max"] = "Формат текста для здоровья, используемый для союзных юнитах при полном здоровье",
	["health_text_hostile_dmg"] = "Формат текста для здоровья, используемый на повреждения враждебных юнитах",
	["health_text_hostile_max"] = "Формат текста для здоровья, используемый для враждебных юнитах при полном здоровье",
	["hide_names"] = "Независимо от того, отслеживается ли юнит, можно установить, раскрывающимся меню \"имена НИП\" и другие флажки в параметрах интерфейса по умолчанию в разделе Esc > Интерфейс > Имена.|n|nЭто не влияет на режим только-имя.",
	["name_colour_white_in_bar_mode"] = "Белый цвет для имен НИП и игроков (если не включены цвета классов). |n|nЕсли включены, то цвета ниже применяются исключительно для режима только-имена.",
	["nameonly_combat_hostile"] = "Обратите внимание, что это не применяется к тренировочным манекенам или другим существам, которые не имеют механики угрозы",
	["nameonly_health_colour"] = "Частично окрашенный текст, представляющий процент здоровья",
	["nameonly_neutral"] = "Использовать режим только-имя, на нейтральных противниках, которых можно атаковать. ",
	["nameonly_no_font_style"] = "Скрыть текст контура, в режиме только-имя (путем установки стиля шрифта на ноль)",
	["nameonly_target"] = "Использовать режим только-имя, на вашей цели.",
	["powerbar_height"] = "Высота полосы энергии. Не будет увеличиваться за пределами высоты рамки",
	["state_icons"] = "Отображать значок на боссов и редких юнитов (скрывается при отображении текста уровня)",
	["tank_mode"] = "Перекрашивать полоски здоровья юнитов, при активном танковании, когда в танковской специализации",
	["tankmode_force_enable"] = "Всегда используйте режим танка, даже если в настоящее время вы не используете специализацию танкования",
	["tankmode_force_offtank"] = "Цветовые полосы, которые будут выделены другими танками в вашей группе, даже если вы в настоящее время не в специализации танкование",
	["tankmode_other_colour"] = "Окрашивать полосу здоровья в случае, когда другой танк, танкует.|n|nЭто только используется, если на данный момент вы находитесь в специализации танкование, и требуется другой танк, чтобы он был в вашей группе и его роль, была выбрана на танка.",
	["tankmode_tank_colour"] = "Окрашивать полосу здоровья при, использовании танкования",
	["tankmode_trans_colour"] = "Окрашивать полосу здоровья, при получении или утери угрозы",
	["target_arrows"] = "Показывать стрелки вокруг вашей текущей цели. Наследовать эту цель цветовым свечением",
	["text_vertical_offset"] = "Смещение по вертикали, которое применяется ко всем строкам. Используется для отрисовки некоторых шрифтов в странных вертикальных позициях в WoW. Обратите внимание, что это значение оканчивается на .5 по умолчанию, поскольку это помогает уменьшить дрожание по вертикали, когда рамки движутся",
	["threat_brackets"] = "Показывать треугольники вокруг индикатора здоровья, указывающие на статус угрозы",
}
