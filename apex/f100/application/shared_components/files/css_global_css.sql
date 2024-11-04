prompt --application/shared_components/files/css_global_css
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
wwv_flow_imp.g_varchar2_table(1) := '2F2A202072656D6F766520666F6F74657220676C6F62616C6C79202A2F0D0A2E742D466F6F7465727B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A2F2A2061646420636F6E74656E7420726F7720686F766572202A2F0D0A2E742D436F6E74';
wwv_flow_imp.g_varchar2_table(2) := '656E74526F77202E742D436F6E74656E74526F772D6974656D3A686F7665727B0D0A202020206261636B67726F756E642D636F6C6F723A20766172282D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(3) := '3B0D0A7D0D0A0D0A2F2A20736F6D652073697A652061646170746174696F6E73202A2F0D0A406D6564696120286D61782D77696474683A20363430707829207B0D0A20203A726F6F74207B0D0A202020202D2D75742D63722D646573632D666F6E742D73';
wwv_flow_imp.g_varchar2_table(4) := '697A653A20302E36373572656D3B0D0A202020202D2D75742D63722D646573632D6D617267696E2D793A203072656D3B0D0A202020202D2D75742D78732D63722D777261702D70616464696E672D793A20302E323572656D0D0A20207D0D0A7D0D0A0D0A';
wwv_flow_imp.g_varchar2_table(5) := '406D6564696120286D696E2D77696474683A20373638707829207B0D0A20203A726F6F74207B0D0A202020202D2D75742D63722D646573632D666F6E742D73697A653A20302E36373572656D3B0D0A202020202D2D75742D63722D646573632D6D617267';
wwv_flow_imp.g_varchar2_table(6) := '696E2D793A203072656D3B0D0A202020202D2D75742D78732D63722D777261702D70616464696E672D793A20696E68657269743B0D0A20207D0D0A7D0D0A0D0A406D6564696120286D696E2D77696474683A2031303234707829207B0D0A20203A726F6F';
wwv_flow_imp.g_varchar2_table(7) := '74207B0D0A202020202D2D75742D63722D646573632D666F6E742D73697A653A20302E36373572656D3B0D0A202020202D2D75742D63722D646573632D6D617267696E2D793A203072656D3B0D0A202020202D2D75742D78732D63722D777261702D7061';
wwv_flow_imp.g_varchar2_table(8) := '6464696E672D793A20696E68657269743B0D0A20207D0D0A7D0D0A0D0A406D6564696120286D696E2D77696474683A2031323030707829207B0D0A20203A726F6F74207B0D0A202020202D2D75742D63722D646573632D666F6E742D73697A653A20696E';
wwv_flow_imp.g_varchar2_table(9) := '68657269743B0D0A202020202D2D75742D63722D646573632D6D617267696E2D793A20696E68657269743B0D0A202020202D2D75742D78732D63722D777261702D70616464696E672D793A20696E68657269743B0D0A20207D0D0A7D0D0A0D0A0D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8433063256171658)
,p_file_name=>'css/GLOBAL.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
