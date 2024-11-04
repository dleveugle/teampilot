prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'Competitions'
,p_alias=>'COMPETITIONS'
,p_step_title=>'Competitions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9724339234903066)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/GLOBAL#MIN#.js',
'#APP_FILES#js/QuickMenu#MIN#.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#css/QuickMenu#MIN#.css',
'#APP_FILES#css/GLOBAL#MIN#.css'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10032941785353213)
,p_plug_name=>'QuickMenu'
,p_region_name=>'tpQuickMenu'
,p_region_css_classes=>'tp-quickMenu competitionDependancy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7995660469413505)
,p_plug_display_sequence=>70
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return pck_pages_40.get_quick_menu(:P0_USER_ID, :P0_CLUB_ID, :P0_SEASON_ID, :P40_COMPETITION_ID, :P40_TAB_ID);'
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P40_TAB_ID,P40_COMPETITION_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10594258942617634)
,p_plug_name=>'Competitions'
,p_title=>unistr('Comp\00E9titions')
,p_region_css_classes=>'competitionDependancy'
,p_icon_css_classes=>'fa-paste'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8027542339413492)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_ret varchar2(500);',
'begin',
'    select description into l_ret from tp_competitions where competition_id = :P40_COMPETITION_ID;',
'    return l_ret;',
'exception',
'    when others then return '''';',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P40_COMPETITION_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10594999686617641)
,p_plug_name=>'RegionDisplaySelector'
,p_region_name=>'tp-competitionRegionDisplaySelector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7994238345413505)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'Y',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10595402178617646)
,p_name=>'Teams'
,p_title=>'Equipes'
,p_region_name=>'tpCompetitionTeams'
,p_template=>wwv_flow_imp.id(8060820109413479)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'competitionDependancy'
,p_icon_css_classes=>'fa-users-alt'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--hideHeader:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-ContentRow--styleCompact:t-ContentRow--alignTop:t-ContentRow--hideSelection:t-ContentRow--hideIcon'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from pck_pages_40.get_teams_content_row_table(:P0_USER_ID, :P0_CLUB_ID, :P0_SEASON_ID, :P40_COMPETITION_ID);'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P40_COMPETITION_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8091650209413467)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792057736476524)
,p_query_column_id=>1
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>40
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10791770848476521)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#DESCRIPTION#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792153417476525)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>50
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792218697476526)
,p_query_column_id=>4
,p_column_alias=>'ICON_HTML'
,p_column_display_sequence=>60
,p_column_heading=>'Icon Html'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792357228476527)
,p_query_column_id=>5
,p_column_alias=>'ITEM_CLASSES'
,p_column_display_sequence=>70
,p_column_heading=>'Item Classes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792441392476528)
,p_query_column_id=>6
,p_column_alias=>'MISC'
,p_column_display_sequence=>80
,p_column_heading=>'Misc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792564055476529)
,p_query_column_id=>7
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>90
,p_column_heading=>'Selection'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10792600813476530)
,p_query_column_id=>8
,p_column_alias=>'TITLE'
,p_column_display_sequence=>100
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10793013253476534)
,p_name=>'Events'
,p_title=>unistr('Ev\00E8nements')
,p_region_name=>'tpCompetitionEvents'
,p_template=>wwv_flow_imp.id(8060820109413479)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'competitionDependancy'
,p_icon_css_classes=>'fa-calendar-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--hideHeader:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from pck_pages_40.get_events_content_row_table(:P0_USER_ID, :P0_CLUB_ID, :P0_SEASON_ID, :P40_COMPETITION_ID);'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P40_COMPETITION_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8091650209413467)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10793510389476539)
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
 p_id=>wwv_flow_imp.id(10793645598476540)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>20
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10793796396476541)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>30
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10793858613476542)
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
 p_id=>wwv_flow_imp.id(10793975739476543)
,p_query_column_id=>5
,p_column_alias=>'ITEM_CLASSES'
,p_column_display_sequence=>50
,p_column_heading=>'Item Classes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10794097613476544)
,p_query_column_id=>6
,p_column_alias=>'MISC'
,p_column_display_sequence=>60
,p_column_heading=>'Misc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10794133829476545)
,p_query_column_id=>7
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>70
,p_column_heading=>'Selection'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10794269226476546)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10866737694287311)
,p_name=>'Meetings'
,p_title=>'Rencontres'
,p_template=>wwv_flow_imp.id(8060820109413479)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'competitionDependancy'
,p_icon_css_classes=>'fa-calendar-user'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from pck_pages_40.get_meetings_content_row_table(:P0_USER_ID, :P0_CLUB_ID, :P0_SEASON_ID, :P40_COMPETITION_ID);'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8091650209413467)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10866871746287312)
,p_query_column_id=>1
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>10
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10866912885287313)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>20
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10867045849287314)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>30
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10867154942287315)
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
 p_id=>wwv_flow_imp.id(10867238660287316)
,p_query_column_id=>5
,p_column_alias=>'ITEM_CLASSES'
,p_column_display_sequence=>50
,p_column_heading=>'Item Classes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10867377137287317)
,p_query_column_id=>6
,p_column_alias=>'MISC'
,p_column_display_sequence=>60
,p_column_heading=>'Misc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10867433504287318)
,p_query_column_id=>7
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>70
,p_column_heading=>'Selection'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10867558212287319)
,p_query_column_id=>8
,p_column_alias=>'TITLE'
,p_column_display_sequence=>80
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10594331894617635)
,p_name=>'P40_COMPETITION_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10865828908287302)
,p_name=>'P40_TAB_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10792852874476532)
,p_name=>'onCompetitionChange'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_COMPETITION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10792987122476533)
,p_event_id=>wwv_flow_imp.id(10792852874476532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'RefreshAllDependancies'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.competitionDependancy'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10865989216287303)
,p_name=>'onTabChange'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_TAB_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10866164883287305)
,p_event_id=>wwv_flow_imp.id(10865989216287303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'RefreshQuickMenu'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let p = new Promise((resolve, reject)=>{ apex.region("tpQuickMenu").refresh();resolve();});',
'p.then(()=> {initQuickMenu();return;});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10866294174287306)
,p_name=>'onCompeitionDescriptionChange'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_COMPETITION_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10866366673287307)
,p_event_id=>wwv_flow_imp.id(10866294174287306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'RefreshTitle'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10594258942617634)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10866435225287308)
,p_name=>'onPageLoad'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10866540622287309)
,p_event_id=>wwv_flow_imp.id(10866435225287308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* register event on class apex-rds-selected added */',
'$("#tp-competitionRegionDisplaySelector .apex-rds-item").onClassChange(function(el, newClass){',
'    /* if tab is selected then update field P40_TAB_ID to calculate the quick menu */',
'    if (newClass.indexOf(''apex-rds-selected'') != -1) {',
'        $s("P40_TAB_ID", el.id)',
'    }',
'});',
'/* initialize quickmenu behaviours see quickmenu.js*/',
'initQuickMenu();',
'',
'/* if no tab selected then click on the teams one */',
'if ($v("P40_TAB_ID") == '''') {',
'    $s("P40_TAB_ID", ''tpCompetitionTeams_tab'');',
'    $("#tpCompetitionTeams_tab a").click();',
'}',
'',
'/* if no competition selected then show the blurred div to suggest choices */',
'/*if ($v("P40_COMPETITION_ID") == '''') {',
'    $("#tpQuickMenuBlurredDiv").addClass(''tp-blurredDialogVisible'');',
'}*/',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10867622037287320)
,p_name=>'onDialogClosed'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.competitionDependancy'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10867769107287321)
,p_event_id=>wwv_flow_imp.id(10867622037287320)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'RefreshTriggeringElement'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
);
wwv_flow_imp.component_end;
end;
/