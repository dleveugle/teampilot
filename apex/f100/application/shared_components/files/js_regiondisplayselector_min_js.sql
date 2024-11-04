prompt --application/shared_components/files/js_regiondisplayselector_min_js
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
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2073686F77526567696F6E2865297B2428226469762E74702D526567696F6E22292E65616368282866756E6374696F6E28297B746869732E7374796C652E646973706C61793D226E6F6E65227D29292C646F63756D656E742E717565';
wwv_flow_imp.g_varchar2_table(2) := '727953656C6563746F72282223222B65292E7374796C652E646973706C61793D22626C6F636B227D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10583022773709873)
,p_file_name=>'js/RegionDisplaySelector.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
