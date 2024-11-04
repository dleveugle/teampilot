prompt --application/shared_components/files/js_roundbutton_js
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
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20746F67676C654D656E757328297B0D0A202020202428222E6D656E752D746F67676C6522292E746F67676C65436C61737328276F70656E27293B0D0A202020202428222E6D656E752D726F756E6422292E746F67676C65436C6173';
wwv_flow_imp.g_varchar2_table(2) := '7328276F70656E27293B0D0A092428222E6D656E752D6C696E6522292E746F67676C65436C61737328276F70656E27293B0D0A7D0D0A2428222E6D656E752D746F67676C652220292E636C69636B2866756E6374696F6E2829207B0D0A09746F67676C65';
wwv_flow_imp.g_varchar2_table(3) := '4D656E757328293B0D0A7D293B0D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8665475648511848)
,p_file_name=>'js/RoundButton.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
