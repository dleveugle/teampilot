prompt --application/shared_components/navigation/lists/p42_team_score_list
begin
--   Manifest
--     LIST: P42 Team Score list
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
 p_id=>wwv_flow_imp.id(10728046918979028)
,p_name=>'P42 Team Score list'
,p_list_type=>'SQL_QUERY'
,p_list_query=>'select * from pck_pages_42.get_team_victory_badges_table(:P0_USER_ID, :P42_COMPETITION_ID, :P42_TEAM_ID);'
,p_list_status=>'PUBLIC'
,p_version_scn=>39329035970143
);
wwv_flow_imp.component_end;
end;
/
