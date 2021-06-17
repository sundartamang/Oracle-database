set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.31'
,p_default_workspace_id=>1714061653253694
,p_default_application_id=>100
,p_default_owner=>'CAMBE10'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 100 - DW_TUTORIAL
--
-- Application Export:
--   Application:     100
--   Name:            DW_TUTORIAL
--   Date and Time:   10:08 Thursday November 24, 2016
--   Exported By:     CAMBE10
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.31
--   Instance ID:     69430500808074
--

-- Application Statistics:
--   Pages:                      3
--     Items:                    5
--     Processes:                9
--     Regions:                  7
--     Buttons:                  5
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              22
--         Label:                5
--         List:                17
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               4
--         Report:               7
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,100)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CAMBE10')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'DW_TUTORIAL')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F109')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20161124100643'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>28800
,p_html_escaping_mode=>'B'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'0'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(21594052603160342)
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1'
,p_application_tab_set=>1
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'CAMBE10'
,p_last_upd_yyyymmddhh24miss=>'20161124100643'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
null;
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19268265507984184)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19268329362984184)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19268459535984184)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(21594349377160347)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'CURRENT_LOOK_IS_1'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21596267271160765)
,p_name=>'FSP_AFTER_LOGIN_URL'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(21595759494160447)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_PAGE_1'
,p_tab_text=>'Page 1'
,p_tab_step=>1
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(21595448860160417)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21586669051160209)
,p_theme_id=>7
,p_name=>'Login'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="center" colspan="3"><br/><br/><br/><br/></td>',
'  </tr>',
'  <tr>',
'    <td align="center" colspan="3">#SUCCESS_MESSAGE# #NOTIFICATION_MESSAGE#</td>',
'  </tr>',
'  <tr>',
'    <td valign="top" align="center" colspan="3">',
'      <table summary=""><tr>',
'        <td valign="top" align="center">#BODY#<br /></td>',
'      </tr></table>',
'    </td>',
'  </tr>',
'</table>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_region_table_cattributes=>'width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21586745519160223)
,p_theme_id=>7
,p_name=>'No Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">#LOGO##REGION_POSITION_06#</td>',
'    <td align="center" valign="top" width="100%">#REGION_POSITION_07#</td>',
'    <td align="right" class="t7NavBar" valign="top"><a>[&USER.]</a>&nbsp;#NAVIGATION_BAR#&nbsp;#REGION_POSITION_08#</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td class="t7TopbarMiddle" valign="top" align="center">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td valign="top" align="center">',
'    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'      <td valign="top" align="center"><table border="0" summary="">',
'        <tr>',
'          <td width="180" valign="top" align="left">&nbsp;</td>',
'          <td width="100%" valign="top" align="center">#REGION_POSITION_01#</td>',
'          <td width="180" valign="top" align="right"><span class="t7customize">#CUSTOMIZE#</span>&nbsp;</td>',
'        </tr>',
'        <tr>',
'          <td colspan="3" valign="top" align="center">',
'            #SUCCESS_MESSAGE# #NOTIFICATION_MESSAGE#',
'          </td>',
'        </tr>',
'        <tr>',
'          <td colspan="3" valign="top" align="center"><table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'<td width="100%" valign="top" align="center">#BODY##REGION_POSITION_04#<br /></td>',
'<td width="180" valign="top" align="right">#REGION_POSITION_03#</td>',
'      </tr></table></td>',
'        </tr>',
'      </table></td>',
'    </tr></table>',
'  </tr>',
'</table>',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" summary="">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">[#TEXT#]</a>&nbsp;'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>'))
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21586866095160224)
,p_theme_id=>7
,p_name=>'No Tabs with Side Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">#LOGO##REGION_POSITION_06#</td>',
'    <td align="center" valign="top" width="100%">#REGION_POSITION_07#</td>',
'    <td align="right" class="t7NavBar" valign="top"><a>[&USER.]</a>&nbsp;#NAVIGATION_BAR#&nbsp;#REGION_POSITION_08#</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td class="t7TopbarMiddle" valign="top" align="center">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td valign="top" align="center">',
'    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'      <td width="160" valign="top" align="center" class="t7SideBarNav">',
'        #REGION_POSITION_02#',
'      </td>',
'      <td valign="top" align="center"><table border="0" summary="">',
'        <tr>',
'          <td width="180" valign="top" align="left">&nbsp;</td>',
'          <td width="100%" valign="top" align="center">#REGION_POSITION_01#</td>',
'          <td width="180" valign="top" align="right"><span class="t7customize">#CUSTOMIZE#</span>&nbsp;</td>',
'        </tr>',
'        <tr>',
'          <td colspan="3" valign="top" align="center">',
'            #SUCCESS_MESSAGE# #NOTIFICATION_MESSAGE#',
'          </td>',
'        </tr>',
'<tr><td colspan="3" valign="top" align="center"><table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'<td width="100%" valign="top" align="center">#BODY##REGION_POSITION_04#<br /></td>',
'<td width="180" valign="top" align="right">#REGION_POSITION_03#</td>',
'</tr></table></td>',
'        </tr>',
'      </table></td>',
'    </tr></table>',
'  </tr>',
'</table>',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" summary="">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">[#TEXT#]</a>&nbsp;'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21586959515160224)
,p_theme_id=>7
,p_name=>'One Level Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">#LOGO##REGION_POSITION_06#</td>',
'    <td align="center" valign="top" width="100%">#REGION_POSITION_07#</td>',
'    <td align="right" class="t7NavBar" valign="top"><a>[&USER.]</a>&nbsp;#NAVIGATION_BAR#&nbsp;#REGION_POSITION_08#</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td width="5%" align="center" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'    <td width="90%" align="left" class="t7TopbarMiddleTop" valign="bottom">',
'      <table border="0" cellpadding="0" cellspacing="0" align="center" summary="">',
'        <tr>#TAB_CELLS#</tr>',
'      </table>',
'    </td>',
'    <td width="5%" align="left" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td colspan="3" class="t7TopbarMiddle" valign="top" align="right">#CUSTOMIZE#&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td colspan="3" valign="top" align="center">#REGION_POSITION_01#</td>',
'  </tr>',
'  <tr>',
'    <td align="center" colspan="3">#SUCCESS_MESSAGE# #NOTIFICATION_MESSAGE#</td>',
'  </tr>',
'  <tr>',
'<td valign="top" align="center" colspan="3">',
'<table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'<td width="100%" valign="top" align="center">#BODY##REGION_POSITION_02##REGION_POSITION_04#<br /></td>',
'<td width="180" valign="top" align="right">#REGION_POSITION_03#</td>',
'</tr></table>',
'    </td>',
'  </tr>',
'</table>',
'',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" summary="">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_right.png" border="0" alt="" /></td>',
'',
''))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOff"><a href="#TAB_LINK#" style="text-decoration: none;">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_right.png" border="0" alt="" /></td>',
''))
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">[#TEXT#]</a>&nbsp;'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'12'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21587058461160228)
,p_theme_id=>7
,p_name=>'One Level Tabs with Side Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">#LOGO##REGION_POSITION_06#</td>',
'    <td align="center" valign="top" width="100%">#REGION_POSITION_07#</td>',
'    <td align="right" class="t7NavBar" valign="top"><a>[&USER.]</a>&nbsp;#NAVIGATION_BAR#&nbsp;#REGION_POSITION_08#</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="center" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'    <td width="90%" align="left" class="t7TopbarMiddleTop" valign="bottom">',
'      <table border="0" cellpadding="0" cellspacing="0" align="center" summary="">',
'        <tr>#TAB_CELLS#</tr>',
'      </table>',
'    </td>',
'    <td align="left" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td class="t7TopbarMiddle" valign="top" colspan="3">#CUSTOMIZE#&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td valign="top" align="center" colspan="3">',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'<td width="180" valign="top" align="center" class="t7SideBarNav">#REGION_POSITION_02#</td>',
'      <td valign="top" align="center" width="100%"><table width="100%" summary="">',
'        <tr>',
'          <td valign="top" align="center">#REGION_POSITION_01#</td>',
'        </tr>',
'        <tr>',
'          <td valign="top" align="center">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</td>',
'        </tr>',
'        <tr>',
'          <td valign="top" align="center">',
'      <table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'        <td width="100%" valign="top" align="center">#BODY##REGION_POSITION_04#<br /></td><td width="180" valign="top" align="right">#REGION_POSITION_03#</td>',
'      </tr></table>',
'          </td>',
'        </tr>',
'      </table></td>',
'    </tr></table>',
'  </tr>',
'</table>',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" summary="">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_right.png" border="0" alt="" /></td>',
'',
''))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOff"><a href="#TAB_LINK#" style="text-decoration: none;">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_right.png" border="0" alt="" /></td>',
''))
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">[#TEXT#]</a>&nbsp;'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21587172172160228)
,p_theme_id=>7
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">&nbsp;</td>',
'    <td align="center" valign="top">&nbsp;</td>',
'    <td align="right" class="t7NavBar" valign="top">&nbsp;</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td colspan="3" valign="top" align="center">#REGION_POSITION_01#</td>',
'  </tr>',
'  <tr>',
'    <td align="center" colspan="3">#SUCCESS_MESSAGE# #NOTIFICATION_MESSAGE#</td>',
'  </tr>',
'  <tr>',
'    <td valign="top" align="center" colspan="3">',
'      <table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'        <td valign="top" align="center">#BODY#<br /></td>',
'      </tr></table>',
'    </td>',
'  </tr>',
'</table>',
'',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21587268495160228)
,p_theme_id=>7
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" summary="">',
'<tr>',
'<td valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#REGION_POSITION_08#</td>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" summary="">',
'<tr>',
'<td width="100%" valign="top">',
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'#REGION_POSITION_05#',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0">',
'<tr><td>&nbsp;&nbsp;</td>',
'#BAR_BODY#',
'</tr>',
'</table>'))
,p_region_table_cattributes=>'width="100%" summary=""'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21587350588160228)
,p_theme_id=>7
,p_name=>'Two Level Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">#LOGO##REGION_POSITION_06#</td>',
'    <td align="center" valign="top" width="100%">#REGION_POSITION_07#</td>',
'    <td align="right" class="t7NavBar" valign="top"><a>[&USER.]</a>&nbsp;#NAVIGATION_BAR#&nbsp;#REGION_POSITION_08#</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td width="5%" align="center" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'    <td width="90%" align="left" class="t7TopbarMiddleTop" valign="bottom">',
'      <table border="0" cellpadding="0" cellspacing="0" align="center" summary="">',
'        <tr>#PARENT_TAB_CELLS#</tr>',
'      </table>',
'    </td>',
'    <td width="5%" align="left" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td class="t7TopbarMiddleWTab" valign="top">&nbsp;</td>',
'    <td class="t7TopbarMiddleWTab" valign="top">',
'    <table border="0" cellpadding="0" cellspacing="0" align="center" summary="">',
'       <tr>#TAB_CELLS#',
'    </tr></table>',
'    </td>',
'    <td class="t7TopbarMiddleWTab" valign="top" align="right"><span class="t7customize">#CUSTOMIZE#</span>&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td colspan="3" valign="top" align="center">',
'    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'      <td valign="top" align="center"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'        <tr>',
'          <td width="100%" valign="top" align="center">#REGION_POSITION_01#&nbsp;</td>',
'        </tr>',
'        <tr>',
'          <td valign="top" align="center">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</td>',
'        </tr>',
'        <tr>',
'          <td valign="top" align="center"><table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'<td width="100%" valign="top" align="center">#BODY##REGION_POSITION_04#<br /></td>',
'<td width="180" valign="top" align="right">#REGION_POSITION_03#</td>',
'</tr></table></td>',
'        </tr>',
'      </table></td>',
'    </tr></table>',
'  </tr>',
'',
'</table>',
'',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" summary="">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<td><span class="t7standardtabcurrent">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'
,p_non_current_tab=>'<td><a href="#TAB_LINK#" class="t7standardtab">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_right.png" border="0" alt="" /></td>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOff"><a href="#TAB_LINK#" style="text-decoration: none;">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_right.png" border="0" alt="" /></td>',
''))
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">[#TEXT#]</a>&nbsp;'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>'))
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(21587444475160229)
,p_theme_id=>7
,p_name=>'Two Level Tabs with Side Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_3_1.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="left" valign="top">#LOGO##REGION_POSITION_06#</td>',
'    <td align="center" valign="top" width="100%">#REGION_POSITION_07#</td>',
'    <td align="right" class="t7NavBar" valign="top"><a>[&USER.]</a>&nbsp;#NAVIGATION_BAR#&nbsp;#REGION_POSITION_08#</td>',
'  </tr>',
'</table>',
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td width="5%" align="center" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'    <td width="90%" align="left" class="t7TopbarMiddleTop" valign="bottom">',
'      <table border="0" cellpadding="0" cellspacing="0" align="center" summary="">',
'        <tr>#PARENT_TAB_CELLS#</tr>',
'      </table>',
'    </td>',
'    <td width="5%" align="left" class="t7TopbarMiddleTop" valign="bottom">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td class="t7TopbarMiddleWTab" valign="top">&nbsp;</td>',
'    <td class="t7TopbarMiddleWTab" valign="top">',
'    <table border="0" cellpadding="0" cellspacing="0" align="center" summary="">',
'       <tr>#TAB_CELLS#',
'    </tr></table>',
'    </td>',
'    <td class="t7TopbarMiddleWTab" valign="top" align="right"><span class="t7customize">#CUSTOMIZE#</span>&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td colspan="3" valign="top" align="center">',
'    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'      <td width="180" valign="top" align="center" class="t7SideBarNav">',
'        #REGION_POSITION_02#',
'      </td>',
'      <td valign="top" align="center"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'        <tr>',
'          <td width="100%" valign="top" align="center">#REGION_POSITION_01#&nbsp;</td>',
'        </tr>',
'        <tr>',
'          <td valign="top" align="center">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</td>',
'        </tr>',
'        <tr>',
'          <td valign="top" align="center"><table cellpadding="4" cellspacing="4" border="0" summary=""><tr>',
'<td width="100%" valign="top" align="center">#BODY##REGION_POSITION_04#<br /></td>',
'<td width="180" valign="top" align="right">#REGION_POSITION_03#</td>',
'            </tr></table></td>',
'        </tr>',
'      </table></td>',
'    </tr></table>',
'  </tr>',
'',
'</table>',
'',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" summary="">',
'  <tr>',
'    <td class="t7BotbarMiddle" align="center" valign="bottom">&nbsp;</td>',
'  </tr>',
'</table>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t7success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<td><span class="t7standardtabcurrent">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><a href="#TAB_LINK#" class="t7standardtab">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
'',
''))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_on_right.png" border="0" alt="" /></td>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_left.png" border="0" alt="" /></td>',
'<td class="t7TabcenterOff"><a href="#TAB_LINK#" style="text-decoration: none;">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_7/tab_off_right.png" border="0" alt="" /></td>',
''))
,p_notification_message=>'<div class="t7notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">[#TEXT#]</a>&nbsp;'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(21587546334160229)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7button" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button_left.png" alt="" /></a></td>',
'<td class="CEEEEEE"><a href="#LINK#">#LABEL#</a></td>',
'<td class="R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button_right.png" alt="" /></a></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>7
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(21587666929160233)
,p_template_name=>'Button, Alternative 1'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7button4" cellspacing="0" cellpadding="0" border="0"  summary=""><tr>',
'<td class="L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button4_left.png" alt="" /></a></td>',
'<td class="C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button4_right.png" alt="" /></a></td>',
'</tr></table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>7
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(21587771438160234)
,p_template_name=>'Button, Alternative 2'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7button5" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button5_left.png" alt="" /></a></td>',
'<td class="C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button5_right.png" alt="" /></a></td>',
'</tr></table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>7
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(21587853851160234)
,p_template_name=>'Button, Alternative 3'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7button2" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr><td class="L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button3_left.png" alt="" /></a></td>',
'<td class="blue" valign="middle"><a href="#LINK#">#LABEL#</a></td>',
'<td class="R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/button3_right.png" alt="" /></a></td>',
'</tr></table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21587971727160234)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCBorderless" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="left" class="t7Header" nowrap="nowrap">#TITLE#&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="left">#BODY#</td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Borderless Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>7
,p_theme_class_id=>7
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588061174160239)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCBracketed"  cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="left" colspan="2">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot">&nbsp;</td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>18
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588144682160240)
,p_layout=>'TABLE'
,p_template=>'<div class="t7breadcrumbcontainer" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>7
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588259531160240)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/but_region_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/but_region_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>7
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588347668160240)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/but_region_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/but_region_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588459028160240)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle2" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td colspan="2"><table summary=""><tr>',
'    <td align="left" valign="middle"><img src="#IMAGE_PREFIX#themes/theme_7/icon_charts.gif" width="80" height="95" border="0" alt="" /></td>',
'    <td align="left" valign="middle">#BODY#</td>',
'    </tr></table></td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot">&nbsp;</td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588567002160240)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle2" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center" colspan="2">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot"><img src="#IMAGE_PREFIX#themes/theme_7/space.gif" width="480" height="1" alt="" /></td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588652492160240)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCFormItemContent" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="left" colspan="2">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right" valign="top"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot"><img src="#IMAGE_PREFIX#themes/theme_7/space.gif" width="480" height="1" alt="" /></td>    ',
'    <td align="left" valign="top"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>7
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588763211160241)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t7GCCShowHide" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><div class="t7Header"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#htmldb/builder/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#htm'
||'ldb/builder/rollup_minus_dgray.gif'');" class="htmldbHideShowMinLink"><img src="#IMAGE_PREFIX#htmldb/builder/rollup_plus_dgray.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a>#TITLE#</div>',
'<div class="t7Hide" id="region#REGION_SEQUENCE_ID#">',
'  <div class="t7Body">',
'<table class="t7GCCReportsStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="htmldb#REGION_SEQUENCE_ID#">',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_left.png" border="0" alt="" /></td>',
'    <td align="right"  class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>  ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right" border="0" alt="" /></td>',
'  </tr>',
'</table>  ',
'  </div>',
'</div></div>',
'',
''))
,p_page_plug_template_name=>'Hide and Show Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>1
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588861792160242)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>7
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21588943254160242)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>7
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589066554160242)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCNoButtonsNoTitle" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/button_region_top_left.png" border="0" alt="" /></td>',
'    <td align="right"  class="buttonRegionTop">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/button_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Region without Buttons and Title'
,p_theme_id=>7
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589167637160242)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCNoTitle" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/button_region_top_left.png" border="0" alt="" /></td>',
'    <td align="right"  class="buttonRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/button_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>7
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589267740160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>7
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589344350160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle2" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td colspan="2"><table><tr>',
'    <td align="left" valign="middle"><img src="#IMAGE_PREFIX#themes/theme_7/icon_reports.gif" width="80" height="95" border="0" alt="" /></td>',
'    <td align="left" valign="middle">#BODY#</td>',
'    </tr></table></td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot">&nbsp;</td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589460927160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle2" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center" colspan="2">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot">&nbsp;</td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589561457160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="left" colspan="2">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot">&nbsp;</td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589672065160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7GCCReportsStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'    <td align="right" class="formRegionTop">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top2_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="left" colspan="2">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td class="formRegionBot"><img src="#IMAGE_PREFIX#themes/theme_7/space.gif" width="480" height="1" alt="" /></td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>7
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589752600160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="180" class="t7SBNCStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_top_left.png" border="0" alt="" /></td>',
'<td class="navRegionTop" nowrap="nowrap">#TITLE#&nbsp;</td>',
'<td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_top_right.png" border="0" alt="" /></td>',
'</tr>',
'<tr>',
'<td align="right" class="navRegionLeft"></td>',
'<td>#BODY#</td>',
'<td align="left" class="navRegionRight"></td>',
'</tr>',
'<tr>',
'<td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_bot2_left.png" border="0" alt="" /></td>',
'<td class="navRegionBot2"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="180" height="1" alt="" /></td>',
'<td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_bot2_right.png" border="0" alt="" /></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>7
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589873145160243)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table  width="180" class="t7SBNCStyle1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_top2_left.png" border="0" alt="" /></td>',
'<td class="navRegionTop2" nowrap="nowrap">#TITLE#&nbsp;</td>',
'<td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_top2_right.png" border="0" alt="" /></td>',
'</tr>',
'<tr>',
'<td align="right" class="navRegionLeft"></td>',
'<td>#BODY#</td>',
'<td align="left" class="navRegionRight"></td>',
'</tr>',
'<tr>',
'<td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_bot2_left.png" border="0" alt="" /></td>',
'<td class="navRegionBot2"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="180" height="1" alt="" /></td>',
'<td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/nav_region_bot2_right.png" border="0" alt="" /></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>7
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21589969625160244)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="640" class="t7WizardContainer" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'      <td align="left" class="formRegionHeading" nowrap="nowrap">#TITLE#&nbsp;</td>',
'      <td align="right" class="formRegionHeading">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'      </tr></table></td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="left">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot"><img src="#IMAGE_PREFIX#themes/theme_7/space.gif" width="640" height="1" alt="" /></td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>7
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21590058189160244)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="640" class="t7WizardContainer" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left"  class="formRegionTop"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'      <td align="left" class="formRegionHeading" nowrap="nowrap">#TITLE#&nbsp;</td>',
'      <td align="right" class="formRegionHeading">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>      ',
'      </tr></table></td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/wizard_icon.gif" alt="confirm" style="float:left;">#BODY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot"><img src="#IMAGE_PREFIX#themes/theme_7/space.gif" width="640" height="1" alt="" /></td>    ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>7
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590168331160249)
,p_list_template_current=>'<table class="t7buttonlist" cellspacing="0" cellpadding="0" border="0" summary=""><tr><td class="L"><img src="#IMAGE_PREFIX#themes/theme_7/button3_left.png" alt="" /></td><td class="C"><a href="#LINK#">#TEXT#</a></td><td class="R"><img src="#IMAGE_PR'
||'EFIX#themes/theme_7/button3_right.png" alt="" /></td></tr></table>'
,p_list_template_noncurrent=>'<table class="t7buttonlist" cellspacing="0" cellpadding="0" border="0" summary=""><tr><td class="L"><img src="#IMAGE_PREFIX#themes/theme_7/button2_left.png" alt="" /></td><td class="NC"><a href="#LINK#">#TEXT#</a></td><td class="R"><img src="#IMAGE_P'
||'REFIX#themes/theme_7/button2_right.png" alt="" /></td></tr></table>'
,p_list_template_name=>'Button List'
,p_theme_id=>7
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t7buttonlist">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590255656160256)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Menu with Sublist'
,p_theme_id=>7
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590359777160256)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>7
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590457232160256)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="current">',
'<a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a>',
'</td>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="noncurrent">',
'<a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a>',
'</td>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>7
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table class="t7horizontalimglinks" border="0" cellspacing="2" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590560667160257)
,p_list_template_current=>'<td class="current"><a href="#LINK#" class="current">#TEXT#</a></td>'
,p_list_template_noncurrent=>'<td class="noncurrent"><a href="#LINK#" class="noncurrent">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>7
,p_theme_class_id=>3
,p_list_template_before_rows=>'<table class="t7horizontallinks" border="0" cellspacing="2" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590670876160257)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></di'
||'v>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></d'
||'iv>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>7
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,'''
||'#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,'''
||'#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590750222160257)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image (Custom 1)'
,p_theme_id=>7
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590873908160257)
,p_list_template_current=>'<table class="t7tabbednavigation" cellspacing="0" cellpadding="0" border="0"  summary=""><tr><td class="L"><img src="#IMAGE_PREFIX#themes/theme_7/tabnav_left.png" alt="" /></td><td class="C"><a href="#LINK#">#TEXT#</a></td><td class="R"><img src="#IM'
||'AGE_PREFIX#themes/theme_7/tabnav_right.png" alt="" /></td></tr></table>'
,p_list_template_noncurrent=>'<table class="t7tabbednavigation" cellspacing="0" cellpadding="0" border="0"  summary=""><tr><td class="L"><img src="#IMAGE_PREFIX#themes/theme_7/tabnav_left.png" alt="" /></td><td class="NC"><a href="#LINK#">#TEXT#</a></td><td class="R"><img src="#I'
||'MAGE_PREFIX#themes/theme_7/tabnav_right.png" alt="" /></td></tr></table>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>7
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t7tabbednavigation">',
'<table class="t7tabbednavigation" cellspacing="0" cellpadding="0" border="0"  summary=""><tr><td class="L"><img src="#IMAGE_PREFIX#themes/theme_7/tabnav_start.png" alt="" /></td></tr></table>'))
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21590948166160258)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tree List'
,p_theme_id=>7
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="htmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591061342160258)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td class="current">',
'<a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a>',
'</td></tr>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td class="noncurrent">',
'<a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a>',
'</td></tr>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>7
,p_theme_class_id=>5
,p_list_template_before_rows=>'<table class="t7horizontalimglinks" border="0" cellspacing="2" summary="">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591146229160258)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>'Vertical Images List (Custom 2)'
,p_theme_id=>7
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
''))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591253964160258)
,p_list_template_current=>'<li class="C"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="NC"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>7
,p_theme_class_id=>2
,p_list_template_before_rows=>'<table summary=""><tr><td align="left"><ol class="t7verticalorderedlinks">'
,p_list_template_after_rows=>'</ol></td></tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591354335160258)
,p_list_template_current=>'<tr><td class="t7standardlistbold"><a href="#LINK#">#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td class="t7standardlist"><a href="#LINK#">#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>7
,p_theme_class_id=>19
,p_list_template_before_rows=>'<table summary="">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591466398160258)
,p_list_template_current=>'<tr><td class="t7bulletlist"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/doc.png" width="24" height="24" border="0" alt="" /></a></td><td class="t7bulletlist"><a href="#LINK#">#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td class="t7bulletlist"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/doc.png" width="24" height="24" border="0" alt="" /></a></td><td class="t7bulletlist"><a href="#LINK#">#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Unordered (Custom)'
,p_theme_id=>7
,p_theme_class_id=>9
,p_list_template_before_rows=>'<table summary="">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591549333160258)
,p_list_template_current=>'<tr><td class="t7bulletlist"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/bullet.png" width="10" height="10" border="0" alt="" /></a></td><td class="t7bulletlist"><a href="#LINK#">#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td class="t7bulletlist"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/bullet.png" width="10" height="10" border="0" alt="" /></a></td><td class="t7bulletlist"><a href="#LINK#">#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>7
,p_theme_class_id=>1
,p_list_template_before_rows=>'<table summary="">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591651870160259)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td class="t7nobulletlist"><a href="#LINK#">#TEXT#</a></td></tr>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td class="t7nobulletlist"><a href="#LINK#">#TEXT#</a></td></tr>'))
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>7
,p_theme_class_id=>18
,p_list_template_before_rows=>'<table summary="">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21591759882160259)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td class="t7wizardprogresslistcurrent" align="center" nowrap="nowrap"><a href="#LINK#">#TEXT#</a></td>',
'</tr><tr>',
'<td align="center"><a href="#LINK#">',
'  <img src="#IMAGE_PREFIX#themes/theme_7/down_arrow.png" width="14" height="7" border="0" alt="" /></a>',
'</td>',
'</tr>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td class="t7wizardprogresslist" align="center" nowrap="nowrap"><a href="#LINK#">#TEXT#</a></td>',
'</tr><tr>',
'<td align="center"><a href="#LINK#">',
'  <img src="#IMAGE_PREFIX#themes/theme_7/down_arrow.png" width="14" height="7" border="0" alt="" /></a>',
'</td>',
'</tr>'))
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>7
,p_theme_class_id=>17
,p_list_template_before_rows=>'<table width="100%" summary="">'
,p_list_template_after_rows=>'</table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21591869277160259)
,p_row_template_name=>'Borderless'
,p_row_template1=>'<td class="t7data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<div class="t7contentcollapse" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#"><table cellpadding="0" border="0" cellspacing="0" summary="" width="100%" class="t7toppagination">#TOP_PAGINATION#</table><table class="t7borderless" cellpadding="0" bo'
||'rder="0" cellspacing="0" summary="">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><table cellpadding="0" border="0" cellspacing="0" summary="" width="100%" class="t7toppagination">#PAGINATION#',
'<tr><td class="bottom" align="right"><span class="fielddatasmall">&nbsp;#EXTERNAL_LINK##CSV_LINK#</span></td></tr></table>',
'</div>',
''))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t7header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'#TEXT#'
,p_next_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"><'
||'/a></td></tr></table>'
,p_previous_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US#</a></td></tr></table>'
,p_next_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="nex'
||'t"></a></td></tr></table>'
,p_previous_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US_SET#</a></td></tr></table>'
,p_theme_id=>7
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(21591869277160259)
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21591973109160262)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td class="t7data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" width="100%" class="t7toppagination">#TOP_PAGINATION#</table><table class="t7bottomborderonly" cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_S'
||'TATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><table cellpadding="0" border="0" cellspacing="0" summary="" width="100%" class="t7pagination">#PAGINATION#',
'<tr><td class="bottom" align="right"><span class="fielddatasmall">#EXTERNAL_LINK#&nbsp;#CSV_LINK#</span></td></tr></table>',
'',
''))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t7header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'#TEXT#'
,p_next_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"><'
||'/a></td></tr></table>'
,p_previous_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US#</a></td></tr></table>'
,p_next_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="nex'
||'t"></a></td></tr></table>'
,p_previous_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US_SET#</a></td></tr></table>'
,p_theme_id=>7
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21592052979160262)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#1#</li>'
,p_row_template_before_rows=>'<div align="left"><table class="t7nobulletlist" border="0" summary=""><tr><td align="left">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</td></tr>',
'#PAGINATION#</table>#EXTERNAL_LINK#</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>7
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21592157177160262)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="odd"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" class="t7toppagination" summary="">#TOP_PAGINATION#</table>',
'<table summary="" class="t7standard"  align="center" border="1" cellspacing="0" cellpadding="1" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'))
,p_row_template_after_rows=>'<tr><td class="bottom" align="right" colspan="99"><span class="fielddatasmall">#EXTERNAL_LINK#&nbsp;#CSV_LINK#</span></td></tr></table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# valign="top" id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'#TEXT#'
,p_next_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"><'
||'/a></td></tr></table>'
,p_previous_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US#</a></td></tr></table>'
,p_next_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="nex'
||'t"></a></td></tr></table>'
,p_previous_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US_SET#</a></td></tr></table>'
,p_row_style_checked=>'#dddddd'
,p_theme_id=>7
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(21592157177160262)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21592251099160262)
,p_row_template_name=>'Standard (PPR)'
,p_row_template1=>'<td class="odd"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table width="100%" class="t7toppagination" summary="">#TOP_PAGINATION#</table>',
'<table summary="" class="t7standard"  align="center" border="1" cellspacing="0" cellpadding="1">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td class="bottom" align="right"><span class="fielddatasmall">#EXTERNAL_LINK#&nbsp;#CSV_LINK#</span></td></tr></table><script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# valign="top" id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'#TEXT#'
,p_next_page_template=>'<table summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'
||''')"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"></a></td></tr></table>'
,p_previous_page_template=>'<table summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"'
||'><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>'
,p_next_set_template=>'<table summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#L'
||'INK#'')"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"></a></td></tr></table>'
,p_previous_set_template=>'<table summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"'
||'><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>'
,p_row_style_checked=>'#dddddd'
,p_theme_id=>7
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(21592251099160262)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21592349697160262)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_row_template1=>'<td class="odd"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="even"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7toppagination" width="100%" summary="">#TOP_PAGINATION#</table>',
'<table summary="" class="t7standard"  align="center" border="1" cellspacing="0" cellpadding="1" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'))
,p_row_template_after_rows=>'<tr><td class="bottom" align="right" colspan="99"><span class="fielddatasmall">#EXTERNAL_LINK#&nbsp;#CSV_LINK#</span></td></tr></table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'EVEN_ROW_NUMBERS'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_pagination_template=>'#TEXT#'
,p_next_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"><'
||'/a></td></tr></table>'
,p_previous_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US#</a></td></tr></table>'
,p_next_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="nex'
||'t"></a></td></tr></table>'
,p_previous_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US_SET#</a></td></tr></table>'
,p_theme_id=>7
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(21592349697160262)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21592467614160262)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><th class="t7header" width="50%">#COLUMN_HEADER#:</th>',
'<td class="t7data" width="50%">#COLUMN_VALUE#</td></tr>'))
,p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t7ValueAttributePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#&nbsp;<tr><td>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td></tr>#PAGINATION#',
'<tr><td class="bottom" align="right" colspan="99"><span class="fielddatasmall">#EXTERNAL_LINK#&nbsp;#CSV_LINK#</span></td></tr></table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'#TEXT#'
,p_next_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="next"><'
||'/a></td></tr></table>'
,p_previous_page_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US#</a></td></tr></table>'
,p_next_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.png" border="0" width="16" height="16" alt="nex'
||'t"></a></td></tr></table>'
,p_previous_set_template=>'<table summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.png" border="0" width="16" height="16" alt="next"></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIO'
||'US_SET#</a></td></tr></table>'
,p_theme_id=>7
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(21592467614160262)
,p_row_template_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" class="t7GCCReportsStyle1" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/button_region_top_left.png" border="0" alt="" /></td>',
'    <td align="left" class="buttonRegionTop" width="100%">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/button_region_top_right.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center"><table width="100%">'))
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21592566629160262)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="t7nolabel">'
,p_template_body2=>'</span>'
,p_theme_id=>7
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21592658243160267)
,p_template_name=>'Optional Label'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><span class="t7optional">'
,p_template_body2=>'</span></label>'
,p_theme_id=>7
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21592752034160267)
,p_template_name=>'Optional Label with Help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><a class="t7optionalwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_theme_id=>7
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21592849610160267)
,p_template_name=>'Required Label'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_7/asterix.png" alt="" width="10" height="14" /><span class="t7required">'
,p_template_body2=>'</span></label>'
,p_theme_id=>7
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21592956624160267)
,p_template_name=>'Required Label with Help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_7/asterix.png" alt="" width="10" height="14" /><a class="t7requiredwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_theme_id=>7
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(21593073173160267)
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<div class="t7BreadCrumb">'
,p_current_page_option=>'<span>#NAME#</span>'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_after_last=>'</div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>7
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(21593160733160276)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t7hierarchicalmenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>7
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(21593851634160283)
,p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif'
,p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_7/theme_V3.css" type="text/css" />',
'',
'</head>'))
,p_page_body_attr=>'OnLoad="first_field()" style="margin:0;"'
,p_before_field_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""><tr><td>',
'<table class="t7GCCFormItemContent" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""><tr><td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_left.png" border="0" alt="" /></td><td align="left"  class="formReg'
||'ionTop">'))
,p_page_heading_text=>'<table width="100%" cellpadding="4" cellspacing="0" border="0" summary=""><tr><td>'
,p_page_footer_text=>'</td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t7htmlbutton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t7htmlbutton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="t7htmlbutton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="t7htmlbutton"'
,p_after_field_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    </td>      ',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_top_right" border="0" alt="" /></td>',
'  </tr>',
''))
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div><center>'
,p_result_rows_per_pg=>500
,p_before_result_set=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <tr>',
'    <td  class="formRegionLeft" align="right">&nbsp;</td>',
'    <td align="left">'))
,p_theme_id=>7
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'     </td>',
'    <td  class="formRegionRight" align="left">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_left.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/form_region_bot_right" border="0" alt="" /></td>',
'  </tr>',
'</table>',
'</td></tr></table>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(21593260169160276)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<td width="100">#IDAY#</td>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7standardcalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_tl.png" border="0" alt="" /></td>',
'    <td align="left" width="100%" class="formRegionTop">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_tr.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_bl.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_br.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_month_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7standardcalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_tl.png" border="0" alt="" /></td>',
'    <td align="left" width="100%" class="formRegionTop">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_tr.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center"  class="formRegionHeader"><table cellspacing="2" cellpadding="2" summary="">'))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    </table></td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_bl.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_br.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_day_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#DD#<br/>',
''))
,p_day_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="top"width="100" class="formRegionBody">',
'#TITLE_FORMAT##DATA#'))
,p_day_close_format=>'&nbsp;</td>'
,p_today_open_format=>'<td valign="top" class="formRegionBodyCurrent">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="top" class="formRegionBody">',
'#TITLE_FORMAT##DATA#'))
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>&nbsp;</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr class="formRegionHeader">'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t7WeekCalendarHolder">',
'<tr>',
'<td class="t7MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t7DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t7WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t7Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t7Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t7NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t7Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t7DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t7DayCalendarHolder"> <tr> <td class="t7MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t7DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t7Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t7Today">'
,p_daily_time_open_format=>'<th class="t7Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>7
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(21593452245160281)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_day_of_week_format=>'<td width="15%" class="condensedBody">#IDAY#</td>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7standardcalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">',
'  <tr>',
'    <td align="center" class="simpleHeader">#IMONTH#&nbsp;#YYYY#</td>',
'  </tr>',
''))
,p_month_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <tr>',
'    <td align="center"  class="simpleHeader">',
'      <table cellspacing="0" cellpadding="0" class="condensedTable" summary="">'))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    </table></td>',
'  </tr>',
'</table>'))
,p_day_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#DD#<br/>',
''))
,p_day_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="top" class="simpleBody">',
'#TITLE_FORMAT##DATA#'))
,p_day_close_format=>'&nbsp;</td>'
,p_today_open_format=>'<td valign="top" class="simpleBodyCurrent">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="top" class="condensedBody">',
'#TITLE_FORMAT##DATA#'))
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>&nbsp;</div>'
,p_nonday_open_format=>'<td valign="top" class="simpleBody">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t7WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="t7MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t7DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t7WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t7Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t7Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t7NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t7Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t7DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t7DayCalendarAlternative1Holder"> <tr><td class="t7MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t7DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t7Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t7Today">'
,p_daily_time_open_format=>'<th class="t7Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>7
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(21593665690160282)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<td class="condensedBody">#IDAY#</td>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t7standardcalendar" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_tl.png" border="0" alt="" /></td>',
'    <td align="left" width="100%" class="formRegionTop">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_tr.png" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
''))
,p_month_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <tr>',
'    <td align="right" class="formRegionLeft">&nbsp;</td>',
'    <td align="center"  class="formRegionHeader">',
'      <table cellspacing="0" cellpadding="0" class="condensedTable" summary="">'))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    </table></td>',
'    <td align="left" class="formRegionRight">&nbsp;</td>',
'  </tr>',
'  <tr>',
'    <td align="right"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_bl.png" border="0" alt="" /></td>',
'    <td class="formRegionBot">&nbsp;</td>',
'    <td align="left"><img src="#IMAGE_PREFIX#themes/theme_7/calbox_br.png" border="0" alt="" /></td>',
'  </tr>',
'</table>'))
,p_day_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#DD#<br/>',
''))
,p_day_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="top" class="condensedBody">',
'#TITLE_FORMAT##DATA#'))
,p_day_close_format=>'&nbsp;</td>'
,p_today_open_format=>'<td valign="top" class="condensedBodyCurrent">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="top" class="condensedBody">',
'#TITLE_FORMAT##DATA#'))
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>&nbsp;</div>'
,p_nonday_open_format=>'<td valign="top" class="condensedBody">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t7SmallWeekCalendarHolder">',
'<tr>',
'<td class="t7MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t7DayOfWeek">#IDAY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t7SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t7Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t7Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t7NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t7Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t7DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t7SmallDayCalendarHolder"> <tr> <td class="t7MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t7SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="t7Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t7Today">'
,p_daily_time_open_format=>'<th class="t7Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>7
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(21593959013160286)
,p_theme_id=>7
,p_theme_name=>'Centered'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(21586959515160224)
,p_error_template=>wwv_flow_api.id(21586959515160224)
,p_printer_friendly_template=>wwv_flow_api.id(21587268495160228)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(21586669051160209)
,p_default_button_template=>wwv_flow_api.id(21587546334160229)
,p_default_region_template=>wwv_flow_api.id(21589460927160243)
,p_default_chart_template=>wwv_flow_api.id(21589460927160243)
,p_default_form_template=>wwv_flow_api.id(21588652492160240)
,p_default_reportr_template=>wwv_flow_api.id(21589460927160243)
,p_default_tabform_template=>wwv_flow_api.id(21589460927160243)
,p_default_wizard_template=>wwv_flow_api.id(21589969625160244)
,p_default_menur_template=>wwv_flow_api.id(21589167637160242)
,p_default_listr_template=>wwv_flow_api.id(21589460927160243)
,p_default_report_template=>wwv_flow_api.id(21592157177160262)
,p_default_label_template=>wwv_flow_api.id(21592752034160267)
,p_default_menu_template=>wwv_flow_api.id(21593073173160267)
,p_default_calendar_template=>wwv_flow_api.id(21593260169160276)
,p_default_list_template=>wwv_flow_api.id(21591466398160258)
,p_default_option_label=>wwv_flow_api.id(21592752034160267)
,p_default_required_label=>wwv_flow_api.id(21592956624160267)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(7),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(21594052603160342)
,p_name=>'HTML DB'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_attribute_15=>'21594052603160342'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use internal Application Express account credentials and login page in this application.'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(21594146939160345)
,p_name=>'DATABASE'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_15=>'21594146939160345'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database authentication (user identified by DAD).'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(21594251257160347)
,p_name=>'DATABASE ACCOUNT'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_attribute_15=>'21594251257160347'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database account credentials.'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(19268193026984184)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>7
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(19268193026984184)
,p_tab_set=>'TS1'
,p_name=>'Data Warehouse Exercise using packages procedures.'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Warehouse Exercise using packages procedures.'
,p_step_sub_title=>'Page 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(21586745519160223)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMBE10'
,p_last_upd_yyyymmddhh24miss=>'20161124100643'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20393277878380880)
,p_name=>'Data Transformations'
,p_template=>wwv_flow_api.id(21588763211160241)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source=>'SELECT * FROM data_transformations'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(21592157177160262)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20395514660388290)
,p_query_column_id=>1
,p_column_alias=>'TRANSFORM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Transform Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20395964765388290)
,p_query_column_id=>2
,p_column_alias=>'TABLE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Table Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20396355560388290)
,p_query_column_id=>3
,p_column_alias=>'ROW_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Row Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20396746074388290)
,p_query_column_id=>4
,p_column_alias=>'DATA_ERROR_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Data Error Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20397137504388290)
,p_query_column_id=>5
,p_column_alias=>'TRANSFORM_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'Transform Desc'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20397556387388290)
,p_query_column_id=>6
,p_column_alias=>'TRANSFORM_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Transform Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20397972500388291)
,p_query_column_id=>7
,p_column_alias=>'TRANSFORM_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Transform Status'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20398311624388291)
,p_query_column_id=>8
,p_column_alias=>'STATUS_UPDATE_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Status Update Date'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21596044526160462)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21588144682160240)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(21595448860160417)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(21593073173160267)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21598775225037080)
,p_name=>'FACT_emp'
,p_template=>wwv_flow_api.id(21588763211160241)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source=>'SELECT * FROM FACT_Emp'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(21592157177160262)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20373692994328128)
,p_query_column_id=>1
,p_column_alias=>'FACT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Fact Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20374060718328128)
,p_query_column_id=>2
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>2
,p_column_heading=>'Deptno'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20374439127328128)
,p_query_column_id=>3
,p_column_alias=>'TIME_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Time Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20374854846328128)
,p_query_column_id=>4
,p_column_alias=>'NO_EMPLOYEES'
,p_column_display_sequence=>4
,p_column_heading=>'No Employees'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21599857096088828)
,p_name=>'Data Quality Errors'
,p_template=>wwv_flow_api.id(21588763211160241)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source=>'SELECT * FROM data_quality_errors'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(21592157177160262)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20379681179336888)
,p_query_column_id=>1
,p_column_alias=>'ERROR_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Error Id'
,p_include_in_export=>'Y'
,p_print_col_width=>'25'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20380044023336888)
,p_query_column_id=>2
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>2
,p_column_heading=>'Empno'
,p_include_in_export=>'Y'
,p_print_col_width=>'25'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20380450334336889)
,p_query_column_id=>3
,p_column_alias=>'ERROR_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Error Desc'
,p_include_in_export=>'Y'
,p_print_col_width=>'25'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20380803497336889)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_include_in_export=>'Y'
,p_print_col_width=>'25'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21600950561343579)
,p_plug_name=>'Data Warehouse'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(21589752600160243)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21601168222348691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21600950561343579)
,p_button_name=>'Check_Quality'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21587546334160229)
,p_button_image_alt=>'Check Quality'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21602047491371142)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21600950561343579)
,p_button_name=>'Do_Tansformations'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21587546334160229)
,p_button_image_alt=>'Do Transformations'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21602751085381618)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21600950561343579)
,p_button_name=>'Load_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21587546334160229)
,p_button_image_alt=>'Load Data'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21603955942458712)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21600950561343579)
,p_button_name=>'RESET_ALL_TABLES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21587546334160229)
,p_button_image_alt=>'Reset All Tables'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21603054040381626)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20416793043587405)
,p_name=>'P2_TEMP_LOAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21600950561343579)
,p_prompt=>'Total Load Items: from emp2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(21592566629160262)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21600874888099325)
,p_name=>'P1_TOTAL_ITEMS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21600950561343579)
,p_prompt=>'Total FACTs:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(21592566629160262)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21605355184628757)
,p_name=>'P1_TEMP_LOAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21600950561343579)
,p_prompt=>'Total Load Items from emp1:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(21592566629160262)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21601668700358299)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check_quality'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  lv_rows_affected VARCHAR2(100);',
'BEGIN',
'  dw_etl_pkg.data_quality_check(lv_rows_affected);',
'  apex_application.g_print_success_message := ''Rows affected: '' || lv_rows_affected;',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(21601168222348691)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21602466538376584)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Do_transformations'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  lv_rows_affected VARCHAR2(100);',
'BEGIN',
'   dw_etl_pkg.data_transform(lv_rows_affected);',
'  apex_application.g_print_success_message := ''Rows inserted: '' || lv_rows_affected;',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(21602047491371142)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21603162167384843)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load_Data'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  lv_rows_affected VARCHAR2(100);',
'BEGIN',
'  dw_etl_pkg.data_load(lv_rows_affected);',
'  apex_application.g_print_success_message := ''Rows inserted: '' || lv_rows_affected;',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(21602751085381618)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21604145647512534)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RESET ALL TABLES'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'-- DWA set up script',
'',
'-- emp1 and emp2 represent new data for the DW',
'-- the DW tables are dept_dim, time_dim and fact_emp',
'',
'-- set up all the tables for the ETL',
'EXECUTE IMMEDIATE (''Drop table emp1'');',
'EXECUTE IMMEDIATE (''Drop table emp2'');',
'EXECUTE IMMEDIATE (''Drop table clean_emp1'');',
'EXECUTE IMMEDIATE (''Drop table clean_emp2'');',
'EXECUTE IMMEDIATE (''Drop table transform_emp1 '');',
'--EXECUTE IMMEDIATE (''Drop table transform_emp2'');',
'EXECUTE IMMEDIATE (''Drop table tmp_load1'');',
'EXECUTE IMMEDIATE (''Drop table tmp_load2'');',
'',
'EXECUTE IMMEDIATE (''Create table emp1 as select * from scott.emp'');',
'EXECUTE IMMEDIATE (''Create table emp2 as select * from emp1 '');',
'EXECUTE IMMEDIATE (''Create table clean_emp1 as select * from emp1 '');',
'EXECUTE IMMEDIATE (''Create table clean_emp2 as select * from emp1 '');',
'EXECUTE IMMEDIATE (''Create table transform_emp1 as select * from emp1'');',
'--EXECUTE IMMEDIATE (''Create table transform_emp2 as select * from emp1'');',
'',
'DELETE FROM emp2;',
'',
'-- all the tables below are temporary tables to hold data through the transformations',
'DELETE FROM clean_emp1;',
'DELETE FROM clean_emp2;',
'DELETE FROM transform_emp1;',
'DELETE FROM transform_emp2;',
'',
'EXECUTE IMMEDIATE (''CREATE TABLE tmp_load1 (empno NUMBER(4), deptno NUMBER(4), which_year NUMBER(4))'');',
'EXECUTE IMMEDIATE (''CREATE TABLE tmp_load2 (year NUMBER(4), deptno NUMBER(4), no_of_emps NUMBER(4))'');',
'',
'-- heres the different data for emp2',
'INSERT INTO emp2(',
'SELECT DI_SEQ.nextval, ename, job, mgr, hiredate, ''20000'', ''100'', 2 FROM emp1 WHERE DEPTNO = ''20'');',
'INSERT INTO emp2(',
'SELECT DI_SEQ.nextval, ename, job, mgr, hiredate,''20000'', ''100'', 3 FROM emp1 WHERE DEPTNO = ''30'');',
'INSERT INTO emp2(',
'SELECT DI_SEQ.nextval, ename, job, mgr, hiredate,''20000'', ''100'', 1 FROM emp1 WHERE DEPTNO = ''10'');',
'UPDATE emp2 SET ename = NULL WHERE deptno = 2;',
'',
'-- these are the DW - star schema tables',
'EXECUTE IMMEDIATE (''DROP table FACT_emp CASCADE CONSTRAINTs'');',
'EXECUTE IMMEDIATE (''DROP table dept_dim CASCADE CONSTRAINTs'');',
'EXECUTE IMMEDIATE (''DROP table time_dim CASCADE CONSTRAINTs'');',
'',
'EXECUTE IMMEDIATE (''CREATE TABLE FACT_emp(',
'fact_id INTEGER NOT NULL,',
'deptno INTEGER,',
'time_id INTEGER,',
'no_employees INTEGER,',
'-- Specify the PRIMARY KEY constraint for table "FACT_emp".',
'-- This indicates which attribute(s) uniquely identify each row of data.',
'PRIMARY KEY (fact_id)',
')'');',
'',
'EXECUTE IMMEDIATE (''CREATE TABLE dept_dim(',
'deptno INTEGER NOT NULL,',
'dept_desc VARCHAR(13),',
'-- Specify the PRIMARY KEY constraint for table "dept_dim".',
'-- This indicates which attribute(s) uniquely identify each row of data.',
'PRIMARY KEY (deptno)',
')'');',
'',
'EXECUTE IMMEDIATE (''CREATE TABLE time_dim(',
'time_id INTEGER NOT NULL,',
'time_period INTEGER,',
'-- Specify the PRIMARY KEY constraint for table "time_dim".',
'-- This indicates which attribute(s) uniquely identify each row of data.',
'PRIMARY KEY (time_id)',
')'');',
'',
'--put some existing data into the dim tables',
'INSERT INTO dept_dim (deptno, dept_desc) SELECT deptno, dname FROM dept;',
'INSERT INTO time_dim VALUES (1, 1978);',
'INSERT INTO time_dim VALUES (2, 1979);',
'INSERT INTO time_dim VALUES (3, 1980);',
'INSERT INTO time_dim VALUES (4, 1981);',
'',
'-- and fact',
'EXECUTE IMMEDIATE (''DROP sequence FACT_SEQ'');',
'EXECUTE IMMEDIATE (''create sequence FACT_SEQ',
'start with 1',
'increment by 1',
'maxvalue 10000',
'minvalue 1'');',
'',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 10, 1, 3);',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 20, 1, 1);',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 30, 1, 4);',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 10, 2, 6);',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 20, 2, 4);',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 30, 2, 2);',
'INSERT INTO fact_emp VALUES (fact_seq.nextval, 40, 2, 6);',
'',
'-- set up tables log the data errors',
'EXECUTE IMMEDIATE (''DROP TABLE Data_Quality_Errors'');',
'EXECUTE IMMEDIATE (''CREATE TABLE Data_Quality_Errors',
'(error_id integer NOT NULL, ',
'empno NUMBER(4), ',
'error_desc VARCHAR(50), ',
'status VARCHAR(10))'');',
'',
'EXECUTE IMMEDIATE (''DROP sequence DQ_SEQ'');',
'EXECUTE IMMEDIATE (''create sequence DQ_SEQ',
'start with 1',
'increment by 1',
'maxvalue 10000',
'minvalue 1'');',
'',
'-- and a table to record the transformations',
'EXECUTE IMMEDIATE (''DROP table Data_transformations'');',
'EXECUTE IMMEDIATE (''CREATE TABLE Data_Transformations',
'(transform_id NUMBER(4) NOT NULL, ',
'table_name VARCHAR2(30), ',
'row_id NUMBER(4),',
'data_error_code NUMBER(4), ',
'transform_desc VARCHAR(50), ',
'transform_date DATE,',
'transform_status VARCHAR(10),',
'status_update_date DATE)'');',
'',
'EXECUTE IMMEDIATE (''DROP sequence DI_SEQ'');',
'EXECUTE IMMEDIATE (''Create sequence DI_SEQ MINVALUE 50 MAXVALUE 9999999 INCREMENT BY 1 START WITH 50'');',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(21603955942458712)
,p_process_success_message=>'Tables Reset'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21601865714366863)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COUNT_TOTAL_ROWS'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT COUNT(*)',
'INTO :P1_TOTAL_ITEMS',
'FROM fact_emp;',
'',
'SELECT COUNT(*)',
'INTO :P1_TEMP_LOAD',
'FROM emp1;',
'',
'SELECT COUNT(*)',
'INTO :P2_TEMP_LOAD',
'FROM emp2;',
'END;'))
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(19268193026984184)
,p_name=>'Report 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMBE10'
,p_last_upd_yyyymmddhh24miss=>'20160421122023'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(746993279476191053)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(21589460927160243)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DEPTNO,',
'       DNAME,',
'       LOC',
'  from DEPT'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(21592157177160262)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(746993910898191054)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(746994343167191054)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(746994750489191055)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(19268193026984184)
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(21586669051160209)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20100709123535'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21594653178160373)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21594968373160410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21594653178160373)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(21587546334160229)
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21594747530160403)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21594653178160373)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>2
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(21592752034160267)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21594848977160410)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21594653178160373)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(21592752034160267)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21595154804160416)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21595064379160412)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE   => :APP_ID||'':1''',
'    );'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21595349182160417)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21595244506160417)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
'end;'))
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
