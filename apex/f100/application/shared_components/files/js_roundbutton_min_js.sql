prompt --application/shared_components/files/js_roundbutton_min_js
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
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20746F67676C654D656E757328297B2428222E6D656E752D746F67676C6522292E746F67676C65436C61737328226F70656E22292C2428222E6D656E752D726F756E6422292E746F67676C65436C61737328226F70656E22292C2428';
wwv_flow_imp.g_varchar2_table(2) := '222E6D656E752D6C696E6522292E746F67676C65436C61737328226F70656E22297D2428222E6D656E752D746F67676C6522292E636C69636B282866756E6374696F6E28297B746F67676C654D656E757328297D29293B';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8666425479509859)
,p_file_name=>'js/RoundButton.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
