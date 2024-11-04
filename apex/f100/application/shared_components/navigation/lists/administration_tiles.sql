prompt --application/shared_components/navigation/lists/administration_tiles
begin
--   Manifest
--     LIST: Administration Tiles
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
 p_id=>wwv_flow_imp.id(8526869340743756)
,p_name=>'Administration Tiles'
,p_list_type=>'SQL_QUERY'
,p_list_query=>'select * from pck_pages_10000.get_administration_menu_cards();'
,p_list_status=>'PUBLIC'
,p_version_scn=>39327626802708
);
wwv_flow_imp.component_end;
end;
/
