prompt --application/shared_components/user_interface/lovs/lov_seasons
begin
--   Manifest
--     LOV_SEASONS
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
 p_id=>wwv_flow_imp.id(8611169491781317)
,p_lov_name=>'LOV_SEASONS'
,p_lov_query=>'select label, season_id from tp_seasons order by label'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SEASON_ID'
,p_display_column_name=>'LABEL'
,p_version_scn=>39327669390757
);
wwv_flow_imp.component_end;
end;
/
