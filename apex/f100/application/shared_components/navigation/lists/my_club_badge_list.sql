prompt --application/shared_components/navigation/lists/my_club_badge_list
begin
--   Manifest
--     LIST: My Club badge list
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
 p_id=>wwv_flow_imp.id(8418161066361794)
,p_name=>'My Club badge list'
,p_list_type=>'SQL_QUERY'
,p_list_query=>'select * from pck_pages_10.get_my_club_badges_table(:P0_USER_ID, :P0_SEASON_ID, :P0_CLUB_ID);'
,p_list_status=>'PUBLIC'
,p_version_scn=>39327605696795
);
wwv_flow_imp.component_end;
end;
/
