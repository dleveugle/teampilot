prompt --application/shared_components/files/js_global_js
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
wwv_flow_imp.g_varchar2_table(1) := '2F2A2A0D0A202A2066756E6374696F6E20746861742067656E657261746520612050726F6D697365206F6E20414A415847455455524C206170706C69636174696F6E2070726F636573730D0A202A2F0D0A66756E6374696F6E206765745F50726F6D6973';
wwv_flow_imp.g_varchar2_table(2) := '655F55726C28706167652C206974656D732C2076616C7565732C2074726967676572696E675F656C656D656E7429207B0D0A2020202072657475726E20617065782E7365727665722E70726F63657373280D0A202020202020202027414A415847455455';
wwv_flow_imp.g_varchar2_table(3) := '524C272C0D0A20202020202020207B0D0A2020202020202020202020207830313A20706167652C0D0A2020202020202020202020207830323A206974656D732C0D0A2020202020202020202020207830333A2076616C7565732C0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(4) := '202020207830343A2074726967676572696E675F656C656D656E740D0A20202020202020207D2C0D0A20202020202020207B0D0A20202020202020202020202064617461547970653A202274657874220D0A20202020202020207D0D0A20202020293B0D';
wwv_flow_imp.g_varchar2_table(5) := '0A7D0D0A2F2A2A0D0A202A2066756E6374696F6E207468617420737472696E6769667920776974686F75742063697263756C6172206572726F720D0A202A2F0D0A66756E6374696F6E20737472696E67696679286F626A29207B0D0A20206C6574206361';
wwv_flow_imp.g_varchar2_table(6) := '636865203D205B5D3B0D0A20206C657420737472203D204A534F4E2E737472696E67696679286F626A2C2066756E6374696F6E286B65792C2076616C756529207B0D0A2020202069662028747970656F662076616C7565203D3D3D20226F626A65637422';
wwv_flow_imp.g_varchar2_table(7) := '2026262076616C756520213D3D206E756C6C29207B0D0A2020202020206966202863616368652E696E6465784F662876616C75652920213D3D202D3129207B0D0A20202020202020202F2F2043697263756C6172207265666572656E636520666F756E64';
wwv_flow_imp.g_varchar2_table(8) := '2C2064697363617264206B65790D0A202020202020202072657475726E3B0D0A2020202020207D0D0A2020202020202F2F2053746F72652076616C756520696E206F757220636F6C6C656374696F6E0D0A20202020202063616368652E70757368287661';
wwv_flow_imp.g_varchar2_table(9) := '6C7565293B0D0A202020207D0D0A2020202072657475726E2076616C75653B0D0A20207D293B0D0A20206361636865203D206E756C6C3B202F2F207265736574207468652063616368650D0A202072657475726E207374723B0D0A7D0D0A0D0A2F2A2064';
wwv_flow_imp.g_varchar2_table(10) := '657465637420636C617373206368616E6765202A2F0D0A2F2F20657874656E73696F6E206D6574686F643A0D0A242E666E2E6F6E436C6173734368616E6765203D2066756E6374696F6E28636229207B0D0A202072657475726E20242874686973292E65';
wwv_flow_imp.g_varchar2_table(11) := '61636828285F2C20656C29203D3E207B0D0A202020206E6577204D75746174696F6E4F62736572766572286D75746174696F6E73203D3E207B0D0A2020202020206D75746174696F6E732E666F7245616368286D75746174696F6E203D3E206362202626';
wwv_flow_imp.g_varchar2_table(12) := '206362286D75746174696F6E2E7461726765742C206D75746174696F6E2E7461726765742E636C6173734E616D6529293B0D0A202020207D292E6F62736572766528656C2C207B0D0A202020202020617474726962757465733A20747275652C0D0A2020';
wwv_flow_imp.g_varchar2_table(13) := '2020202061747472696275746546696C7465723A205B27636C617373275D202F2F206F6E6C79206C697374656E20666F7220636C61737320617474726962757465206368616E676573200D0A202020207D293B0D0A20207D293B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8495149852613809)
,p_file_name=>'js/GLOBAL.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
