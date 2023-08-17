prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>52295780804153474530
,p_default_application_id=>261234
,p_default_id_offset=>52297604580050752662
,p_default_owner=>'WKSP_APEXDEVELOPERCOM'
);
end;
/
 
prompt APPLICATION 261234 - Template Component - Simple Menu Popup
--
-- Application Export:
--   Application:     261234
--   Name:            Template Component - Simple Menu Popup
--   Date and Time:   15:52 Thursday August 17, 2023
--   Exported By:     hans@dampf.abc
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 101281882890582043490
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_apex_developer_simple_menu_popup
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(101281882890582043490)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.APEX-DEVELOPER.SIMPLE.MENU.POPUP'
,p_display_name=>'Simple Menu Popup'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    {if APEX$HAS_ACTION_BUTTONS/}',
'    #ACTION#',
'    {endif/}',
'</div>',
'',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/domi089/apex-simple-menu-popup-tc'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(101285393491250838634)
,p_plugin_id=>wwv_flow_imp.id(101281882890582043490)
,p_name=>'Menu Popup'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL!RAW#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(101287717347399099079)
,p_plugin_id=>wwv_flow_imp.id(101281882890582043490)
,p_name=>'Menu'
,p_static_id=>'ACTION'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(101285393491250838634)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
