prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7958098538413520)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>39328041605469
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8260579108413283)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8416680490728110)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mon Club'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8426490305265836)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Joueurs'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8660729841547384)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Equipes'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users-alt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8685975977415765)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Competitions'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-paste'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8339996251412979)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(8251804040413294)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
