prompt --application/shared_components/user_interface/lovs/tp_competitions_label
begin
--   Manifest
--     TP_COMPETITIONS.LABEL
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
 p_id=>wwv_flow_imp.id(10746019971981085)
,p_lov_name=>'TP_COMPETITIONS.LABEL'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TP_COMPETITIONS'
,p_return_column_name=>'COMPETITION_ID'
,p_display_column_name=>'LABEL'
,p_default_sort_column_name=>'LABEL'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39329057182018
);
wwv_flow_imp.component_end;
end;
/
