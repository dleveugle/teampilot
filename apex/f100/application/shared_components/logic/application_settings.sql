prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(8252876580413291)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(8249912342413297)
,p_version_scn=>39327579190569
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(8253141072413290)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(8249758789413297)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>39327706884254
);
wwv_flow_imp.component_end;
end;
/
