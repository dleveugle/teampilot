prompt --application/shared_components/files/js_ajax_min_js
begin
--   Manifest
--     APP STATIC FILES: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2063616C6C416A6178526F7574657228652C722C73297B72657475726E20617065782E7365727665722E70726F636573732822416A6178526F75746572222C652C72292E7468656E282866756E6374696F6E2865297B72657475726E';
wwv_flow_imp.g_varchar2_table(2) := '226572726F72223D3D652E737461747573262628617065782E6D6573736167652E636C6561724572726F727328292C617065782E6D6573736167652E73686F774572726F727328652E6572726F727329292C732E666F72456163682828653D3E7B617065';
wwv_flow_imp.g_varchar2_table(3) := '782E726567696F6E2E6973526567696F6E2865293F617065782E726567696F6E2865292E7265667265736828293A617065782E6974656D2E69734974656D2865292626617065782E6974656D2865292E7265667265736828297D29292C657D29297D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10146974484139628)
,p_file_name=>'js/Ajax.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
