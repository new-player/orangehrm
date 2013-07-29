CREATE TABLE abstract_display_field (id BIGINT AUTO_INCREMENT, report_group_id BIGINT NOT NULL, name VARCHAR(255) NOT NULL, label VARCHAR(255) NOT NULL, field_alias VARCHAR(255), is_sortable VARCHAR(10) NOT NULL, sort_order VARCHAR(255), sort_field VARCHAR(255), element_type VARCHAR(255) NOT NULL, element_property TEXT NOT NULL, width VARCHAR(255) NOT NULL, is_exportable VARCHAR(10), text_alignment_style VARCHAR(20), is_value_list TINYINT(1) NOT NULL, display_field_group_id BIGINT UNSIGNED, default_value VARCHAR(255), is_encrypted TINYINT(1) NOT NULL, is_meta TINYINT(1) DEFAULT '0' NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_advanced_report (id BIGINT, name VARCHAR(100) NOT NULL, definition LONGTEXT NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_attendance_record (id BIGINT, employee_id BIGINT NOT NULL, punch_in_utc_time datetime, punch_in_note VARCHAR(255), punch_in_time_offset VARCHAR(255), punch_in_user_time datetime, punch_out_utc_time datetime, punch_out_note VARCHAR(255), punch_out_time_offset VARCHAR(255), punch_out_user_time datetime, state VARCHAR(255) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_available_group_field (report_group_id BIGINT, group_field_id BIGINT, PRIMARY KEY(report_group_id, group_field_id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_candidate_history (id BIGINT, candidate_id BIGINT, vacancy_id BIGINT, candidate_vacancy_name VARCHAR(255), interview_id BIGINT, action INT, performed_by BIGINT, performed_date datetime, note TEXT, interviewers VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_composite_display_field (report_group_id BIGINT NOT NULL, name VARCHAR(255) NOT NULL, label VARCHAR(255) NOT NULL, field_alias VARCHAR(255), is_sortable VARCHAR(10) NOT NULL, sort_order VARCHAR(255), sort_field VARCHAR(255), element_type VARCHAR(255) NOT NULL, element_property TEXT NOT NULL, width VARCHAR(255) NOT NULL, is_exportable VARCHAR(10), text_alignment_style VARCHAR(20), is_value_list TINYINT(1) NOT NULL, display_field_group_id BIGINT UNSIGNED, default_value VARCHAR(255), is_encrypted TINYINT(1) NOT NULL, is_meta TINYINT(1) DEFAULT '0' NOT NULL, composite_display_field_id BIGINT AUTO_INCREMENT, PRIMARY KEY(composite_display_field_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_config (`key` VARCHAR(100), value TEXT NOT NULL, PRIMARY KEY(`key`)) ENGINE = INNODB;
CREATE TABLE hs_hr_country (cou_code CHAR(2), name VARCHAR(80) DEFAULT '' NOT NULL, cou_name VARCHAR(80) DEFAULT '' NOT NULL, iso3 CHAR(3), numcode SMALLINT, PRIMARY KEY(cou_code)) ENGINE = INNODB;
CREATE TABLE hs_hr_currency_type (code INT DEFAULT '0' NOT NULL, currency_id CHAR(3), currency_name VARCHAR(70) DEFAULT '' NOT NULL, PRIMARY KEY(currency_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_custom_fields (field_num INT, name VARCHAR(250) NOT NULL, type INT NOT NULL, screen VARCHAR(100), extra_data VARCHAR(250), PRIMARY KEY(field_num)) ENGINE = INNODB;
CREATE TABLE ohrm_customer (customer_id INT AUTO_INCREMENT, is_deleted TINYINT DEFAULT '0', name VARCHAR(100), description VARCHAR(255), PRIMARY KEY(customer_id)) ENGINE = INNODB;
CREATE TABLE ohrm_data_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255), description VARCHAR(255), can_read TINYINT, can_create TINYINT, can_update TINYINT, can_delete TINYINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_user_role_data_group (id BIGINT AUTO_INCREMENT, user_role_id BIGINT, data_group_id BIGINT, can_read TINYINT, can_create TINYINT, can_update TINYINT, can_delete TINYINT, self TINYINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE hs_hr_kpi (id INT, job_title_code VARCHAR(13), description VARCHAR(200), rate_min FLOAT(18, 2), rate_max FLOAT(18, 2), rate_default TINYINT, is_active TINYINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_display_field (report_group_id BIGINT NOT NULL, name VARCHAR(255) NOT NULL, label VARCHAR(255) NOT NULL, field_alias VARCHAR(255), is_sortable VARCHAR(10) NOT NULL, sort_order VARCHAR(255), sort_field VARCHAR(255), element_type VARCHAR(255) NOT NULL, element_property TEXT NOT NULL, width VARCHAR(255) NOT NULL, is_exportable VARCHAR(10), text_alignment_style VARCHAR(20), is_value_list TINYINT(1) NOT NULL, display_field_group_id 1 NOT NULL, default_value VARCHAR(255), is_encrypted TINYINT(1) NOT NULL, is_meta TINYINT(1) DEFAULT '0' NOT NULL, display_field_id BIGINT AUTO_INCREMENT, PRIMARY KEY(display_field_id)) ENGINE = INNODB;
CREATE TABLE ohrm_display_field_group (id BIGINT UNSIGNED, report_group_id BIGINT NOT NULL, name VARCHAR(255) NOT NULL, is_list TINYINT(1) DEFAULT '0' NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_education (id BIGINT AUTO_INCREMENT, name VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_email_configuration (id BIGINT AUTO_INCREMENT, mail_type VARCHAR(50), sent_as VARCHAR(250) NOT NULL, sendmail_path VARCHAR(250), smtp_host VARCHAR(250), smtp_port BIGINT, smtp_username VARCHAR(250), smtp_password VARCHAR(250), smtp_auth_type VARCHAR(50), smtp_security_type VARCHAR(50), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_email_notification (id BIGINT AUTO_INCREMENT, name VARCHAR(100), is_enable BIGINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_email_processor (id INT AUTO_INCREMENT, email_id INT NOT NULL, class_name VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_email_subscriber (id BIGINT AUTO_INCREMENT, notification_id BIGINT, name VARCHAR(100), email VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_email_template (id INT AUTO_INCREMENT, email_id INT NOT NULL, locale VARCHAR(20), subject VARCHAR(255), body TEXT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_children (emp_number INT, ec_seqno DECIMAL(2, 2), ec_name VARCHAR(100) DEFAULT NULL, ec_date_of_birth DATE, PRIMARY KEY(emp_number, ec_seqno)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_contract_extend (emp_number INT, econ_extend_id DECIMAL(10, 2), econ_extend_start_date DATETIME, econ_extend_end_date DATETIME, PRIMARY KEY(emp_number, econ_extend_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_dependents (emp_number INT, ed_seqno DECIMAL(2, 2), ed_name VARCHAR(100) DEFAULT NULL, ed_relationship_type ENUM('child', 'other'), ed_relationship VARCHAR(100) DEFAULT NULL, ed_date_of_birth DATE, PRIMARY KEY(emp_number, ed_seqno)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_directdebit (id INT AUTO_INCREMENT, salary_id INT NOT NULL, dd_routing_num BIGINT NOT NULL, dd_account VARCHAR(100) DEFAULT '' NOT NULL, dd_amount DECIMAL(11, 2) NOT NULL, dd_account_type VARCHAR(20) DEFAULT '' NOT NULL, dd_transaction_type VARCHAR(20) DEFAULT '' NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_emergency_contacts (emp_number INT, eec_seqno DECIMAL(2, 2), eec_name VARCHAR(100) DEFAULT NULL, eec_relationship VARCHAR(100) DEFAULT NULL, eec_home_no VARCHAR(100) DEFAULT NULL, eec_mobile_no VARCHAR(100) DEFAULT NULL, eec_office_no VARCHAR(100) DEFAULT NULL, PRIMARY KEY(emp_number, eec_seqno)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_locations (emp_number BIGINT, location_id BIGINT, PRIMARY KEY(emp_number, location_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_picture (emp_number INT, epic_picture LONGBLOB, epic_filename VARCHAR(100), epic_type VARCHAR(50), epic_file_size VARCHAR(20), epic_file_width VARCHAR(20), epic_file_height VARCHAR(20), PRIMARY KEY(emp_number)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_us_tax (emp_number INT, tax_federal_status VARCHAR(30) DEFAULT NULL, tax_federal_exceptions INT DEFAULT '0', tax_state VARCHAR(30) DEFAULT NULL, tax_state_status VARCHAR(30) DEFAULT NULL, tax_state_exceptions INT DEFAULT '0', tax_unemp_state VARCHAR(30) DEFAULT NULL, tax_work_state VARCHAR(30) DEFAULT NULL, PRIMARY KEY(emp_number)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_work_experience (emp_number INT, eexp_seqno DECIMAL(10, 2), eexp_employer VARCHAR(100), eexp_jobtit VARCHAR(120), eexp_from_date DATETIME, eexp_to_date DATETIME, eexp_comments VARCHAR(200), eexp_internal INT, PRIMARY KEY(emp_number, eexp_seqno)) ENGINE = INNODB;
CREATE TABLE hs_hr_employee (emp_number INT, emp_lastname VARCHAR(100) DEFAULT '' NOT NULL, emp_firstname VARCHAR(100) DEFAULT '' NOT NULL, emp_middle_name VARCHAR(100) DEFAULT '' NOT NULL, emp_nick_name VARCHAR(100) DEFAULT NULL, emp_smoker SMALLINT DEFAULT '0', emp_ssn_num VARCHAR(100) DEFAULT NULL, emp_sin_num VARCHAR(100) DEFAULT NULL, emp_other_id VARCHAR(100) DEFAULT NULL, emp_dri_lice_num VARCHAR(100) DEFAULT NULL, emp_military_service VARCHAR(100) DEFAULT NULL, emp_street1 VARCHAR(100) DEFAULT NULL, emp_street2 VARCHAR(100) DEFAULT NULL, city_code VARCHAR(100) DEFAULT NULL, coun_code VARCHAR(100) DEFAULT NULL, provin_code VARCHAR(100) DEFAULT NULL, employee_id VARCHAR(50) DEFAULT NULL, ethnic_race_code VARCHAR(13), emp_birthday DATE, nation_code BIGINT, emp_gender SMALLINT, emp_marital_status VARCHAR(20), emp_dri_lice_exp_date DATE, emp_status BIGINT, job_title_code BIGINT, eeo_cat_code BIGINT, work_station INT, emp_zipcode VARCHAR(20), emp_hm_telephone VARCHAR(50), emp_mobile VARCHAR(50), emp_work_telephone VARCHAR(50), emp_work_email VARCHAR(50), sal_grd_code VARCHAR(13), joined_date DATE, emp_oth_email VARCHAR(50), termination_id INT, custom1 VARCHAR(250), custom2 VARCHAR(250), custom3 VARCHAR(250), custom4 VARCHAR(250), custom5 VARCHAR(250), custom6 VARCHAR(250), custom7 VARCHAR(250), custom8 VARCHAR(250), custom9 VARCHAR(250), custom10 VARCHAR(250), PRIMARY KEY(emp_number)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_attachment (emp_number INT, eattach_id BIGINT, eattach_size INT DEFAULT '0', eattach_desc VARCHAR(200), eattach_filename VARCHAR(100), eattach_attachment LONGBLOB, eattach_type VARCHAR(200), screen VARCHAR(100), attached_by INT, attached_by_name VARCHAR(200), attached_time DATETIME, PRIMARY KEY(emp_number, eattach_id)) ENGINE = INNODB;
CREATE TABLE ohrm_emp_education (id BIGINT AUTO_INCREMENT, emp_number BIGINT, education_id BIGINT, institute VARCHAR(100), major VARCHAR(100), year DECIMAL(4, 2), score VARCHAR(25), start_date DATE, end_date DATE, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_passport (emp_number INT, ep_seqno DECIMAL(2, 2), ep_passport_num VARCHAR(100) DEFAULT '' NOT NULL, ep_i9_status VARCHAR(100) DEFAULT NULL, ep_passportissueddate DATETIME, ep_passportexpiredate DATETIME, ep_comments VARCHAR(255), ep_passport_type_flg SMALLINT, ep_i9_review_date DATE, cou_code VARCHAR(6), PRIMARY KEY(emp_number, ep_seqno)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_language (emp_number BIGINT, lang_id VARCHAR(13), fluency BIGINT, competency BIGINT DEFAULT '0', comments VARCHAR(100), PRIMARY KEY(emp_number, lang_id, fluency)) ENGINE = INNODB;
CREATE TABLE ohrm_emp_license (emp_number BIGINT, license_id BIGINT, license_no VARCHAR(50), license_issued_date DATE, license_expiry_date DATE, PRIMARY KEY(emp_number, license_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_member_detail (emp_number INT, membship_code BIGINT, ememb_subscript_amount DECIMAL(15, 2), ememb_subscript_ownership VARCHAR(30) DEFAULT NULL, ememb_subs_currency VARCHAR(13) DEFAULT NULL, ememb_commence_date DATE, ememb_renewal_date DATE, PRIMARY KEY(emp_number, membship_code)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_basicsalary (id INT AUTO_INCREMENT, emp_number INT NOT NULL, sal_grd_code BIGINT, currency_id VARCHAR(6) DEFAULT '' NOT NULL, ebsal_basic_salary VARCHAR(100), payperiod_code VARCHAR(13), salary_component VARCHAR(100), comments VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_skill (emp_number INT, skill_id BIGINT, years_of_exp DECIMAL(2, 2), comments VARCHAR(100) DEFAULT '' NOT NULL, PRIMARY KEY(emp_number, skill_id)) ENGINE = INNODB;
CREATE TABLE ohrm_emp_termination (id INT AUTO_INCREMENT, emp_number INT, reason_id INT, termination_date DATE, note VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_employee_work_shift (work_shift_id INT, emp_number INT, PRIMARY KEY(work_shift_id, emp_number)) ENGINE = INNODB;
CREATE TABLE ohrm_employment_status (id BIGINT AUTO_INCREMENT, name VARCHAR(60), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_filter_field (filter_field_id BIGINT, report_group_id BIGINT NOT NULL, name VARCHAR(255) NOT NULL, where_clause_part LONGTEXT NOT NULL, filter_field_widget VARCHAR(255), condition_no BIGINT NOT NULL, required VARCHAR(10), PRIMARY KEY(filter_field_id)) ENGINE = INNODB;
CREATE TABLE ohrm_group_field (group_field_id BIGINT, name VARCHAR(255) NOT NULL, group_by_clause LONGTEXT NOT NULL, group_field_widget VARCHAR(255), PRIMARY KEY(group_field_id)) ENGINE = INNODB;
CREATE TABLE ohrm_holiday (id INT AUTO_INCREMENT, recurring TINYINT DEFAULT '0', description TEXT, date DATE, length INT, operational_country_id INT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_candidate (id BIGINT, first_name VARCHAR(30), middle_name VARCHAR(30), last_name VARCHAR(30), email VARCHAR(100), contact_number VARCHAR(30), status INT, comment TEXT, mode_of_application INT, date_of_application DATE, cv_text_version TEXT, keywords VARCHAR(255), added_person BIGINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_candidate_attachment (id BIGINT, candidate_id BIGINT, file_name VARCHAR(255), file_type VARCHAR(255), file_size BIGINT, file_content LONGBLOB, attachment_type INT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_candidate_vacancy (id BIGINT UNIQUE, candidate_id BIGINT, vacancy_id BIGINT, status VARCHAR(100), applied_date DATE, PRIMARY KEY(candidate_id, vacancy_id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_category (id BIGINT AUTO_INCREMENT, name VARCHAR(50), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_interview (id BIGINT AUTO_INCREMENT, candidate_vacancy_id BIGINT, candidate_id BIGINT, interview_name VARCHAR(100), interview_date DATE, interview_time VARCHAR(30), note TEXT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_interview_attachment (id BIGINT, interview_id BIGINT, file_name VARCHAR(255), file_type VARCHAR(255), file_size BIGINT, file_content LONGBLOB, attachment_type INT, comment , PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_interview_interviewer (interview_id BIGINT, interviewer_id BIGINT, PRIMARY KEY(interview_id, interviewer_id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_specification_attachment (id BIGINT, job_title_id BIGINT, file_name VARCHAR(255), file_type VARCHAR(255), file_size BIGINT, file_content LONGBLOB, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_title (id BIGINT AUTO_INCREMENT, job_title VARCHAR(100), job_description TEXT, note TEXT, is_deleted TINYINT DEFAULT '0', PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_vacancy (id BIGINT, job_title_code BIGINT, hiring_manager_id BIGINT, name VARCHAR(100), description text, no_of_positions BIGINT, status INT, published_in_feed TINYINT(1), defined_time datetime, updated_time datetime, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_job_vacancy_attachment (id BIGINT, vacancy_id BIGINT, file_name VARCHAR(255), file_type VARCHAR(255), file_size BIGINT, file_content LONGBLOB, attachment_type INT, comment , PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_language (id VARCHAR(13), name VARCHAR(120), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave (id INT AUTO_INCREMENT, date DATE, length_hours DECIMAL(6, 2), length_days DECIMAL(4, 2), status SMALLINT, comments TEXT, leave_request_id INT UNSIGNED NOT NULL, leave_type_id INT UNSIGNED NOT NULL, emp_number INT NOT NULL, start_time TIME, end_time TIME, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave_entitlement (id INT AUTO_INCREMENT, emp_number BIGINT, no_of_days DECIMAL(6, 2) NOT NULL, days_used DECIMAL(4, 2), leave_type_id INT UNSIGNED NOT NULL, from_date DATETIME NOT NULL, to_date DATETIME, credited_date DATETIME, note VARCHAR(255), entitlement_type INT NOT NULL, deleted TINYINT DEFAULT '0' NOT NULL, created_by_id BIGINT, created_by_name VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave_entitlement_type (id INT AUTO_INCREMENT, name VARCHAR(50) NOT NULL, is_editable TINYINT DEFAULT '0' NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave_leave_entitlement (id INT AUTO_INCREMENT, leave_id INT, entitlement_id INT UNSIGNED, length_days DECIMAL(4, 2), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave_period_history (id INT AUTO_INCREMENT, leave_period_start_month BIGINT, leave_period_start_day BIGINT, created_at DATE, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave_request (id INT UNSIGNED AUTO_INCREMENT, leave_type_id INT UNSIGNED NOT NULL, date_applied DATE NOT NULL, emp_number INT NOT NULL, comments TEXT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_leave_type (id INT UNSIGNED AUTO_INCREMENT, name VARCHAR(50) NOT NULL, exclude_in_reports_if_no_entitlement TINYINT(1), deleted TINYINT DEFAULT '0' NOT NULL, operational_country_id INT UNSIGNED, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_license (id BIGINT AUTO_INCREMENT, name VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_location (id BIGINT AUTO_INCREMENT, name VARCHAR(110), country_code VARCHAR(3), province VARCHAR(60), city VARCHAR(60), address VARCHAR(255), zip_code VARCHAR(35), phone VARCHAR(35), fax VARCHAR(35), notes VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_membership (id BIGINT AUTO_INCREMENT, name VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_menu_item (id BIGINT AUTO_INCREMENT, menu_title VARCHAR(255), screen_id BIGINT, parent_id BIGINT, level BIGINT, order_hint BIGINT, url_extras VARCHAR(255), status BIGINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_module (id BIGINT AUTO_INCREMENT, name VARCHAR(120), status BIGINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_nationality (id BIGINT AUTO_INCREMENT, name VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_email (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_operational_country (id INT AUTO_INCREMENT, country_code VARCHAR(3), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_organization_gen_info (id INT AUTO_INCREMENT, name VARCHAR(100), tax_id VARCHAR(30), registration_number VARCHAR(30), phone VARCHAR(30), fax VARCHAR(30), email VARCHAR(30), country VARCHAR(30), province VARCHAR(30), city VARCHAR(30), zip_code VARCHAR(30), street1 VARCHAR(100), street2 VARCHAR(100), note VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_pay_grade (id BIGINT AUTO_INCREMENT, name VARCHAR(60), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_pay_grade_currency (pay_grade_id INT, currency_id VARCHAR(6), min_salary FLOAT(2147483647, 2), max_salary FLOAT(2147483647, 2), PRIMARY KEY(pay_grade_id, currency_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_payperiod (payperiod_code VARCHAR(13), payperiod_name VARCHAR(100), PRIMARY KEY(payperiod_code)) ENGINE = INNODB;
CREATE TABLE hs_hr_performance_review (id BIGINT, employee_id BIGINT, reviewer_id BIGINT, creator_id VARCHAR(36), job_title_code VARCHAR(10), sub_division_id BIGINT, creation_date DATE, period_from DATE, period_to DATE, due_date DATE, state SMALLINT, kpis TEXT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE hs_hr_performance_review_comments (id BIGINT AUTO_INCREMENT, pr_id BIGINT, employee_id BIGINT, comment TEXT, create_date DATE, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_project (project_id INT AUTO_INCREMENT, customer_id INT, is_deleted TINYINT DEFAULT '0', name VARCHAR(100), description TEXT, PRIMARY KEY(project_id)) ENGINE = INNODB;
CREATE TABLE ohrm_project_activity (activity_id INT AUTO_INCREMENT, project_id INT NOT NULL, is_deleted TINYINT DEFAULT '0', name VARCHAR(110), PRIMARY KEY(activity_id)) ENGINE = INNODB;
CREATE TABLE ohrm_project_admin (project_id INT, emp_number INT, PRIMARY KEY(project_id, emp_number)) ENGINE = INNODB;
CREATE TABLE hs_hr_province (id INT AUTO_INCREMENT, province_name VARCHAR(40) DEFAULT '' NOT NULL, province_code CHAR(2) DEFAULT '' NOT NULL, cou_code CHAR(2) DEFAULT 'us' NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_report (report_id BIGINT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, report_group_id BIGINT NOT NULL, use_filter_field TINYINT(1) NOT NULL, type VARCHAR(255), PRIMARY KEY(report_id)) ENGINE = INNODB;
CREATE TABLE ohrm_report_group (report_group_id BIGINT, name VARCHAR(255) NOT NULL, core_sql LONGTEXT NOT NULL, PRIMARY KEY(report_group_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_emp_reportto (erep_sup_emp_number INT, erep_sub_emp_number INT, erep_reporting_mode INT, PRIMARY KEY(erep_sup_emp_number, erep_sub_emp_number, erep_reporting_mode)) ENGINE = INNODB;
CREATE TABLE ohrm_emp_reporting_method (reporting_method_id INT AUTO_INCREMENT, reporting_method_name VARCHAR(100), PRIMARY KEY(reporting_method_id)) ENGINE = INNODB;
CREATE TABLE ohrm_screen (id BIGINT AUTO_INCREMENT, name VARCHAR(100), module_id BIGINT, action_url VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_user_role_screen (id BIGINT AUTO_INCREMENT, user_role_id BIGINT, screen_id BIGINT, can_read TINYINT(1) DEFAULT '0', can_create TINYINT(1) DEFAULT '0', can_update TINYINT(1) DEFAULT '0', can_delete TINYINT(1) DEFAULT '0', PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_selected_composite_display_field (id BIGINT, composite_display_field_id BIGINT, report_id BIGINT, PRIMARY KEY(id, composite_display_field_id, report_id)) ENGINE = INNODB;
CREATE TABLE ohrm_selected_display_field (id BIGINT AUTO_INCREMENT, display_field_id BIGINT, report_id BIGINT, PRIMARY KEY(id, display_field_id, report_id)) ENGINE = INNODB;
CREATE TABLE ohrm_selected_display_field_group (id BIGINT UNSIGNED, report_id BIGINT NOT NULL, display_field_group_id INT NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_selected_filter_field (report_id BIGINT, filter_field_id BIGINT, filter_field_order BIGINT NOT NULL, value1 VARCHAR(255), value2 VARCHAR(255), where_condition VARCHAR(255), type VARCHAR(255) NOT NULL, PRIMARY KEY(report_id, filter_field_id)) ENGINE = INNODB;
CREATE TABLE ohrm_selected_group_field (group_field_id BIGINT, summary_display_field_id BIGINT, report_id BIGINT, PRIMARY KEY(group_field_id, summary_display_field_id, report_id)) ENGINE = INNODB;
CREATE TABLE ohrm_skill (id BIGINT AUTO_INCREMENT, name VARCHAR(120), description TEXT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_subunit (id BIGINT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, unit_id VARCHAR(100), description TEXT, lft INT, rgt INT, level SMALLINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_summary_display_field (summary_display_field_id BIGINT, function VARCHAR(255) NOT NULL, label VARCHAR(255) NOT NULL, field_alias VARCHAR(255), is_sortable VARCHAR(10) NOT NULL, sort_order VARCHAR(255), sort_field VARCHAR(255), element_type VARCHAR(255) NOT NULL, element_property TEXT NOT NULL, width VARCHAR(255) NOT NULL, is_exportable VARCHAR(10), text_alignment_style VARCHAR(20), is_value_list TINYINT(1) NOT NULL, display_field_group_id BIGINT UNSIGNED, default_value VARCHAR(255), PRIMARY KEY(summary_display_field_id)) ENGINE = INNODB;
CREATE TABLE ohrm_user (id BIGINT AUTO_INCREMENT, user_role_id BIGINT, emp_number BIGINT, user_name VARCHAR(40), user_password VARCHAR(40), deleted TINYINT DEFAULT '0', status TINYINT DEFAULT '1', date_entered DATETIME, date_modified DATETIME, modified_user_id BIGINT, created_by BIGINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_emp_termination_reason (id INT AUTO_INCREMENT, name VARCHAR(100), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_timesheet (timesheet_id BIGINT, employee_id BIGINT NOT NULL, state VARCHAR(255) NOT NULL, start_date DATE NOT NULL, end_date DATE NOT NULL, PRIMARY KEY(timesheet_id)) ENGINE = INNODB;
CREATE TABLE ohrm_timesheet_action_log (timesheet_action_log_id BIGINT, timesheet_id BIGINT, performed_by VARCHAR(255), action VARCHAR(255), comment VARCHAR(255), date_time DATE, PRIMARY KEY(timesheet_action_log_id)) ENGINE = INNODB;
CREATE TABLE ohrm_timesheet_item (timesheet_item_id BIGINT AUTO_INCREMENT, timesheet_id BIGINT NOT NULL, employee_id BIGINT, project_id BIGINT, activity_id BIGINT, date DATE, duration BIGINT, comment TEXT, PRIMARY KEY(timesheet_item_id)) ENGINE = INNODB;
CREATE TABLE hs_hr_unique_id (id INT AUTO_INCREMENT, last_id INT UNSIGNED NOT NULL, table_name VARCHAR(50) NOT NULL, field_name VARCHAR(50) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_user_role (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, display_name VARCHAR(255) NOT NULL, is_assignable TINYINT(1) NOT NULL, is_predefined TINYINT(1) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_role_user_selection_rule (user_role_id INT, selection_rule_id INT, configurable_params TEXT NOT NULL, PRIMARY KEY(user_role_id, selection_rule_id)) ENGINE = INNODB;
CREATE TABLE ohrm_user_selection_rule (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, implementation_class VARCHAR(255) NOT NULL, rule_xml_data TEXT NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_work_shift (id BIGINT AUTO_INCREMENT, name TEXT NOT NULL, hours_per_day DECIMAL(4, 2) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_work_week (id INT, operational_country_id INT, mon INT NOT NULL, tue INT NOT NULL, wed INT NOT NULL, thu INT NOT NULL, fri INT NOT NULL, sat INT NOT NULL, sun INT NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohrm_workflow_state_machine (id BIGINT, workflow VARCHAR(255) NOT NULL, state VARCHAR(255) NOT NULL, role VARCHAR(255) NOT NULL, action VARCHAR(255) NOT NULL, resulting_state VARCHAR(255) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;