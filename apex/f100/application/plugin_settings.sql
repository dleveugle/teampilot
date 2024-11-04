prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7950235266428880
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'TP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7953086990413523)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7953383545413523)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7953680884413523)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7953969157413523)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7954252104413522)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7954540083413522)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7954835841413522)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7955129275413522)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7955409384413522)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7955701666413522)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7956090986413522)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>39327579189497
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7956353266413521)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>39327579189501
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7956612538413521)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>39327579189501
);
wwv_flow_imp.component_end;
end;
/
