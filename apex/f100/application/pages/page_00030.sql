prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>'Teams'
,p_alias=>'TEAMS'
,p_step_title=>'Teams'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9326547559122955)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/RoundButton#MIN#.js',
'#APP_FILES#js/GLOBAL#MIN#.js',
'#APP_FILES#js/Ajax#MIN#.js',
'#APP_FILES#js/PAGE_&APP_PAGE_ID.#MIN#.js'))
,p_css_file_urls=>'#APP_FILES#css/RoundButton#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8606268848824623)
,p_plug_name=>'TeamsCard'
,p_region_name=>'teamsCard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8001358783413502)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from pck_pages_30.get_teams_cards_table(:P0_USER_ID, :P0_SEASON_ID, :P0_CLUB_ID);'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(9346933319913608)
,p_region_id=>wwv_flow_imp.id(8606268848824623)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>true
,p_title_html_expr=>'&CARD_TITLE!RAW.'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_body_adv_formatting=>true
,p_body_html_expr=>'&CARD_TEXT!RAW.'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17028033489192561)
,p_plug_name=>'ButtonContainer'
,p_region_css_classes=>'menu-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17028201491192563)
,p_plug_name=>'MenuRound'
,p_parent_plug_id=>wwv_flow_imp.id(17028033489192561)
,p_region_css_classes=>'menu-round'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17028488252192566)
,p_plug_name=>'MenuLine'
,p_parent_plug_id=>wwv_flow_imp.id(17028033489192561)
,p_region_css_classes=>'menu-line'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8662273182530829)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17028033489192561)
,p_button_name=>'MainActionButton'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_image_alt=>'Mainactionbutton'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'menu-toggle u-hot'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8663620420530827)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17028201491192563)
,p_button_name=>'AddTeamRoundButton'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_image_alt=>unistr('Ajouter une \00E9quipe')
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::P31_CLUB_ID,P31_SEASON_ID:&P0_CLUB_ID.,&P0_SEASON_ID.'
,p_button_css_classes=>'btn-app u-hot need_card_refresh'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9347223502913611)
,p_name=>'OnCloseDialog'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent != "load" && (this.data.dialogPageId == "32" || this.data.dialogPageId == "31")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9347358618913612)
,p_event_id=>wwv_flow_imp.id(9347223502913611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8606268848824623)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9347423156913613)
,p_name=>'ClickOnTeamEllipsisMenu'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.tp-team-menu'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9347523703913614)
,p_event_id=>wwv_flow_imp.id(9347423156913613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'DisplayEllipsisMenu'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// display ellipsis menu',
'showTeamEllipsisMenu(this.triggeringElement);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9348288402913621)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetTeamEllipsisMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pck_pages_30.get_team_ellipsis_menu(',
'    p_user_id => apex_application.g_x01,',
'    p_team_id => apex_application.g_x02',
');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9348288402913621
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10032317119353207)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AjaxRouter'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_process varchar2(50) := upper(apex_application.g_x01);',
'begin',
'    case ',
'        when l_process = ''GETTEAMELLIPSISMENU'' then',
'            pck_pages_30.get_team_ellipsis_menu(',
'                p_user_id => apex_application.g_x02,',
'                p_team_id => apex_application.g_x03',
'            );',
'        when l_process = ''MOVETEAMPOSITION'' then ',
'            pck_pages_30.move_team_position(',
'                p_team_id => apex_application.g_x02,',
'                p_direction => apex_application.g_x03',
'            );',
'    end case;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10032317119353207
);
wwv_flow_imp.component_end;
end;
/
