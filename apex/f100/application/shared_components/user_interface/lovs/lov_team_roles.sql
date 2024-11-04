prompt --application/shared_components/user_interface/lovs/lov_team_roles
begin
--   Manifest
--     LOV_TEAM_ROLES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9790689027933741)
,p_lov_name=>'LOV_TEAM_ROLES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TP_TEAM_ROLES'
,p_return_column_name=>'TEAM_ROLE_CODE'
,p_display_column_name=>'LABEL'
,p_default_sort_column_name=>'LABEL'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39328077935508
);
wwv_flow_imp.component_end;
end;
/
