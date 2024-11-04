prompt --application/shared_components/files/js_page_22_min_js
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
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20746F67676C654C657474657246696C74657228742C65297B242822236C65747465725F66696C74657220612E752D686F7422292E6C656E6774683E302626242822236C65747465725F66696C74657220612E752D686F7422292E72';
wwv_flow_imp.g_varchar2_table(2) := '656D6F7665436C6173732822752D686F7422292C247628225032325F4C455454455222293D3D653F247328225032325F4C4554544552222C6E756C6C293A28742E636C6173734C6973742E6164642822752D686F7422292C247328225032325F4C455454';
wwv_flow_imp.g_varchar2_table(3) := '4552222C6529297D66756E6374696F6E20696E69744C65747465722874297B242822236C65747465725F222B74292E6C656E6774683E302626242822236C65747465725F222B74292E616464436C6173732822752D686F7422297D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8657050469795829)
,p_file_name=>'js/PAGE_22.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
