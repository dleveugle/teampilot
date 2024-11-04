prompt --application/shared_components/logic/application_processes/ajaxgeturl
begin
--   Manifest
--     APPLICATION PROCESS: AJAXGETURL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(8494889022618711)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAXGETURL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(pck_pages.get_url(',
'    p_page => apex_application.g_x01,',
'    p_items => apex_application.g_x02,',
'    p_values => apex_application.g_x03,',
'    p_triggering_element => apex_application.g_x04',
'));'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>39327690086237
);
wwv_flow_imp.component_end;
end;
/
