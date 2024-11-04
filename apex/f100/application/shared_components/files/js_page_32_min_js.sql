prompt --application/shared_components/files/js_page_32_min_js
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
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2072656D6F7665506C6179657246726F6D5465616D436F6C6C656374696F6E2865297B76617220613D242865292C6F3D612E61747472282274702D7465616D22292C743D612E61747472282274702D7365715F696422293B63616C6C';
wwv_flow_imp.g_varchar2_table(2) := '416A6178526F75746572287B7830313A2252656D6F7665506C6179657246726F6D5465616D436F6C6C656374696F6E222C7830323A6F2C7830333A747D2C7B64617461547970653A226A736F6E227D2C5B227465616D506C6179657273222C225033325F';
wwv_flow_imp.g_varchar2_table(3) := '415641494C41424C45504C4159455253225D297D66756E6374696F6E20616464506C61796572546F5465616D436F6C6C656374696F6E28652C612C6F297B63616C6C416A6178526F75746572287B7830313A22416464506C61796572546F5465616D436F';
wwv_flow_imp.g_varchar2_table(4) := '6C6C656374696F6E222C7830323A652C7830333A612C7830343A6F7D2C7B64617461547970653A226A736F6E227D2C5B227465616D506C6179657273222C225033325F415641494C41424C45504C4159455253225D297D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10147798639138003)
,p_file_name=>'js/PAGE_32.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/