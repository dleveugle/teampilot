prompt --application/pages/page_8888888
begin
--   Manifest
--     PAGE: 8888888
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_page.create_page(
 p_id=>8888888
,p_name=>'TEST'
,p_alias=>'TEST'
,p_page_mode=>'MODAL'
,p_step_title=>'TEST'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(7978992095413512)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_attributes=>'opacity: 0.5'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp.component_end;
end;
/
