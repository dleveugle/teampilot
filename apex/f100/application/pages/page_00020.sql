prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'Players'
,p_alias=>'PLAYERS-PAGE'
,p_step_title=>'[TP] Joueurs'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8427287182258872)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/GLOBAL#MIN#.js',
'#APP_FILES#js/RoundButton#MIN#.js',
'#APP_FILES#js/PAGE_&APP_PAGE_ID.#MIN#.js'))
,p_css_file_urls=>'#APP_FILES#css/RoundButton#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8365879750661725)
,p_plug_name=>'PlayersCards'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8001358783413502)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from pck_pages_20.get_players_cards_table(:P0_USER_ID, :P0_SEASON_ID, :P0_CLUB_ID, :P20_FILTER_LETTER, :P20_FILTER_TEAM_ID);'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P20_FILTER_LETTER,P20_FILTER_TEAM_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8365943189661726)
,p_region_id=>wwv_flow_imp.id(8365879750661725)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_SUBTEXT'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CARD_INITIALS'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8366059090661727)
,p_plug_name=>'ButtonContainer'
,p_region_css_classes=>'menu-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8366227092661729)
,p_plug_name=>'MenuRound'
,p_parent_plug_id=>wwv_flow_imp.id(8366059090661727)
,p_region_css_classes=>'menu-round'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8366513853661732)
,p_plug_name=>'MenuLine'
,p_parent_plug_id=>wwv_flow_imp.id(8366059090661727)
,p_region_css_classes=>'menu-line'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8366159785661728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8366059090661727)
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
 p_id=>wwv_flow_imp.id(8366329936661730)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8366227092661729)
,p_button_name=>'AddPlayerRoundButton'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_image_alt=>'Ajouter un joueur'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btn-app u-hot need_card_refresh'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8366612126661733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8366513853661732)
,p_button_name=>'Nouveau'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nouveau'
,p_button_css_classes=>'btn-app u-color-34'
,p_icon_css_classes=>'fa-sm fa-universal-access'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8366461736661731)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8366227092661729)
,p_button_name=>'FilterRoundButton'
,p_button_static_id=>'filter_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_image_alt=>'Filtrer'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn-app u-hot'
,p_icon_css_classes=>'fa-filter'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8366765537661734)
,p_name=>'P20_FILTER_LETTER'
,p_item_sequence=>40
,p_item_display_point=>'REGION_POSITION_05'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8366820688661735)
,p_name=>'P20_FILTER_TEAM_ID'
,p_item_sequence=>50
,p_item_display_point=>'REGION_POSITION_05'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8367102315661738)
,p_name=>'NewPlayerDialogClosed'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.need_card_refresh'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8367261817661739)
,p_event_id=>wwv_flow_imp.id(8367102315661738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'RefreshCards'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8365879750661725)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8367594427661742)
,p_name=>'FilterButtonClick'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8366461736661731)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8367618089661743)
,p_event_id=>wwv_flow_imp.id(8367594427661742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'GetFilterUrl'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8366461736661731)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let p = get_Promise_Url(22, ''P22_LETTER'', $v(''P20_FILTER_LETTER''), ''$(\''#filter_button\'')'');',
'',
'p',
'.then(function(data){',
'    // close round menu',
'    toggleMenus();',
'    // go to url returned',
'    window.location.href = data;',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8605168031824612)
,p_name=>'FilterDialogClosed'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#filter_button'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8605239083824613)
,p_event_id=>wwv_flow_imp.id(8605168031824612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'GetDataFromDialog'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(JSON.stringify(this.data));',
'//alert(this.data.P22_LETTER);',
'$s(''P20_FILTER_LETTER'', this.data.P22_LETTER);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8605367328824614)
,p_name=>'FilterChanged'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_FILTER_LETTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8605481926824615)
,p_event_id=>wwv_flow_imp.id(8605367328824614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'RefreshCards'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8365879750661725)
);
wwv_flow_imp.component_end;
end;
/