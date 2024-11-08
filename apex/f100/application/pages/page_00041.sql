prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'Competition form'
,p_alias=>'COMPETITION-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Competition form'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9724339234903066)
,p_step_template=>wwv_flow_imp.id(7958315663413520)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9727959130881449)
,p_plug_name=>'Competition form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7994238345413505)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TP_COMPETITIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9730969736881437)
,p_plug_name=>'Boutons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7997045854413504)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9731356481881436)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9730969736881437)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_image_alt=>'Annuler'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9732792777881433)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9730969736881437)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_image_alt=>'Supprimer'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P41_COMPETITION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9733139078881433)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9730969736881437)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Appliquer les modifications'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P41_COMPETITION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9733534866881433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9730969736881437)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Cr\00E9er')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P41_COMPETITION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9728202731881448)
,p_name=>'P41_COMPETITION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_item_source_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Competition Id'
,p_source=>'COMPETITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9728639454881442)
,p_name=>'P41_LABEL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_item_source_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_prompt=>'Description courte'
,p_source=>'LABEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(8133202851413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9728944292881440)
,p_name=>'P41_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_item_source_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9729338547881440)
,p_name=>'P41_SEASON_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_item_source_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_prompt=>'Saison'
,p_source=>'SEASON_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TP_SEASONS.LABEL'
,p_cHeight=>1
,p_tag_attributes=>'disabled="disabled"'
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10032468030353208)
,p_name=>'P41_CLUB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_item_source_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_prompt=>'Club'
,p_source=>'CLUB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TP_CLUBS.LABEL'
,p_cHeight=>1
,p_tag_attributes=>'disabled="disabled"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10032561454353209)
,p_name=>'P41_ORDERNUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_item_source_plug_id=>wwv_flow_imp.id(9727959130881449)
,p_prompt=>'Ordernum'
,p_source=>'ORDERNUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9731482760881436)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9731356481881436)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9732202762881434)
,p_event_id=>wwv_flow_imp.id(9731482760881436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9347868897913617)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'ExecutionChain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9347868897913617
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9734791257881431)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CloseDialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9734791257881431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9733954329881432)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9727959130881449)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialiser le panneau Competition form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9733954329881432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9348183597913620)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(9347868897913617)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P41_SEASON_ID := :P0_SEASON_ID;',
':P41_CLUB_ID := :P0_CLUB_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9348183597913620
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9734304839881431)
,p_process_sequence=>20
,p_region_id=>wwv_flow_imp.id(9727959130881449)
,p_parent_process_id=>wwv_flow_imp.id(9347868897913617)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'ProcessCompetitionForm'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_internal_uid=>9734304839881431
);
wwv_flow_imp.component_end;
end;
/
