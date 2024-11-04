prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7956976970413521)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>39327579189501
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8249758789413297)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39327579190546
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8249912342413297)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39327579190552
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8250496834413297)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39327579190552
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8353284131412562)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39327579192116
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8353558834412561)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39327579192116
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
wwv_flow_imp.component_end;
end;
/
