prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8363428026661701)
,p_name=>'P0_CLUB_ID'
,p_item_sequence=>30
,p_item_display_point=>'REGION_POSITION_05'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8363595308661702)
,p_name=>'P0_SEASON_ID'
,p_item_sequence=>20
,p_item_display_point=>'REGION_POSITION_05'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8365703923661724)
,p_name=>'P0_USER_ID'
,p_item_sequence=>10
,p_item_display_point=>'REGION_POSITION_05'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10031835873353202)
,p_name=>'Nouveau'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_TP_ERROR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10031976014353203)
,p_event_id=>wwv_flow_imp.id(10031835873353202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//First clear the errors',
'    apex.message.clearErrors();',
' ',
'    // Now show new error',
'    apex.message.showErrors([',
'        {',
'            type:       "error",',
'            location:   [ "page" ],',
'            message:    $v(''P0_TP_ERROR''),',
'            unsafe:     false',
'        }]); '))
);
wwv_flow_imp.component_end;
end;
/
