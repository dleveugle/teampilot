prompt --application/shared_components/security/app_access_control/reader
begin
--   Manifest
--     ACL ROLE: Reader
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8251721145413294)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>39327579190560
);
wwv_flow_imp.component_end;
end;
/
