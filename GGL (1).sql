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
,p_default_workspace_id=>47659823552853242899
);
end;
/
prompt  WORKSPACE 47659823552853242899
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   19:51 Wednesday April 26, 2023
--   Exported By:     210103248@STU.SDU.EDU.KZ
--   Export Type:     Workspace Export
--   Version:         23.1.0-15
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>47659823552853242899);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace GGL...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 47661377228263987282
 ,p_provisioning_company_id => 47659823552853242899
 ,p_short_name => 'GGL'
 ,p_display_name => 'GGL'
 ,p_first_schema_provisioned => 'WKSP_GGL'
 ,p_company_schemas => 'WKSP_GGL'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'GGL'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'GGL'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '47659823445833242899',
  p_user_name                    => '210103248@STU.SDU.EDU.KZ',
  p_first_name                   => 'Madina',
  p_last_name                    => 'Shanshar',
  p_description                  => '',
  p_email_address                => '210103248@stu.sdu.edu.kz',
  p_web_password                 => '3335E3A7DCB3FC40BED82E08351D67B6DC335700195ECFD49961626907B77860639030C9A5EB10213AE33DE75F0FB4DB07669F887C8A144EABF412CA87DE994A',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '111073851075029:111140893075029:111224556075029:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_GGL',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304200611','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 1306315598384078183,
    p_user_id => 47659823445833242899,
    p_password => '3335E3A7DCB3FC40BED82E08351D67B6DC335700195ECFD49961626907B77860639030C9A5EB10213AE33DE75F0FB4DB07669F887C8A144EABF412CA87DE994A');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 47661612193280988935,
    p_user_id => 47659823445833242899,
    p_password => '0E5A8933715DCA29B82D8073A69594333D79344ACB6927D1EA39152664A364B1B7B6FB9A2BDAC45BAE44695B0915A46338D24F186D6E472FBC6AAE12A54EBB05');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 17043271826291582465,
    p_user_id => 47659823445833242899,
    p_password => '0E5A8933715DCA29B82D8073A69594333D79344ACB6927D1EA39152664A364B1B7B6FB9A2BDAC45BAE44695B0915A46338D24F186D6E472FBC6AAE12A54EBB05');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 49861462552306315424,
    p_user_id => 47659823445833242899,
    p_password => 'C45B21DAE86AED116BFB8FE52FD0AE7A2806AD5CFDA7AA29F824D4D469F1DEC739BD09578DA65508D5902F518EBF7B98CCB1EA81F8E05E8C99286FC9BA596202');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 47661377467158987292,
    p_user_id => 47659823445833242899,
    p_password => '2B119CEC24E1C98C41C2E582BAFCE5F0EBC6A80983CF44C47CD9ED8F9ECD624450DA1E9B6A3CFC0F6A693E16A2305133DE1B6F992079637379A8D457BA63FE7B');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052442578467383147,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '556394191660089195',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052442635273383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '556394191660089195.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052442728913383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4002T3',
    p_attribute_value => '556394191660089195.4002',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052442853204383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4003T3',
    p_attribute_value => '556394191660089195.4003',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052442978263383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4004T3',
    p_attribute_value => '556394191660089195.4004',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443040208383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4005T3',
    p_attribute_value => '556394191660089195.4005',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443140473383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4006T3',
    p_attribute_value => '556394191660089195.4006',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443296799383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4007T3',
    p_attribute_value => '556394191660089195.4007',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443305985383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4008T3',
    p_attribute_value => '556394191660089195.4008',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443455627383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4009T3',
    p_attribute_value => '556394191660089195.4009',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443571276383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '556395924287093657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443638858383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '556395924287093657.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443727579383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4022T101',
    p_attribute_value => '556395924287093657.4022',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443878159383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4023T101',
    p_attribute_value => '556395924287093657.4023',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052443963134383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4024T101',
    p_attribute_value => '556395924287093657.4024',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444070777383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4025T101',
    p_attribute_value => '556395924287093657.4025',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444114029383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4026T101',
    p_attribute_value => '556395924287093657.4026',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444208962383148,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4027T101',
    p_attribute_value => '556395924287093657.4027',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444366281383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4028T101',
    p_attribute_value => '556395924287093657.4028',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444421399383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4029T101',
    p_attribute_value => '556395924287093657.4029',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444559261383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '556396783772095832',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444669976383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '556396783772095832.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444738610383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4052T3',
    p_attribute_value => '556396783772095832.4052',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444883742383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4053T3',
    p_attribute_value => '556396783772095832.4053',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052444955773383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4054T3',
    p_attribute_value => '556396783772095832.4054',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445075982383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4055T3',
    p_attribute_value => '556396783772095832.4055',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445170745383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4056T3',
    p_attribute_value => '556396783772095832.4056',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445220244383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4057T3',
    p_attribute_value => '556396783772095832.4057',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445344319383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4058T3',
    p_attribute_value => '556396783772095832.4058',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445480105383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4059T3',
    p_attribute_value => '556396783772095832.4059',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445512516383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '556398088115101278',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445665331383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '556398088115101278.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445764173383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4302T3',
    p_attribute_value => '556398088115101278.4302',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445875684383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4303T3',
    p_attribute_value => '556398088115101278.4303',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052445901176383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4304T3',
    p_attribute_value => '556398088115101278.4304',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446095715383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4305T3',
    p_attribute_value => '556398088115101278.4305',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446191075383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4306T3',
    p_attribute_value => '556398088115101278.4306',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446289142383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4307T3',
    p_attribute_value => '556398088115101278.4307',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446365797383149,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4308T3',
    p_attribute_value => '556398088115101278.4308',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446486765383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4309T3',
    p_attribute_value => '556398088115101278.4309',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446514571383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '556398380302103261',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446667657383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '556398380302103261.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446776909383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4352T3',
    p_attribute_value => '556398380302103261.4352',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446884339383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4353T3',
    p_attribute_value => '556398380302103261.4353',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052446914714383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4354T3',
    p_attribute_value => '556398380302103261.4354',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447019612383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4355T3',
    p_attribute_value => '556398380302103261.4355',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447180602383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4356T3',
    p_attribute_value => '556398380302103261.4356',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447274135383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4357T3',
    p_attribute_value => '556398380302103261.4357',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447342140383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4358T3',
    p_attribute_value => '556398380302103261.4358',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447421927383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4359T3',
    p_attribute_value => '556398380302103261.4359',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447533812383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4470T3',
    p_attribute_value => '666074525535755551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447650532383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4471T3',
    p_attribute_value => '666074525535755551.4471',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447779724383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4472T3',
    p_attribute_value => '666074525535755551.4472',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447875472383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4473T3',
    p_attribute_value => '666074525535755551.4473',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052447942657383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4474T3',
    p_attribute_value => '666074525535755551.4474',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448025669383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4475T3',
    p_attribute_value => '666074525535755551.4475',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448131767383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4476T3',
    p_attribute_value => '666074525535755551.4476',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448221712383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4477T3',
    p_attribute_value => '666074525535755551.4477',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448383311383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4478T3',
    p_attribute_value => '666074525535755551.4478',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448431399383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4479T3',
    p_attribute_value => '666074525535755551.4479',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448512679383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4481T3',
    p_attribute_value => '666074525535755551.4481',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448660225383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4482T3',
    p_attribute_value => '666074525535755551.4482',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449094045383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4486T3',
    p_attribute_value => '666074525535755551.4486',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448776058383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4483T3',
    p_attribute_value => '666074525535755551.4483',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448805227383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4484T3',
    p_attribute_value => '666074525535755551.4484',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052448957574383150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4485T3',
    p_attribute_value => '666074525535755551.4485',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449120397383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4487T3',
    p_attribute_value => '666074525535755551.4487',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449239061383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4488T3',
    p_attribute_value => '666074525535755551.4488',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449374473383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4489T3',
    p_attribute_value => '666074525535755551.4489',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449455278383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4491T3',
    p_attribute_value => '666074525535755551.4491',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449596114383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4492T3',
    p_attribute_value => '666074525535755551.4492',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449621771383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4493T3',
    p_attribute_value => '666074525535755551.4493',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449776237383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4494T3',
    p_attribute_value => '666074525535755551.4494',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449838679383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4495T3',
    p_attribute_value => '666074525535755551.4495',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052449910290383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4496T3',
    p_attribute_value => '666074525535755551.4496',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450047343383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4497T3',
    p_attribute_value => '666074525535755551.4497',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450166442383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4498T3',
    p_attribute_value => '666074525535755551.4498',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450217461383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4499T3',
    p_attribute_value => '666074525535755551.4499',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450338422383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '556399735490108657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450460200383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '556399735490108657.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450570625383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4502T3',
    p_attribute_value => '556399735490108657.4502',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450683198383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4503T3',
    p_attribute_value => '556399735490108657.4503',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450789189383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4504T3',
    p_attribute_value => '556399735490108657.4504',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450807526383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4505T3',
    p_attribute_value => '556399735490108657.4505',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052450928044383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4506T3',
    p_attribute_value => '556399735490108657.4506',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451069208383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4507T3',
    p_attribute_value => '556399735490108657.4507',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451105078383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4508T3',
    p_attribute_value => '556399735490108657.4508',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451210070383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4509T3',
    p_attribute_value => '556399735490108657.4509',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451313972383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4541T3',
    p_attribute_value => '666074525535755551.4541',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451402327383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4542T3',
    p_attribute_value => '666074525535755551.4542',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451562180383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4543T3',
    p_attribute_value => '666074525535755551.4543',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451656106383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4544T3',
    p_attribute_value => '666074525535755551.4544',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451727576383151,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '556400768767112539',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451812141383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '556400768767112539.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052451917141383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4552T3',
    p_attribute_value => '556400768767112539.4552',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452085112383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4553T3',
    p_attribute_value => '556400768767112539.4553',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452189416383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4554T3',
    p_attribute_value => '556400768767112539.4554',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452267934383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4555T3',
    p_attribute_value => '556400768767112539.4555',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452345290383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4556T3',
    p_attribute_value => '556400768767112539.4556',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452414193383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4557T3',
    p_attribute_value => '556400768767112539.4557',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452592717383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4558T3',
    p_attribute_value => '556400768767112539.4558',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452632570383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4559T3',
    p_attribute_value => '556400768767112539.4559',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452729411383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '556401045591113938',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452830090383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '556401045591113938.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052452980016383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4602T101',
    p_attribute_value => '556401045591113938.4602',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453073080383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4603T101',
    p_attribute_value => '556401045591113938.4603',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453131125383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4604T101',
    p_attribute_value => '556401045591113938.4604',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453274554383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4605T101',
    p_attribute_value => '556401045591113938.4605',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453374066383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4606T101',
    p_attribute_value => '556401045591113938.4606',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453464392383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4607T101',
    p_attribute_value => '556401045591113938.4607',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453547546383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4608T101',
    p_attribute_value => '556401045591113938.4608',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453654838383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4609T101',
    p_attribute_value => '556401045591113938.4609',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453783140383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '556401916469117281',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453804580383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '556401916469117281.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052453924182383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4652T3',
    p_attribute_value => '556401916469117281.4652',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454092360383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4653T3',
    p_attribute_value => '556401916469117281.4653',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454151202383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4654T3',
    p_attribute_value => '556401916469117281.4654',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454213345383152,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4655T3',
    p_attribute_value => '556401916469117281.4655',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454343147383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4656T3',
    p_attribute_value => '556401916469117281.4656',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454443883383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4657T3',
    p_attribute_value => '556401916469117281.4657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454514256383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4658T3',
    p_attribute_value => '556401916469117281.4658',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454648379383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4659T3',
    p_attribute_value => '556401916469117281.4659',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454762220383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '556402214051120170',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454813739383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '556402214051120170.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052454925030383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4702T3',
    p_attribute_value => '556402214051120170.4702',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455038369383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4703T3',
    p_attribute_value => '556402214051120170.4703',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455104983383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4704T3',
    p_attribute_value => '556402214051120170.4704',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455271292383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4705T3',
    p_attribute_value => '556402214051120170.4705',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455385531383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4706T3',
    p_attribute_value => '556402214051120170.4706',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455470708383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4707T3',
    p_attribute_value => '556402214051120170.4707',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455527950383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4708T3',
    p_attribute_value => '556402214051120170.4708',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455608250383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4709T3',
    p_attribute_value => '556402214051120170.4709',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455796499383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '556403147888123468',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455811815383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '556403147888123468.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052455917891383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4752T3',
    p_attribute_value => '556403147888123468.4752',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456054113383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4753T3',
    p_attribute_value => '556403147888123468.4753',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456130568383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4754T3',
    p_attribute_value => '556403147888123468.4754',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456259819383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4755T3',
    p_attribute_value => '556403147888123468.4755',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456357954383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4756T3',
    p_attribute_value => '556403147888123468.4756',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456432609383153,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4757T3',
    p_attribute_value => '556403147888123468.4757',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456558691383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4758T3',
    p_attribute_value => '556403147888123468.4758',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456668196383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4759T3',
    p_attribute_value => '556403147888123468.4759',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456727953383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4800T3',
    p_attribute_value => '559202863956074846',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456820550383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '556403468587125379',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052456901540383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '556403468587125379.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457048298383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4852T3',
    p_attribute_value => '556403468587125379.4852',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457195191383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4853T3',
    p_attribute_value => '556403468587125379.4853',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457290416383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4854T3',
    p_attribute_value => '556403468587125379.4854',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457383295383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4855T3',
    p_attribute_value => '556403468587125379.4855',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457464335383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4856T3',
    p_attribute_value => '556403468587125379.4856',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457520953383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4857T3',
    p_attribute_value => '556403468587125379.4857',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457614707383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4858T3',
    p_attribute_value => '556403468587125379.4858',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14052457752906383154,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4859T3',
    p_attribute_value => '556403468587125379.4859',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 57605950218305584471,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'F4500_1157684150404338202_SPLITTER_STATE',
    p_attribute_value => '267:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54925105217856294150,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '171:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2547569617353412189,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'F4500_1901781580041201_SPLITTER_STATE',
    p_attribute_value => '200:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 58985147762087549051,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP4500_P1022_R1301955172115853704_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 58996082222120185795,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 57555249118639945896,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP4500_P24_R12183729610626245_SORT',
    p_attribute_value => 'sort_2_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 58985972850426852311,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP4500_P3100_R82702857605738101_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 58986370564914582747,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP4500_P3110_R1595347007342836_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2264083325158689324,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP_IR_4000_P763_W480600211834691519',
    p_attribute_value => '480602703192699428____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 58979272396479439212,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3989005334596818730,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'FSP_IR_4500_P4000_W2273820316819404',
    p_attribute_value => '2288425746427871____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2524427034911994330,
    p_user_id => '210103248@STU.SDU.EDU.KZ',
    p_preference_name => 'APEX_THEME_STYLE_A4545T3',
    p_attribute_value => '666074525535755551.4545',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54921769657480230583
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'EIGHTH'
 ,p_qb_sql => 
'SELECT DISTINCT LOCATION_ID'||wwv_flow.LF||
'FROM OEHR_DEPARTMENTS'||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290530','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290530','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 1129939713595727672
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'LAB6(2)'
 ,p_qb_sql => 
'update sells set price = 20 '||wwv_flow.LF||
'where bar = ''Lotus'''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202210130413','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202210130413','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 1129959368729730622
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'LAB6(22)'
 ,p_qb_sql => 
'SELECT *'||wwv_flow.LF||
'FROM SELLS'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202210130413','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202210130413','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 1020172838243479153
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'LAB6(1)'
 ,p_qb_sql => 
'select * from sells;'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202210121825','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202210121825','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54912822922493288934
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'FOURTH'
 ,p_qb_sql => 
'SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'WHERE SALARY <= 10000'||wwv_flow.LF||
'AND DEPARTMENT_ID = 60'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290454','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290454','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54912023830811253753
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'THIRD'
 ,p_qb_sql => 
'SELECT FIRST_NAME, LAST_NAME, SALARY'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'WHERE SALARY >= 10000'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290448','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290448','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54911624022078234398
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'FIRST'
 ,p_qb_sql => 
'SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID  '||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290445','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290445','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54919149960241443570
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'SIXTH'
 ,p_qb_sql => 
'SELECT FIRST_NAME, LAST_NAME, PHONE_NUMBER'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'WHERE PHONE_NUMBER LIKE ''515%'''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290519','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290519','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54911648413464240069
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'SECOND'
 ,p_qb_sql => 
'SELECT FIRST_NAME, LAST_NAME'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290445','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290445','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54917972624255415837
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'Fifth'
 ,p_qb_sql => 
'SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'WHERE FIRST_NAME = ''Diana'' OR DEPARTMENT_ID = 100'||wwv_flow.LF||
'ORDER BY FIRST_NAME, LAST_NAME, DEPARTMENT_ID'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290515','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290515','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54922794101032527828
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'NINTH'
 ,p_qb_sql => 
'SELECT DISTINCT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'ORDER BY SALARY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290533','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290533','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54928384001750634422
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'TWELVETH'
 ,p_qb_sql => 
''||wwv_flow.LF||
'SELECT OEHR_DEPARTMENTS.DEPARTMENT_NAME, OEHR_EMPLOYEES.FIRST_NAME, OEHR_EMPLOYEES.LAST_NAME, OEHR_DEPARTMENTS.MANAGER_ID, OEHR_EMPLOYEES.EMPLOYEE_ID '||wwv_flow.LF||
'FROM OEHR_DEPARTMENTS '||wwv_flow.LF||
'INNER JOIN OEHR_EMPLOYEES ON '||wwv_flow.LF||
'OEHR_DEPARTMENTS.MANAGER_ID  '||wwv_flow.LF||
'= OEHR_EMPLOYEES.EMPLOYEE_ID;'||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290551','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290551','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54921209069280495348
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'SEVENTH'
 ,p_qb_sql => 
'SELECT DEPARTMENT_ID, DEPARTMENT_NAME'||wwv_flow.LF||
'FROM OEHR_DEPARTMENTS'||wwv_flow.LF||
'WHERE DEPARTMENT_NAME LIKE ''%ing'''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290528','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290528','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 55091976965690423523
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'ELEVENTH'
 ,p_qb_sql => 
'SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'WHERE SALARY >= 10000'||wwv_flow.LF||
'ORDER BY DEPARTMENT_ID'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209291049','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209291049','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 54923435331500265418
    ,p_query_owner => 'WKSP_GGL'
    ,p_title => 'TENTH'
 ,p_qb_sql => 
'SELECT DISTINCT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID'||wwv_flow.LF||
'FROM OEHR_EMPLOYEES'||wwv_flow.LF||
'ORDER BY DEPARTMENT_ID, SALARY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202209290536','YYYYMMDDHH24MI')
    ,p_last_updated_by => '210103248@STU.SDU.EDU.KZ'
    ,p_last_updated_on => to_date('202209290536','YYYYMMDDHH24MI'));
end;
/
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3235839400399734489
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c VARCHAR2;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before engizu book table has '' || c || '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK ( B_ID,AUTHOR,B_NAME,B_PRICE,GENRE)'||wwv_flow.LF||
'VALUES (1, ''Donald Tramp'', ''Kazakhstan our future'', 9999, ''Documentary'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304251014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3235855827969736637
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    a VARCHAR2;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO a FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before engizu book table has '' || a || '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK ( B_ID,AUTHOR,B_NAME,B_PRICE,GENRE)'||wwv_flow.LF||
'VALUES (1, ''Donald Tramp'', ''Kazakhstan our future'', 9999, ''Documentary'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304251014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3241869300159311736
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c number'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before engizu book table has '' || c || '' values.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304251029','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3242009332583820707
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    a VARCHAR2;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO a FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before engizu book table has '' || a || '' values.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304251028','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3595866328902370161
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM BOOK'||wwv_flow.LF||
'WHERE AUTHOR = ''Billye MacSharry'''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260605','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3597051041847880032
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM BOOK'||wwv_flow.LF||
'WHERE AUTHOR = "Billye MacSharry"'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260605','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3597057835129881099
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM BOOK'||wwv_flow.LF||
'WHERE AUTHOR = "Billye MacSharry";'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260605','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3597063021331881994
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM BOOK'||wwv_flow.LF||
'WHERE AUTHOR = Billye MacSharry'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260605','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3612782248251148351
 ,p_command => 
'DECLARE '||wwv_flow.LF||
'   psw account.password%type := &cc_id; '||wwv_flow.LF||
' '||wwv_flow.LF||
'   impermissible_ex  EXCEPTION; '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'   IF c_id <= 7 THEN '||wwv_flow.LF||
'      RAISE impermissible_ex; '||wwv_flow.LF||
'   ELSE '||wwv_flow.LF||
'      SELECT password INTO  psw'||wwv_flow.LF||
'      FROM account '||wwv_flow.LF||
'      WHERE psw = password;'||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE (''Password: ''||  psw);  '||wwv_flow.LF||
'    END IF; '||wwv_flow.LF||
''||wwv_flow.LF||
'EXCEPTION '||wwv_flow.LF||
'   WHEN impermissible_ex THEN '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more tha'||
'n 7 characters''); '||wwv_flow.LF||
'   WHEN no_data_found THEN '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   WHEN others THEN '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'END; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3612783211342148842
 ,p_command => 
'DECLARE '||wwv_flow.LF||
'   psw account.password%type := &cc_id; '||wwv_flow.LF||
' '||wwv_flow.LF||
'   impermissible_ex  EXCEPTION; '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'   IF psw <= 7 THEN '||wwv_flow.LF||
'      RAISE impermissible_ex; '||wwv_flow.LF||
'   ELSE '||wwv_flow.LF||
'      SELECT password INTO  psw'||wwv_flow.LF||
'      FROM account '||wwv_flow.LF||
'      WHERE psw = password;'||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE (''Password: ''||  psw);  '||wwv_flow.LF||
'    END IF; '||wwv_flow.LF||
''||wwv_flow.LF||
'EXCEPTION '||wwv_flow.LF||
'   WHEN impermissible_ex THEN '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than'||
' 7 characters''); '||wwv_flow.LF||
'   WHEN no_data_found THEN '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   WHEN others THEN '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'END; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3613272509824637079
 ,p_command => 
'DECLARE '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
' '||wwv_flow.LF||
'   impermissible_ex  EXCEPTION; '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'   IF psw <= 7 THEN '||wwv_flow.LF||
'      RAISE impermissible_ex; '||wwv_flow.LF||
'   ELSE '||wwv_flow.LF||
'      SELECT password INTO  psw'||wwv_flow.LF||
'      FROM account '||wwv_flow.LF||
'      WHERE psw = password;'||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE (''Password: ''||  psw);  '||wwv_flow.LF||
'    END IF; '||wwv_flow.LF||
''||wwv_flow.LF||
'EXCEPTION '||wwv_flow.LF||
'   WHEN impermissible_ex THEN '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than 7 charact'||
'ers''); '||wwv_flow.LF||
'   WHEN no_data_found THEN '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   WHEN others THEN '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'END; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3615585752801164680
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than 7 characters''); '||wwv_flow.LF||
' '||
'  when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260652','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3615777416867650967
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than 7 characters''); '||wwv_flow.LF||
' '||
'  wgen no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260652','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3702506194808055988
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Password must contain more than 7 characters.''); '||wwv_flow.LF||
''||
'   when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3702519044481059024
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Password must contain more than 7 characters.'');  '||
' '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3702530062554061676
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type =%any; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Password must contain more than 7 characters'||
'.''); '||wwv_flow.LF||
'       when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3702541753149063714
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type =:any%; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Password must contain more than 7 character'||
's.''); '||wwv_flow.LF||
'       when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3702545440375064291
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Password must contain more than 7 characters.''); '||wwv_flow.LF||
''||
'       when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3705430317700571135
 ,p_command => 
'select*'||wwv_flow.LF||
'from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3705832695922576658
 ,p_command => 
'select * from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3705919659482587215
 ,p_command => 
' update account set username = ''pmugg8'' where password = 1234567;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3705923010454588124
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before enter book table has ''  c  '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706011421307090868
 ,p_command => 
'select*'||wwv_flow.LF||
'from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706085723037102021
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before enter book table has ''  c  '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706094195940104198
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before enter book table has ''  c  '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706124974089108795
 ,p_command => 
'UPDATE account SET username  WHERE password = 1234567;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706126835021109974
 ,p_command => 
'UPDATE account SET username=''pmugg8'' WHERE password = 1234567;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706182088391114003
 ,p_command => 
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has ''  c  '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706420588634120437
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has ''  || c || '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706710062116604817
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has ''  || c || '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706713484740605574
 ,p_command => 
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has ''  || c || '' values.'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706749920690610747
 ,p_command => 
'select*'||wwv_flow.LF||
'from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706980185888123863
 ,p_command => 
'select * from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3706996561675126386
 ,p_command => 
' update account set username = ''pmugg8'' where password = ''qesh8'';'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260933','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3707005377874614016
 ,p_command => 
'select * from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260933','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3707228775959131043
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has ''  || c || '' values.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260933','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3709344662734630974
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Password must contain more than 7 characters.''); '||wwv_flow.LF||
''||
'       when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new password!'');  '||wwv_flow.LF||
'end; '||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260936','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712100871034162190
 ,p_command => 
'select * from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260939','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712176104060167312
 ,p_command => 
'select * from account where password < 7;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260939','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712521630428656061
 ,p_command => 
'select * from account where password < 5;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260940','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712581887639660049
 ,p_command => 
'select * from account where password = ''c%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260940','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712589081267661012
 ,p_command => 
'select * from account where password = ''r%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260941','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712730602073172004
 ,p_command => 
'select * from account where password = ''a%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260940','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712762611909174863
 ,p_command => 
'select * from account where password = ''_a%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260941','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712815541343662793
 ,p_command => 
'select * from account where password = ''_u%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260941','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712852529331665347
 ,p_command => 
'select * from account where password = ''__s%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260941','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712862111396667279
 ,p_command => 
'select * from account where password = ''q%'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260942','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712937557759672245
 ,p_command => 
'select * from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260942','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3712940809118673041
 ,p_command => 
'select * from account where password = ''_s'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260943','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3713030681690176496
 ,p_command => 
'select * from account'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260941','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3713274692333184620
 ,p_command => 
'select * from account where password = ''_l'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260942','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3714874180189678954
 ,p_command => 
'select * from account'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260944','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3714901950441680486
 ,p_command => 
'select * from account where username = ''craiman3'';'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260944','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3714909284375682210
 ,p_command => 
'INSERT INTO BOOK (B_ID,AUTHOR, B_NAME,B_PRICE, GENRE)'||wwv_flow.LF||
'VALUES (1547147594,''Alfarabi Serik'', ''DBMS'', 5400, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260944','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3714987037904689723
 ,p_command => 
'declare '||wwv_flow.LF||
'   usn account.username%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if usn = ''__a%'' then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select username into  usn from account where usn = username;'||wwv_flow.LF||
'      dbms_output.put_line(''Your username is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Username must contain more than 7 characters.'''||
'); '||wwv_flow.LF||
'       when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid username!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new username!'');  '||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260945','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3715330552046205259
 ,p_command => 
'declare '||wwv_flow.LF||
'   usn account.username%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if usn = ''a%'' then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select username into  usn from account where usn = username;'||wwv_flow.LF||
'      dbms_output.put_line(''Your username is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''Username must contain more than 7 characters.'');'||
' '||wwv_flow.LF||
'       when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid username!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new username!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260946','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3715560640062714454
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'v_department_name departments.department_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT department_name INTO v_department_name FROM departments WHERE'||wwv_flow.LF||
'department_id = 500;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Department name is '' || v_department_name);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: Department not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3715857204742208367
 ,p_command => 
'select*'||wwv_flow.LF||
'from BOOK_PRICE_TRIG'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260946','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3716227290110216646
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'v_salary employees.salary%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT salary INTO v_salary FROM employees WHERE employee_id = 1000;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Salary is '' || v_salary);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20001, ''Employee not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3716900491170222167
 ,p_command => 
'end; '||wwv_flow.LF||
''||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'v_department_name departments.department_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT department_name INTO v_department_name FROM departments WHERE'||wwv_flow.LF||
'department_id = 500;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Department name is '' || v_department_name);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: Department not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3716907664271222700
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'v_department_name departments.department_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT department_name INTO v_department_name FROM departments WHERE'||wwv_flow.LF||
'department_id = 500;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Department name is '' || v_department_name);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: Department not found.'');'||wwv_flow.LF||
'END'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3716912038797223196
 ,p_command => 
'select*'||wwv_flow.LF||
'from Seller'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3716953996328226340
 ,p_command => 
'select*'||wwv_flow.LF||
'from Sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3717566956165720049
 ,p_command => 
'select*'||wwv_flow.LF||
'  from recipient'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260950','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3718984031744726900
 ,p_command => 
'CREATE OR REPLACE TRIGGER MYTRIGGER'||wwv_flow.LF||
'AFTER INSERT ON SOMETABLE'||wwv_flow.LF||
' FOR EACH ROW'||wwv_flow.LF||
' DECLARE'||wwv_flow.LF||
'v_emplid varchar2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT phone'||wwv_flow.LF||
'       into r_id'||wwv_flow.LF||
'       FROM sender'||wwv_flow.LF||
'     WHERE S_ID = :new.EMPLOYEEID;'||wwv_flow.LF||
'     dbms_output.put(r_id);'||wwv_flow.LF||
'     /* INSERT INTO SOMEOTHERTABLE USING v_emplid and some of the other values'||wwv_flow.LF||
' from the trigger table*/'||wwv_flow.LF||
'  END MYTRIGGER;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260952','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3719372085420742604
 ,p_command => 
'CREATE OR REPLACE TRIGGER MYTRIGGER'||wwv_flow.LF||
'AFTER INSERT ON recipient'||wwv_flow.LF||
' FOR EACH ROW'||wwv_flow.LF||
' DECLARE'||wwv_flow.LF||
'r_id varchar2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT phone'||wwv_flow.LF||
'       into r_id'||wwv_flow.LF||
'       FROM sender'||wwv_flow.LF||
'     WHERE S_ID = :new.EMPLOYEEID;'||wwv_flow.LF||
'     dbms_output.put(r_id);'||wwv_flow.LF||
'     /* INSERT INTO SOMEOTHERTABLE USING r_id and some of the other values'||wwv_flow.LF||
' from the trigger table*/'||wwv_flow.LF||
'  END MYTRIGGER;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3719640471855246686
 ,p_command => 
'select*'||wwv_flow.LF||
'  from recipient'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260953','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3720042077432257244
 ,p_command => 
'CREATE OR REPLACE TRIGGER MYTRIGGER'||wwv_flow.LF||
'AFTER INSERT ON recipient'||wwv_flow.LF||
' FOR EACH ROW'||wwv_flow.LF||
' DECLARE'||wwv_flow.LF||
'r_id varchar2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT phone'||wwv_flow.LF||
'       into r_id'||wwv_flow.LF||
'       FROM sender'||wwv_flow.LF||
'     WHERE S_ID = :new.r_ID;'||wwv_flow.LF||
'     dbms_output.put(r_id);'||wwv_flow.LF||
'     /* INSERT INTO SOMEOTHERTABLE USING r_id and some of the other values'||wwv_flow.LF||
' from the trigger table*/'||wwv_flow.LF||
'  END MYTRIGGER;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3720350399780759279
 ,p_command => 
'declare '||wwv_flow.LF||
'     username VARCHAR2(50) := ''usn'';'||wwv_flow.LF||
'     password VARCHAR2(50) := ''psw'';'||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if password <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''pa'||
'ssword must contain more than 7 characters''); '||wwv_flow.LF||
'   when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3720356862718760333
 ,p_command => 
'declare '||wwv_flow.LF||
'     username VARCHAR2(50) := ''usn'';'||wwv_flow.LF||
'     password VARCHAR2(50) := ''psw'';'||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if password <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than 7 characters''); '||wwv_flow.LF||
'   when no_data_foun'||
'd then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3720844810283270525
 ,p_command => 
'declare '||wwv_flow.LF||
'     username VARCHAR2(50) := ''usn'';'||wwv_flow.LF||
'     password VARCHAR2(50) := ''psw'';'||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''passwor'||
'd must contain more than 7 characters''); '||wwv_flow.LF||
'   when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3721039785905767951
 ,p_command => 
'declare '||wwv_flow.LF||
'     username VARCHAR2(50) := ''usn'';'||wwv_flow.LF||
'     password VARCHAR2(50) := ''psw'';'||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if password <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = :new.password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_lin'||
'e(''password must contain more than 7 characters''); '||wwv_flow.LF||
'   when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304260958','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3721831845041775920
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name;'||wwv_flow.LF||
'    if'||wwv_flow.LF||
'        length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception'||wwv_flow.LF||
'        when taboo then'||wwv_flow.LF||
'        dbms_output.put_line(''Not enough characters'||
' to enter.'');'||wwv_flow.LF||
'        when no_data_found then'||wwv_flow.LF||
'        dbms_output.put_line(''There is not such a book.'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3727934413638319256
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
' '||wwv_flow.LF||
'   psw := ''&Enter password''; '||wwv_flow.LF||
''||wwv_flow.LF||
'  '||wwv_flow.LF||
'   if length(psw) <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      '||wwv_flow.LF||
'      select password into psw from account where password = psw;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'   end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''P'||
'assword must contain more than 7 characters''); '||wwv_flow.LF||
'   when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''Invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''Create a new password!'');  '||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261005','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3728300805930323773
 ,p_command => 
'select*'||wwv_flow.LF||
'from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261006','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3728339306367330389
 ,p_command => 
'declare'||wwv_flow.LF||
'    title BOOK.B_NAME%TYPE;'||wwv_flow.LF||
'    price BOOK.B_PRICE%TYPE;'||wwv_flow.LF||
'    disallow_name exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    Author := :Author;'||wwv_flow.LF||
'    SELECT B_NAME, B_PRICE INTO author, b_price FROM BOOK WHERE B_NAME = Author;'||wwv_flow.LF||
'    if length(Author) < 5 then'||wwv_flow.LF||
'        raise disallow_name;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Book price: '' b_price  '' USD'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception when no_data_found or disallow_name the'||
'n DBMS_OUTPUT.PUT_LINE(''Book not found'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3729116838264814184
 ,p_command => 
'declare'||wwv_flow.LF||
'    title BOOK.B_NAME%TYPE;'||wwv_flow.LF||
'    price BOOK.B_PRICE%TYPE;'||wwv_flow.LF||
'    disallow_name exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    title := :title;'||wwv_flow.LF||
'    SELECT B_NAME, B_PRICE INTO author, b_price FROM BOOK WHERE B_NAME = Author;'||wwv_flow.LF||
'    if length(Author) < 5 then'||wwv_flow.LF||
'        raise disallow_name;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Book price: '' b_price  '' USD'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception when no_data_found or disallow_name then '||
'DBMS_OUTPUT.PUT_LINE(''Book not found'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261006','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3730043700897832465
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'-- Prompt user to enter password'||wwv_flow.LF||
'psw := ''&Enter password''; -- use substitution variable to get user input'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Check if password is valid'||wwv_flow.LF||
'if length(psw) <= 7 then -- check length of psw variable'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'-- Check if password exists in the database'||wwv_flow.LF||
'select password into psw from account where password = psw;'||wwv_flow.LF||
'dbms'||
'_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters''); -- output custom exception message'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261009','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3730124682473836824
 ,p_command => 
'declare'||wwv_flow.LF||
'    author BOOK.B_NAME%TYPE;'||wwv_flow.LF||
'    price BOOK.B_PRICE%TYPE;'||wwv_flow.LF||
'    disallow_name exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    author := :author;'||wwv_flow.LF||
'    SELECT B_NAME, B_PRICE INTO author, price FROM BOOK WHERE B_NAME = author;'||wwv_flow.LF||
'    if length(author) < 4 then'||wwv_flow.LF||
'        raise disallow_name;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'                DBMS_OUTPUT.PUT_LINE(''Book price:'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception when no_data_found or disallow_name then DBMS_OUT'||
'PUT.PUT_LINE(''Book not found'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261010','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3731688981654345032
 ,p_command => 
'declare'||wwv_flow.LF||
'    author BOOK.B_NAME%TYPE;'||wwv_flow.LF||
'    price BOOK.B_PRICE%TYPE;'||wwv_flow.LF||
'    disallow_name exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    author := :author;'||wwv_flow.LF||
'    SELECT B_NAME, B_PRICE INTO author, price FROM BOOK WHERE B_NAME = author;'||wwv_flow.LF||
'    if length(author) < 4 then'||wwv_flow.LF||
'        raise disallow_name;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Book price: ''  b_price  '' USD'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception when no_data_found or disallow_name the'||
'n DBMS_OUTPUT.PUT_LINE(''Book not found'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261009','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3731762250773354038
 ,p_command => 
'declare'||wwv_flow.LF||
'    author BOOK.B_NAME%TYPE;'||wwv_flow.LF||
'    price BOOK.B_PRICE%TYPE;'||wwv_flow.LF||
'    disallow_name exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    author := :author;'||wwv_flow.LF||
'    SELECT B_NAME, B_PRICE INTO author, price FROM BOOK WHERE B_NAME = author;'||wwv_flow.LF||
'    if length(author) < 10 then'||wwv_flow.LF||
'        raise disallow_name;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'                DBMS_OUTPUT.PUT_LINE(''Book price:'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception when no_data_found or disallow_name then DBMS_OU'||
'TPUT.PUT_LINE(''Book not found'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261011','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3732144293281368065
 ,p_command => 
'CREATE OR REPLACE FUNCTION check_password_length (psw IN account.password%TYPE)'||wwv_flow.LF||
'RETURN account.password%TYPE'||wwv_flow.LF||
'IS'||wwv_flow.LF||
'  impermissible_ex EXCEPTION;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  IF LENGTH(psw) < 7 THEN'||wwv_flow.LF||
'    RAISE impermissible_ex;'||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
'  RETURN psw;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'  WHEN impermissible_ex THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR(-20001, ''Password must contain at least 7 characters'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3732793320887864595
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  invalid_password EXCEPTION;'||wwv_flow.LF||
'  PRAGMA EXCEPTION_INIT(invalid_password, -20001);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  FOR account_rec IN (SELECT username, password FROM account) LOOP'||wwv_flow.LF||
'    IF LENGTH(account_rec.password) < 7 THEN'||wwv_flow.LF||
'      RAISE invalid_password;'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE(''Valid password for user '' || account_rec.username);'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'  WHEN invalid_password THEN'||wwv_flow.LF||
'    DBMS_OU'||
'TPUT.PUT_LINE(''Invalid password - password must contain at least 7 characters'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3733478541488879389
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than 7 characters''); '||wwv_flow.LF||
' '||
'  when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      raise; -- raise the default exception instead of handling it here'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3735548518133905249
 ,p_command => 
'select * from account'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3735554143041909265
 ,p_command => 
''||wwv_flow.LF||
'insert into book'||wwv_flow.LF||
'values (100, ''Ami'', ''Book1'',5000, ''Fiction'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261022','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3735565352526910844
 ,p_command => 
''||wwv_flow.LF||
'insert into book'||wwv_flow.LF||
'values (100, ''Ami'', ''Book1'',500, ''Fiction'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261022','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3736133663670435342
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'usn account.username%TYPE := ''craiman3'';'||wwv_flow.LF||
'psw account.password%TYPE := ''pluard3'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SAVEPOINT start_transaction;'||wwv_flow.LF||
'INSERT INTO account (username, password) VALUES (usn, psw);'||wwv_flow.LF||
''||wwv_flow.LF||
'IF SQL%ROWCOUNT = 0 THEN'||wwv_flow.LF||
'ROLLBACK TO start_transaction;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: Account insertion failed.'');'||wwv_flow.LF||
'ELSE'||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Account inserted successfully.'');'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN OTHERS TH'||
'EN'||wwv_flow.LF||
'ROLLBACK TO start_transaction;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: An error occurred while processing the transaction.'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261024','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3736632081218926729
 ,p_command => 
'insert into book'||wwv_flow.LF||
'values (100, ''Ami'', ''Book1'',500, ''Fiction'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261025','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3739478071605951766
 ,p_command => 
'select*'||wwv_flow.LF||
'from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261029','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3739600995020961159
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name;'||wwv_flow.LF||
'    if'||wwv_flow.LF||
'        length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    exception'||wwv_flow.LF||
'        when taboo then'||wwv_flow.LF||
'        dbms_output.put_line(''Not enough characters'||
' to enter.'');'||wwv_flow.LF||
'        when no_data_found then'||wwv_flow.LF||
'        dbms_output.put_line(''There is not such a book.'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261031','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3740704240618484098
 ,p_command => 
'ddeclare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise exception (''Not enough characters to enter.'');'||wwv_flow.LF||
'    whe'||
'n no_data_found then'||wwv_flow.LF||
'        raise exception (''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261032','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3740709045672485010
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise exception (''Not enough characters to enter.'');'||wwv_flow.LF||
'    when'||
' no_data_found then'||wwv_flow.LF||
'        raise exception (''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261032','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3741043859423977948
 ,p_command => 
'select*'||wwv_flow.LF||
'  from recipient'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3741263001067498703
 ,p_command => 
' insert into recipient'||wwv_flow.LF||
'  values(4578561549, ''Madina Shanshar'', 8756142978, ''210103248@stu.sdu.edu.kz'', ''Kaskelen'')'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3741670487465995839
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name, xx_name =:new;'||wwv_flow.LF||
''||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise exception (''Not enough characters to en'||
'ter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise exception (''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261036','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3741687033717997920
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name, xx_name =:new.xx_name;'||wwv_flow.LF||
''||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise exception (''Not enough characte'||
'rs to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise exception (''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261037','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3742073586514515646
 ,p_command => 
'select*'||wwv_flow.LF||
'  from recipient'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3742093161266517903
 ,p_command => 
'  insert into recipient'||wwv_flow.LF||
'  values(4578561549, ''Madina Shanshar'', 8756142978, ''coldham0@google.ca'', ''Kaskelen'')'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3742445361560011180
 ,p_command => 
'select*'||wwv_flow.LF||
'  from sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3743776318185013697
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        dbms_output.put_line(''Not enough characters to enter.'');'||wwv_flow.LF||
'  '||
'  when no_data_found then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3744780265934525593
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name,genree from book where b_name = xx_name;'||wwv_flow.LF||
''||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise exception (''Not enough characters to enter.'');'||wwv_flow.LF||
'    whe'||
'n no_data_found then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745041351535020826
 ,p_command => 
'insert into sender'||wwv_flow.LF||
'values(1215467478,''Madin'', 843835877, 7845896113 );'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261041','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745055894061024532
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough charact'||
'ers to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261041','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745139225413035019
 ,p_command => 
''||wwv_flow.LF||
'  CREATE OR REPLACE TRIGGER prevent_high_price_deletion'||wwv_flow.LF||
'BEFORE DELETE ON BOOK'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'IF :OLD.B_PRICE > 4000 THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20001, ''Cannot annul books with high price'');'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'DELETE FROM book WHERE b_id = 1001;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745148105370035633
 ,p_command => 
'select * from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745449614088535012
 ,p_command => 
'  insert into recipient'||wwv_flow.LF||
'  values(4578561549, ''Madina Shanshar'', 8756142978, ''coldham0@google.ca'', ''Kaskelen'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261041','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745503637486539141
 ,p_command => 
'declare'||wwv_flow.LF||
'    b_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough characte'||
'rs to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261041','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745886741557541350
 ,p_command => 
'declare'||wwv_flow.LF||
'    b_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select  genre into  genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough characters to enter.'');'||
''||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261042','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745892567750542807
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough charact'||
'ers to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261042','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745899279554544885
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = xx_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enou'||
'gh characters to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261042','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745903697992546284
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough charact'||
'ers to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745942444642550500
 ,p_command => 
'select*'||wwv_flow.LF||
'  from sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745944827525551125
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough charact'||
'ers to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3745948112061551779
 ,p_command => 
'  CREATE OR REPLACE TRIGGER prevent_high_price_deletion'||wwv_flow.LF||
'BEFORE DELETE ON BOOK'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'IF :OLD.B_PRICE > 4000 THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20001, ''Cannot delete books with high price'');'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'DELETE FROM book WHERE b_id = 843835877;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3746173227786556470
 ,p_command => 
' CREATE OR REPLACE TRIGGER prevent_high_price_deletion'||wwv_flow.LF||
'BEFORE DELETE ON BOOK'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'IF :OLD.B_PRICE > 4000 THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20001, ''Cannot delete books with high price'');'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3746291727828558186
 ,p_command => 
'DELETE FROM book WHERE b_id = 843835877;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261045','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3746351420330561924
 ,p_command => 
'declare'||wwv_flow.LF||
'    xx_name book.b_name%type;'||wwv_flow.LF||
'    genree book.genre%type;'||wwv_flow.LF||
'    taboo exception; '||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    select b_name, genre into xx_name, genree from book where b_name = :new.BOOK_NAME;'||wwv_flow.LF||
'    if length(xx_name) < 5 then'||wwv_flow.LF||
'        raise taboo;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'        dbms_output.put_line(''There is such a book.'');'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when taboo then'||wwv_flow.LF||
'        raise_application_error(-20001, ''Not enough charact'||
'ers to enter.'');'||wwv_flow.LF||
'    when no_data_found then'||wwv_flow.LF||
'        raise_application_error(-20002, ''There is not such a book.'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select * from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261045','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3746844615197058433
 ,p_command => 
' insert into recipient'||wwv_flow.LF||
'  values(4578561549, ''Madina Shanshar'', 8756142978, ''coldham0@google.ca'', ''Kaskelen'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261047','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3747438253739570322
 ,p_command => 
'create or replace TRIGGER MYTRIGGER'||wwv_flow.LF||
'AFTER INSERT ON recipient'||wwv_flow.LF||
' FOR EACH ROW'||wwv_flow.LF||
' DECLARE'||wwv_flow.LF||
'r_id varchar2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT phone'||wwv_flow.LF||
'       into r_id'||wwv_flow.LF||
'       FROM sender'||wwv_flow.LF||
'     WHERE S_ID = :new.r_ID;'||wwv_flow.LF||
'     dbms_output.put(r_id);'||wwv_flow.LF||
'     /* INSERT INTO SOMEOTHERTABLE USING r_id and some of the other values'||wwv_flow.LF||
' from the trigger table*/'||wwv_flow.LF||
'  END MYTRIGGER;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261047','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3753419713431627950
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where password = psw;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'whrn no_data_found then'||wwv_flow.LF||
'dbms_output.put_line(''I'||
'nvalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3753421057326628820
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where password = psw;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_line(''I'||
'nvalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3753435209566631574
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where psw = password;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_line(''I'||
'nvalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3753795942982170384
 ,p_command => 
'select * from account'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3753899256244641474
 ,p_command => 
'declare'||wwv_flow.LF||
'password account.password%type =:psw;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where psw := new.pass;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output'||
'.put_line(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3754590260054672258
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_line'||
'(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3756735429895689287
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where username = ''craimn3'';'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_l'||
'ine(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261106','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3756787150847692141
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_line'||
'(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261107','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3756808156649172775
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where username = ''craiman3'';'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_'||
'line(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261106','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3756867577132182829
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where password = :new.pass_w;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put'||
'_line(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261108','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3763555955782275625
 ,p_command => 
''||wwv_flow.LF||
'CREATE OR REPLACE PROCEDURE check_account_exists('||wwv_flow.LF||
'    p_username IN Account.username%TYPE,'||wwv_flow.LF||
'    p_password IN Account.password%TYPE  '||wwv_flow.LF||
')  AS  v_count NUMBER;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*)'||wwv_flow.LF||
'    INTO v_count'||wwv_flow.LF||
'    FROM Account'||wwv_flow.LF||
'    WHERE username = p_username'||wwv_flow.LF||
'    AND password = p_password;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    IF v_count = 1 THEN'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Account exists.'');'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE('''||
'Account does not exist.'');'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'-- declare'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN  check_account_exists(''jfranzen0'',''eoldacre0'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261123','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3763567478044276737
 ,p_command => 
''||wwv_flow.LF||
'CREATE OR REPLACE PROCEDURE check_account_exists('||wwv_flow.LF||
'    p_username IN Account.username%TYPE,'||wwv_flow.LF||
'    p_password IN Account.password%TYPE  '||wwv_flow.LF||
')  AS  v_count NUMBER;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*)'||wwv_flow.LF||
'    INTO v_count'||wwv_flow.LF||
'    FROM Account'||wwv_flow.LF||
'    WHERE username = p_username'||wwv_flow.LF||
'    AND password = p_password;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    IF v_count = 1 THEN'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Account exists.'');'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE('''||
'Account does not exist.'');'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261123','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3763581356503277302
 ,p_command => 
'BEGIN  check_account_exists(''jfranzen0'',''eoldacre0'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261123','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3769384997445359554
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has ''   c  '' values.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261137','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3769464949011878359
 ,p_command => 
'insert into book'||wwv_flow.LF||
'values (100, ''Madin'', ''Book2'',200, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261138','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3769497027788881891
 ,p_command => 
'insert into book'||wwv_flow.LF||
'values (101, ''Madin'', ''Book2'',200, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261139','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3769602533487361322
 ,p_command => 
'CREATE OR REPLACE TRIGGER BOOK_PRICE_TRIG'||wwv_flow.LF||
'BEFORE INSERT ON BOOK'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    c NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    SELECT COUNT(*) INTO c FROM BOOK;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Before insert book table has '' ||  c || '' values.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261137','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3772105368648890577
 ,p_command => 
'declare '||wwv_flow.LF||
'   psw account.password%type; '||wwv_flow.LF||
'   impermissible_ex exception; '||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   if psw <= 7 then '||wwv_flow.LF||
'      raise impermissible_ex; '||wwv_flow.LF||
'   else '||wwv_flow.LF||
'      select password into  psw from account where psw = password;'||wwv_flow.LF||
'      dbms_output.put_line(''Your password is correct.'');  '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception '||wwv_flow.LF||
'   when impermissible_ex then '||wwv_flow.LF||
'      dbms_output.put_line(''password must contain more than 7 characters''); '||wwv_flow.LF||
' '||
'  when no_data_found then '||wwv_flow.LF||
'      dbms_output.put_line(''invalid password!''); '||wwv_flow.LF||
'   when others then '||wwv_flow.LF||
'      dbms_output.put_line(''create a new password!'');  '||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261140','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3772475856730912751
 ,p_command => 
'declare'||wwv_flow.LF||
'psw account.password%type;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'if length(psw) <= 7 then '||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
''||wwv_flow.LF||
'select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
'when no_data_found then'||wwv_flow.LF||
'dbms_output.put_line'||
'(''Invalid password!'');'||wwv_flow.LF||
'when others then'||wwv_flow.LF||
'dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261144','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3772492621043915885
 ,p_command => 
'CREATE TRIGGER insert_trggg '||wwv_flow.LF||
'FOR INSERT '||wwv_flow.LF||
'ON book'||wwv_flow.LF||
'COMPOUND TRIGGER '||wwv_flow.LF||
'BEFORE EACH ROW IS '||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
':new.b_price:=5000;'||wwv_flow.LF||
'END BEFORE EACH ROW;'||wwv_flow.LF||
'END insert_trggg;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261144','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3773259442026392771
 ,p_command => 
'DECLARE '||wwv_flow.LF||
'   psw account.password%TYPE; '||wwv_flow.LF||
'   impermissible_ex EXCEPTION; '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'   SELECT password INTO psw FROM account WHERE psw = password;'||wwv_flow.LF||
''||wwv_flow.LF||
'   IF LENGTH(psw) <= 7 THEN '||wwv_flow.LF||
'      RAISE impermissible_ex(''Password must contain more than 7 characters''); '||wwv_flow.LF||
'   ELSE '||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE(''Your password is correct.'');  '||wwv_flow.LF||
'   END IF; '||wwv_flow.LF||
''||wwv_flow.LF||
'EXCEPTION '||wwv_flow.LF||
'   WHEN impermissible_ex THEN '||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE'||
'(SQLERRM); '||wwv_flow.LF||
'   WHEN no_data_found THEN '||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE(''Invalid password!''); '||wwv_flow.LF||
'   WHEN OTHERS THEN '||wwv_flow.LF||
'      DBMS_OUTPUT.PUT_LINE(''Create a new password!'');  '||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261143','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3773681436549401714
 ,p_command => 
'CREATE TRIGGER insert_trgg '||wwv_flow.LF||
'FOR INSERT '||wwv_flow.LF||
'ON book'||wwv_flow.LF||
'COMPOUND TRIGGER '||wwv_flow.LF||
'BEFORE EACH ROW IS '||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
':new.b_price:=5000;'||wwv_flow.LF||
'END BEFORE EACH ROW;'||wwv_flow.LF||
'END insert_trgg;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261144','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3773784426585406185
 ,p_command => 
'insert into book'||wwv_flow.LF||
'values (101, ''Madin'', ''Book2'',200, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261145','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3773799777142407985
 ,p_command => 
'insert into book'||wwv_flow.LF||
'values (104, ''Madi'', ''Book3'',500, ''Thriller'');'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261145','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3774395674004418031
 ,p_command => 
'select*'||wwv_flow.LF||
'from book'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261147','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3776734744289429330
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_out'||
'put.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261149','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3785527373471026169
 ,p_command => 
'CREATE OR REPLACE TRIGGER Check_total'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'INSERT OR UPDATE ON orders'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  IF :new.total_price > 20000 THEN'||wwv_flow.LF||
'    raise_application_error(-20001, ''Price should not be greater than 20000'');'||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261203','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3785565520110028401
 ,p_command => 
'SELECT*'||wwv_flow.LF||
'FROM ORDERS'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261203','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3785566622654028726
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_ou'||
'tput.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261203','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3785968540161524492
 ,p_command => 
'SELECT*'||wwv_flow.LF||
'FROM ORDERS'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261204','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3786455976457035136
 ,p_command => 
'insert into orders'||wwv_flow.LF||
'values(7823938037,7205338831,1547134050,6588);'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261204','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3786516121003038667
 ,p_command => 
'insert into orders'||wwv_flow.LF||
'values(7823938037,7205338831,1547134050,6588);'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261205','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3786608372216528267
 ,p_command => 
'CREATE OR REPLACE TRIGGER Check_total'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'INSERT OR UPDATE ON orders'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  IF :new.total_price > 10000 THEN'||wwv_flow.LF||
'    raise_application_error(-20001, ''Price should not be greater than 10000'');'||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261205','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3786610269600528804
 ,p_command => 
'insert into orders'||wwv_flow.LF||
'values(7823938037,7205338831,1547134050,6588);'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261205','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3788959813156068035
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
' if length(psw) <= 5 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 5 characters'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_ou'||
'tput.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3790597171158563445
 ,p_command => 
'DECLARE '||wwv_flow.LF||
'  psw account.password%type; '||wwv_flow.LF||
'  impermissible_ex EXCEPTION; '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'  SELECT password INTO psw FROM account WHERE psw = :new.pass_w; '||wwv_flow.LF||
'  IF LENGTH(psw) <= 7 THEN  '||wwv_flow.LF||
'    RAISE impermissible_ex; '||wwv_flow.LF||
'  ELSE '||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Your password is correct.''); '||wwv_flow.LF||
'  END IF;  '||wwv_flow.LF||
'EXCEPTION '||wwv_flow.LF||
'  WHEN NO_DATA_FOUND THEN '||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Invalid password!''); '||wwv_flow.LF||
'  WHEN impermissible_ex THEN '||wwv_flow.LF||
'    DBM'||
'S_OUTPUT.PUT_LINE(''Password must contain more than 7 characters''); '||wwv_flow.LF||
'  WHEN OTHERS THEN '||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Create a new password!''); '||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3793250793126112943
 ,p_command => 
'select * from account'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261217','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3793302489128116191
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type  := ''gkareman4'';'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_data_foun'||
'd then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261218','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3794625456975609594
 ,p_command => 
'DECLARE  psw account.password%type := ''gkareman4''; '||wwv_flow.LF||
''||wwv_flow.LF||
'  impermissible_ex EXCEPTION;'||wwv_flow.LF||
'  BEGIN'||wwv_flow.LF||
'  IF LENGTH(psw) <= 7 THEN   '||wwv_flow.LF||
'    RAISE impermissible_ex;'||wwv_flow.LF||
'  ELSE    '||wwv_flow.LF||
'  SELECT password INTO psw FROM account WHERE psw = :new.pass_w;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Your password is correct.'');  END IF; '||wwv_flow.LF||
'EXCEPTION  '||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Invalid password!'');  '||wwv_flow.LF||
'    WHEN impermissible_ex'||
' THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Password must contain more than 7 characters''); '||wwv_flow.LF||
'     WHEN OTHERS THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Create a new password!'');END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261219','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3797533421356149995
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'emp_name oehr_employees.first_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT first_name INTO emp_name FROM oehr_employees WHERE employee_id = 999;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Employee name is '' || v_emp_name);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20002, ''Employee not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261223','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3797831616350154804
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'v_emp_name oehr_employees.first_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT first_name INTO emp_name FROM oehr_employees WHERE employee_id = 999;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Employee name is '' || v_emp_name);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20002, ''Employee not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261224','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3799337001903165748
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'name VARCHAR2(50) := :name;'||wwv_flow.LF||
'invalid_data EXCEPTION;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'IF LENGTH(name) > 20 THEN'||wwv_flow.LF||
'RAISE invalid_data;'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Name is valid.'');'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN invalid_data THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Invalid name entered.'');'||wwv_flow.LF||
'WHEN OTHERS THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: '' || SQLERRM);'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3800409932228671253
 ,p_command => 
'begin'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3802091723332201420
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3805229190805723947
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_o'||
'utput.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261238','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3806354056309734899
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  psw account.password%type;'||wwv_flow.LF||
'  impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  -- Prompt the user for the password or assign a value to ''psw'''||wwv_flow.LF||
'  -- ...'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Check if the password is impermissible'||wwv_flow.LF||
'  IF length(psw) <= 7 THEN '||wwv_flow.LF||
'    RAISE impermissible_ex;'||wwv_flow.LF||
'  ELSE'||wwv_flow.LF||
'    -- Use the variable ''psw'' in the SELECT statement instead of the bind variable'||wwv_flow.LF||
'    SELECT password INTO psw FROM account WHERE password = ps'||
'w;'||wwv_flow.LF||
'    dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'  END IF; '||wwv_flow.LF||
''||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'  -- Catch the ''impermissible_ex'' exception and display an error message'||wwv_flow.LF||
'  WHEN impermissible_ex THEN'||wwv_flow.LF||
'    dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Catch all other exceptions and display an error message'||wwv_flow.LF||
'  WHEN others THEN'||wwv_flow.LF||
'    dbms_output.put_line(''Invalid password or create a new pass'||
'word!'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261240','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3806420099031250432
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  psw account.password%type;'||wwv_flow.LF||
'  impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  -- Prompt the user for the password or assign a value to ''psw'''||wwv_flow.LF||
'  -- ...'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Check if the password is impermissible'||wwv_flow.LF||
'  IF length(psw) <= 7 THEN '||wwv_flow.LF||
'    RAISE impermissible_ex;'||wwv_flow.LF||
'  ELSE'||wwv_flow.LF||
'    -- Use the variable ''psw'' in the SELECT statement instead of the bind variable'||wwv_flow.LF||
'    SELECT password INTO psw FROM account WHERE password = ps'||
'w;'||wwv_flow.LF||
'    dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'  END IF; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261240','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3806881458564739064
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'  -- Prompt the user for the password or assign a value to ''psw'''||wwv_flow.LF||
'  -- ...'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Check if the password is impermissible'||wwv_flow.LF||
'  IF length(psw) <= 7 THEN '||wwv_flow.LF||
'    RAISE impermissible_ex;'||wwv_flow.LF||
'  ELSE'||wwv_flow.LF||
'    -- Use the variable ''psw'' in the SELECT statement instead of the bind variable'||wwv_flow.LF||
'    SELECT password INTO psw FROM account WHERE password = psw;'||wwv_flow.LF||
'    dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'  END IF; '
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261240','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3809660076570277395
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'psw = password;'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_data'||
'_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261244','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3810224605477767975
 ,p_command => 
'declare'||wwv_flow.LF||
' psw account.password%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'psw := ''password'';'||wwv_flow.LF||
' if length(psw) <= 7 then '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select password into psw from account where psw = :new.pass_w;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_d'||
'ata_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261245','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3810769163148297755
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'name book.b_name VARCHAR2(50) := :name;'||wwv_flow.LF||
'invalid_data EXCEPTION;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'IF LENGTH(name) > 20 THEN'||wwv_flow.LF||
'RAISE invalid_data;'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Name is valid.'');'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN invalid_data THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Invalid name entered.'');'||wwv_flow.LF||
'WHEN OTHERS THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: '' || SQLERRM);'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261248','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3810808382627786756
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'name book.b_name VARCHAR2(20) := :name;'||wwv_flow.LF||
'invalid_data EXCEPTION;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'IF LENGTH(name) > 20 THEN'||wwv_flow.LF||
'RAISE invalid_data;'||wwv_flow.LF||
'END IF;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Name is valid.'');'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN invalid_data THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Invalid name entered.'');'||wwv_flow.LF||
'WHEN OTHERS THEN'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Error: '' || SQLERRM);'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261248','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3812216460642317561
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  name VARCHAR2(20) := ''&name'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  IF LENGTH(name) > 20 THEN'||wwv_flow.LF||
'    RAISE invalid_data;'||wwv_flow.LF||
'  ELSE'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Name is valid.'');'||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'  WHEN invalid_data THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Invalid name entered.'');'||wwv_flow.LF||
'  WHEN OTHERS THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Error: '' || SQLERRM);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261251','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3812539207414823308
 ,p_command => 
'select * from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261254','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3813321730816319210
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  name VARCHAR2(20) := ''&name'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  IF LENGTH(name) > 20 THEN'||wwv_flow.LF||
'    RAISE invaliid_data;'||wwv_flow.LF||
'  ELSE'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Name is valid.'');'||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'  WHEN invaliid_data THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Invalid name entered.'');'||wwv_flow.LF||
'  WHEN OTHERS THEN'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Error: '' || SQLERRM);'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261251','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3815335986415340489
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'bname book.b_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT b_name INTO bname FROM book WHERE b_price = 8567;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Book name is '' || bname);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20002, ''Book not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261255','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3815404164861826646
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'bname book.b_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT b_name INTO bname FROM book WHERE b_price = 8567;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Book name is '' || v_emp_name);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20002, ''Book not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261255','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3815413548471828483
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'bname book.b_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT b_name INTO bname FROM book WHERE b_price = 8467;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Book name is '' || bname);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'RAISE_APPLICATION_ERROR(-20002, ''Book not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261255','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3815638643575351087
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'bname book.b_name%TYPE;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT b_name INTO bname FROM book WHERE b_price = 8467;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Book name is '' || bname);'||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
'  dbms_output.put_line(''Password must contain more than 7 characters'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create '||
'a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261257','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3816713723304839578
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'bname book.b_name%TYPE;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'SELECT b_name INTO bname FROM book WHERE b_price = 8467;'||wwv_flow.LF||
'DBMS_OUTPUT.PUT_LINE(''Book name is '' || bname);'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
' ''Book not found.'');'||wwv_flow.LF||
'END;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261257','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3819296025181401082
 ,p_command => 
'select*'||wwv_flow.LF||
'from sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261305','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3819378700464421586
 ,p_command => 
'declare'||wwv_flow.LF||
'sr_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.s_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'sr_id := :s_id;'||wwv_flow.LF||
'if sr_id <= 7 then'||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select s_id into sdr from sender where s_id =  sr_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20002, ''There is n'||
'ot such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20003, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261309','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3819723696586889589
 ,p_command => 
'declare'||wwv_flow.LF||
''||wwv_flow.LF||
's_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.sr_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
's_id := :"sr_id";'||wwv_flow.LF||
'if s_id <= 7 then'||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select sr_id into sdr from sender where sr_id =  s_id '||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20002, ''There i'||
's not such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20003, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261305','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3819739977357893015
 ,p_command => 
'declare'||wwv_flow.LF||
''||wwv_flow.LF||
's_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.sr_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
's_id := :sr_id;'||wwv_flow.LF||
'if s_id <= 7 then'||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select sr_id into sdr from sender where sr_id =  s_id '||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20002, ''There is '||
'not such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20003, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261306','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3822355536162447547
 ,p_command => 
'declare'||wwv_flow.LF||
'sr_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.s_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'sr_id := :s_id;'||wwv_flow.LF||
'if sr_id <= 7 then'||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select s_id into sdr from sender where s_id =  sr_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20001, ''There is n'||
'ot such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20002, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3823569188025956294
 ,p_command => 
'declare'||wwv_flow.LF||
'sr_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.s_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'sr_id := :s_id;'||wwv_flow.LF||
'if sr_id <= 7 then'||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select s_id into sdr from sender where s_id =  sr_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20227, ''There is n'||
'ot such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20228, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261316','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3824401273079963826
 ,p_command => 
'7'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3824416340907965318
 ,p_command => 
'declare'||wwv_flow.LF||
'sr_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.s_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'sr_id := :s_id;'||wwv_flow.LF||
'if sr_id <= 7 then'||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select s_id into sdr from sender where s_id =  sr_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20227, ''There is n'||
'ot such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20228, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3824876040857482792
 ,p_command => 
'declare'||wwv_flow.LF||
'sr_id number;'||wwv_flow.LF||
'impermissible_ex exception;'||wwv_flow.LF||
'invalid_id exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'sdr sender.s_id%type;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'sr_id := :s_id;'||wwv_flow.LF||
'if sr_id < 1215467470  then '||wwv_flow.LF||
'raise invalid_id;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'select s_id into sdr from sender where s_id =  sr_id;'||wwv_flow.LF||
''||wwv_flow.LF||
'if sql%notfound then'||wwv_flow.LF||
'raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
'dbms_output.put_line(''There is such a sender'');'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
'when invalid_id then'||wwv_flow.LF||
'raise_application_error(-20227, '''||
'There is not such a sender'');'||wwv_flow.LF||
'when impermissible_ex then'||wwv_flow.LF||
'raise_application_error(-20228, ''invalid sender id'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3824938355577485237
 ,p_command => 
'select * from book'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3824941511557486159
 ,p_command => 
'select * from sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3870880390976140717
 ,p_command => 
'declare'||wwv_flow.LF||
'sr_id number;'||wwv_flow.LF||
'sdr sender.s_id%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'sr_id := :s_id;'||wwv_flow.LF||
' if  sr_id < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_id into sdr from sender where s_id = sr_id;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''must contain more than  5 characters'');'||wwv_flow.LF||
' when no_data_found the'||
'n'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261508','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3899981935131485169
 ,p_command => 
'select * from sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261606','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3899985785662487059
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2;'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''must contain more than  5 characters'')'||
';'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261606','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3901522104439489534
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2(50);'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Your password is correct.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''must contain more than  5 characte'||
'rs'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid password!'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Create a new password!'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261607','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3947301522253629263
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2(50);'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Sender with this name exists.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''The name of sender must contai'||
'n at least 5 characters.'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid name of sender.'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Try again'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3947326494534632381
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2(50);'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Sender with this name exists.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''The name of sender must contai'||
'n more than 5 characters.'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid name of sender.'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Try again'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261756','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3947340904473635349
 ,p_command => 
'select * from sender'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261756','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3947426477679642213
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2(50);'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Sender with this name exists.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''The name of sender must contai'||
'n more than 5 characters.'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid name of sender.'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Try again'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261757','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3947466365033646000
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2(50);'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Sender with this name exists.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''The name of sender must contai'||
'n at least 5 characters.'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid name of sender.'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Try again'');'||wwv_flow.LF||
'end;'
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261758','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 3947490277241653656
 ,p_command => 
'declare'||wwv_flow.LF||
'ss_name varchar2(50);'||wwv_flow.LF||
'sdr sender.s_name%type;'||wwv_flow.LF||
' impermissible_ex exception;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
'ss_name:= :s_name;'||wwv_flow.LF||
' if  length(ss_name) < 5 then  '||wwv_flow.LF||
' raise impermissible_ex;'||wwv_flow.LF||
'else'||wwv_flow.LF||
' select s_name into sdr from sender where s_name = ss_name;'||wwv_flow.LF||
'  dbms_output.put_line(''Sender with this name exists.'');'||wwv_flow.LF||
'end if; '||wwv_flow.LF||
''||wwv_flow.LF||
'exception'||wwv_flow.LF||
' when impermissible_ex then'||wwv_flow.LF||
' raise_application_error(-20001, ''The name of sender must contai'||
'n at least 5 characters.'');'||wwv_flow.LF||
' when no_data_found then'||wwv_flow.LF||
'  dbms_output.put_line(''Invalid name of sender.'');'||wwv_flow.LF||
' when others then'||wwv_flow.LF||
'  dbms_output.put_line(''Try again'');'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''
    ,p_created_by => '210103248@STU.SDU.EDU.KZ'
    ,p_created_on => to_date('202304261759','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_GGL');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304200611','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304200611','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304221622','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231351','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231548','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231550','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231551','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231556','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231556','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231705','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304231830','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304240544','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304240624','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241112','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241241','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241307','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241318','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241319','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241322','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241401','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241403','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241404','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304241405','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304250432','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304250735','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304250947','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304260324','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304260603','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304260640','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304260913','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304260925','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304260955','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304261449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304261503','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304261603','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304261748','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '210103248@STU.SDU.EDU.KZ',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202304261941','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_GGL';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_GGL - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_230100
-- Exported 19:51 Wednesday April 26, 2023 by: 210103248@STU.SDU.EDU.KZ
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 19:51 Wednesday April 26, 2023 by: 210103248@STU.SDU.EDU.KZ
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'GGL';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
