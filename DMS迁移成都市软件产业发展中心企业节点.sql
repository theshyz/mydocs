/*--节点前缀whois_prefix_info*/
update  whois_prefix_info  set ghr_id=5 ,ghr_name=(select ghr_name from whois_ghr where id=5 ) where shr_prefix='88.125';
update  whois_prefix_info_back  set ghr_id=5 ,ghr_name=(select ghr_name from whois_ghr where id=5 ) where shr_prefix='88.125';
/*--节点信息whois_shr_info*/
update whois_shr_info set ghr_id=5,ghr_name=(select ghr_name from whois_ghr where id=5 ),org_crt_code=(select org_crt_code from whois_prefix_info  where  prefix='88.125')  where  org_name_cn='成都市软件产业发展中心（成都信息化技术应用发展中心）';
/*--节点上线信息whois_shr_prefix_online */
update whois_shr_prefix_online set ghr_name='重庆顶级' where shr_prefix='88.125';
/*--节点产品whois_product_info*/ 
UPDATE whois_product_info set ghr_id=5 where SUBSTRING_INDEX(prefix, '.', 2)='88.125';
/*--首页*/
/*--规则管理*/
UPDATE whois_prefix_repo set ghr_id=5,ghr_name=(select ghr_name from whois_ghr where id=5) where prefix='88.125';
/*--运营报送-基础信息whois_oper_base_info*/ 
UPDATE whois_oper_base_info set ghr_id=5 ,ghr_name=(select ghr_name from whois_ghr where id=5 ),org_crt_code  = (select org_crt_code from whois_prefix_info  where  prefix='88.125') where  org_name_cn='成都市软件产业发展中心（成都信息化技术应用发展中心）';

/*--运营支撑 */
update whois_oper_question set ghr_id=5 where shr_prefixs='88.125';

update whois_oper_content set ghr_id=5 where serial_number in (select serial_number from whois_oper_question
where shr_prefixs='88.125');

update whois_oper_content set org_name_cn='重庆顶级节点' where serial_number in (select serial_number from whois_oper_question
where shr_prefixs='88.125') and is_admin=1;

update whois_oper_record set ghr_id=5 ,org_name_cn='重庆顶级节点' where serial_number in (select serial_number from whois_oper_question
where shr_prefixs='88.125');
/*--标识应用*/
update whois_oper_application_info set ghr_id=5 ,ghr_name='重庆顶级节点',app_id=(select app_id from whois_ghr where id=5) where org_crt_code  = (select org_crt_code from whois_prefix_info  where  prefix='88.125');
update whois_oper_change_info set ghr_id=5  where org_crt_code  = (select org_crt_code from whois_prefix_info  where  prefix='88.125');