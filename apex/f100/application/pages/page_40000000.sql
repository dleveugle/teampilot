prompt --application/pages/page_40000000
begin
--   Manifest
--     PAGE: 40000000
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
 p_id=>40000000
,p_name=>'Competitions'
,p_alias=>'COMPETITIONS1'
,p_step_title=>'Competitions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9724339234903066)
,p_javascript_file_urls=>'#APP_FILES#js/QuickMenu#MIN#.js'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#css/QuickMenu#MIN#.css',
'',
'#APP_FILES#css/GLOBAL#MIN#.css'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20105367101329409)
,p_plug_name=>'CompetitionAccordions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7994238345413505)
,p_plug_display_sequence=>10
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return pck_pages_40.get_competition_accordion_table(:P0_USER_ID, :P0_CLUB_ID, :P0_SEASON_ID);'
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20790569050769006)
,p_plug_name=>'QuickMenu'
,p_region_name=>'tpQuickMenu'
,p_region_css_classes=>'tp-quickMenu'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20790441291769005)
,p_plug_name=>'BlurredMenu'
,p_region_name=>'tpQuickMenuBlurredDiv'
,p_parent_plug_id=>wwv_flow_imp.id(20790569050769006)
,p_region_css_classes=>'tp-blurredDialog'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20791219965769012)
,p_plug_name=>'MenuItems'
,p_region_name=>'tpQuickMenuBlurredMenuItems'
,p_parent_plug_id=>wwv_flow_imp.id(20790441291769005)
,p_region_css_classes=>'tp-blurredMenu tp-quickMenuButtons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20792463226769025)
,p_plug_name=>'ViewClosedCompetitionsMenuItem'
,p_parent_plug_id=>wwv_flow_imp.id(20791219965769012)
,p_region_css_classes=>'tp-blurredMenuItem'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Voir les comp\00E9titions ferm\00E9es'),
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20792158588769022)
,p_plug_name=>'QuickMenuButtons'
,p_region_name=>'tpQuickMenuButtons'
,p_parent_plug_id=>wwv_flow_imp.id(20790569050769006)
,p_region_css_classes=>'tp-quickMenuButtons'
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
 p_id=>wwv_flow_imp.id(20791031090769011)
,p_plug_name=>'QuickMenuSeparator'
,p_region_name=>'tpQuickMenuSeparator'
,p_parent_plug_id=>wwv_flow_imp.id(20792158588769022)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'<span id="tpQuickMenuSeparator" class="tp-quickMenuSeparator"></span>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21351658558033425)
,p_plug_name=>'Competition calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(8060820109413479)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'TABLE'
,p_query_table=>'TP_EVENTS'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'OPPONENT',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'DATE')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21351886208033427)
,p_plug_name=>'Competitions'
,p_title=>unistr('Comp\00E9titions')
,p_icon_css_classes=>'fa-paste'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8027542339413492)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31547922880468578)
,p_plug_name=>'Competition region display selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7994238345413505)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return pck_pages_40.get_competition_region_display_selector(:P0_USER_ID, :P0_CLUB_ID, :P0_SEASON_ID);'
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10762295338415779)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20792463226769025)
,p_button_name=>'ViewClosedCompetitions'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_image_alt=>unistr('Voir les comp\00E9titions termin\00E9es')
,p_button_css_classes=>'tp-blurredMenuItemButton'
,p_icon_css_classes=>'fa-eye'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10763083169415778)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20792158588769022)
,p_button_name=>'AddNewCompetition'
,p_button_static_id=>'tpQuickMenuLeftButton'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(8134576038413448)
,p_button_image_alt=>unistr('Nouvelle comp\00E9tition')
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::P41_CLUB_ID,P41_SEASON_ID:&P0_CLUB_ID.,&P0_SEASON_ID.'
,p_button_css_classes=>'u-hot tp-quickMenuLeftIcon'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10763428647415777)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20792158588769022)
,p_button_name=>'QuickRightButton'
,p_button_static_id=>'tpQuickMenuRightButton'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(8133748852413449)
,p_button_image_alt=>'Quickrightbutton'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-hot tp-quickMenuRightIcon'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10760685762415780)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20791219965769012)
,p_button_name=>'Nouveau_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(8134576038413448)
,p_button_image_alt=>'Nouveau 1'
,p_button_css_classes=>'tp-blurredMenuItemButton'
,p_icon_css_classes=>'fa-assistive-listening-systems fa-2x'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10761024108415780)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(20791219965769012)
,p_button_name=>'Nouveau'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_image_alt=>'Nouveau'
,p_button_css_classes=>'tp-blurredMenuItemButton'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10761474441415779)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(20791219965769012)
,p_button_name=>'Nouveau_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8134460186413448)
,p_button_image_alt=>'Nouveau 2'
,p_button_css_classes=>'tp-blurredMenuItemButton'
);
wwv_flow_imp.component_end;
end;
/
