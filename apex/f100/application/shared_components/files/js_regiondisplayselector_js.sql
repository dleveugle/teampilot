prompt --application/shared_components/files/js_regiondisplayselector_js
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
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2073686F77526567696F6E28726567696F6E496429207B0D0A202020202F2F20436163686520746F75746573206C65732072C3A967696F6E7320642761626F72640D0A202020202428276469762E74702D526567696F6E27292E6561';
wwv_flow_imp.g_varchar2_table(2) := '63682866756E6374696F6E28297B20746869732E7374796C652E646973706C6179203D20276E6F6E65273B7D293B0D0A20200D0A0D0A202020202F2F2041666669636865206C612072C3A967696F6E207370C3A9636966697175650D0A20202020646F63';
wwv_flow_imp.g_varchar2_table(3) := '756D656E742E717565727953656C6563746F7228272327202B20726567696F6E4964292E7374796C652E646973706C6179203D2027626C6F636B273B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10566295738892206)
,p_file_name=>'js/RegionDisplaySelector.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
