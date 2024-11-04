prompt --application/shared_components/user_interface/lovs/tp_managed_objects_roles_role_code
begin
--   Manifest
--     TP_MANAGED_OBJECTS_ROLES.ROLE_CODE
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
 p_id=>wwv_flow_imp.id(10976713410105426)
,p_lov_name=>'TP_MANAGED_OBJECTS_ROLES.ROLE_CODE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TP_MANAGED_OBJECTS_ROLES'
,p_return_column_name=>'ROLE_CODE'
,p_default_sort_column_name=>'ROLE_CODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39329239020698
);
wwv_flow_imp.component_end;
end;
/
