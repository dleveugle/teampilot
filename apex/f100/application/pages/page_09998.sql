prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_name=>'Ask for access Page'
,p_alias=>'ASK-FOR-ACCESS-PAGE'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Demander un acc\00E8s')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8394546595825896)
,p_step_template=>wwv_flow_imp.id(7978992095413512)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8364418827661711)
,p_button_sequence=>40
,p_button_name=>'btnSendEmail'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Envoyer'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8364129806661708)
,p_name=>'P9998_EMAIL'
,p_item_sequence=>30
,p_prompt=>'Votre email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8365219579661719)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SendUserAccessRequest'
,p_process_sql_clob=>'pck_users.send_user_access_request(:P9998_EMAIL);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Votre demande d''acc\00E8s a \00E9t\00E9 envoy\00E9e \00E0 l''administrateur. Vous recevrez une copie de l''email qui lui a \00E9t\00E9 envoy\00E9.')
,p_internal_uid=>8365219579661719
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8365308301661720)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CloseDialogBox'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8365308301661720
);
wwv_flow_imp.component_end;
end;
/
