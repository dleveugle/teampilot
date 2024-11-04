prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8253457584413288)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8417822145711795)
,p_group_name=>'Club'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(9724339234903066)
,p_group_name=>'Competition'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8394546595825896)
,p_group_name=>'Login'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8427287182258872)
,p_group_name=>'Players'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(9326547559122955)
,p_group_name=>'Team'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8353031138412562)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
