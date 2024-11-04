prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Team composition'
,p_alias=>'TEAM-COMPOSITION'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Composition d\005C''\00E9quipe : &P32_TEAM_LABEL.')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9326547559122955)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/PAGE_&APP_PAGE_ID.#MIN#.js',
'#APP_FILES#js/Ajax#MIN#.js'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-ContentRow-body {',
'        align-items:center;',
'        flex-direction: row;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9348393975913622)
,p_plug_name=>'AvailablePlayers'
,p_title=>'Joueurs disponibles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7994238345413505)
,p_plug_display_sequence=>10
,p_location=>null
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9348491464913623)
,p_name=>'TeamPlayers'
,p_title=>unistr('Joueurs de l''\00E9quipe')
,p_region_name=>'teamPlayers'
,p_template=>wwv_flow_imp.id(8051034579413483)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from pck_pages_32.get_team_player_table(:P32_TEAM_ID);',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8091650209413467)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803225185763039)
,p_query_column_id=>1
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>10
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803334814763040)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>20
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803471692763041)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>30
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803566790763042)
,p_query_column_id=>4
,p_column_alias=>'ICON_HTML'
,p_column_display_sequence=>40
,p_column_heading=>'Icon Html'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803603509763043)
,p_query_column_id=>5
,p_column_alias=>'ITEM_CLASSES'
,p_column_display_sequence=>50
,p_column_heading=>'Item Classes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803733270763044)
,p_query_column_id=>6
,p_column_alias=>'MISC'
,p_column_display_sequence=>60
,p_column_heading=>'Misc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803838775763045)
,p_query_column_id=>7
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>70
,p_column_heading=>'Selection'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9803905252763046)
,p_query_column_id=>8
,p_column_alias=>'TITLE'
,p_column_display_sequence=>80
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9350260801913641)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8060820109413479)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9350316165913642)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9350260801913641)
,p_button_name=>'CloseDialogBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fermer'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9349428190913633)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9348393975913622)
,p_button_name=>'AffectBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(8134576038413448)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Affecter'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'tp-refresh-team-players'
,p_icon_css_classes=>'fa-user-arrow-down'
,p_button_cattributes=>'style="width:100%;margin-bottom:1rem"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9349283659913631)
,p_name=>'P32_AVAILABLEPLAYERS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9348393975913622)
,p_prompt=>'Joueurs disponibles'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select * from pck_pages_32.get_player_available_for_team(:P32_TEAM_ID);'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9349333218913632)
,p_name=>'P32_TEAMROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9348393975913622)
,p_prompt=>unistr('R\00F4le dans l''\00E9quipe')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TEAM_ROLES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(8131957991413449)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9350149782913640)
,p_name=>'P32_TEAM_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9804251313763049)
,p_name=>'P32_TEAM_LABEL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(9804327336763050)
,p_computation_sequence=>10
,p_computation_item=>'P32_TEAM_LABEL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select label from tp_teams where team_id = :P32_TEAM_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9350472334913643)
,p_name=>'ClickCloseButton'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9350316165913642)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9351139958913650)
,p_event_id=>wwv_flow_imp.id(9350472334913643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'SaveTeamComposition'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'pck_pages_32.save_team_collection(:P32_TEAM_ID);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9350575861913644)
,p_event_id=>wwv_flow_imp.id(9350472334913643)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'CloseDialog'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9350828719913647)
,p_name=>'ClickAffectBtn'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9349428190913633)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9350908378913648)
,p_event_id=>wwv_flow_imp.id(9350828719913647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'AddPlayerToTeam'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'addPlayerToTeamCollection(',
'    $v(''P32_TEAM_ID''),',
'    $v(''P32_AVAILABLEPLAYERS''),',
'    $v(''P32_TEAMROLE''));'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9801977538763026)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Nouveau'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pck_pages_32.create_team_collection(:P32_TEAM_ID);',
'pck_pages_32.load_team_collection(:P32_TEAM_ID);'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9801977538763026
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10032229467353206)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AjaxRouter'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_process varchar2(50) := upper(apex_application.g_x01);',
'begin',
'    case ',
'        when l_process = ''ADDPLAYERTOTEAMCOLLECTION'' then ',
'            pck_pages_32.add_player_to_team_collection(',
'                p_team_id => apex_application.g_x02,',
'                p_player_id => apex_application.g_x03,',
'                p_role_code => apex_application.g_x04',
'            );',
'        when l_process = ''REMOVEPLAYERFROMTEAMCOLLECTION'' then',
'            pck_pages_32.remove_player_from_team_collection(',
'                p_team_id => apex_application.g_x02,',
'                p_seq_id => apex_application.g_x03',
'            );',
'    end case;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10032229467353206
);
wwv_flow_imp.component_end;
end;
/
