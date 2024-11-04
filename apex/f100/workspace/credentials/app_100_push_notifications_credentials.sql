prompt --workspace/credentials/app_100_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 100 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(8360200688412552)
,p_name=>'App 100 Push Notifications Credentials'
,p_static_id=>'App_100_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
