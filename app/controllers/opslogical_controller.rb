class OpslogicalController < ApplicationController
	before_filter :authenticate_user!
    require 'json'
    require 'rest_client'
  def index
  	@jsonData = '{"lines":[{"text":"uniform.project(\"ops-logical\", \"au.com.cba.omnia.ops.logical\")"},{"text":""},{"text":"omniaOps.buildRpm"},{"text":""},{"text":"omniaOps.useProjectVersionForRpmVersion"},{"text":""},{"text":"includeEnvironmentConfigurationInRpm"},{"text":""},{"text":"environment(env.scoring.prod)("},{"text":"  // Scoring Projects"},{"text":"  deploy(\"datascience-swoop\",                             \"0.0.6-20160314161036\"),"},{"text":"  deploy(\"ops-scoring\",                                   \"3.11.0-20151207075415-76d9d29\"),"},{"text":"  deploy(\"etl-omnia-scores\",                              \"1.1.4-20160308133602-05cac69\"),"},{"text":"  deploy(\"scoring-claims\",                                \"0.0.5-20160223144621-53fe038\"),"},{"text":"  // DataProducts Projects"},{"text":"  deploy(\"ops-engineered-features\",                       \"2.5.1-20150428112740\"),"},{"text":"  deploy(\"hydro-legacy\",                                  \"0.4.1-20160121160904-4dff107\"),"},{"text":"  deploy(\"etl-features-payments\",                         \"1.0.2-20150423132803-3099419\"),"},{"text":"  deploy(\"etl-features-commsee\",                          \"1.6.0-20160316213754-69b583a\"),"},{"text":"  deploy(\"etl-cep-triggersexecution\",                     \"1.3.0-20151204153508-001ff7c\"),"},{"text":"  deploy(\"etl-features-gdw\",                              \"1.7.0-20160317195822-358b069\"),"},{"text":"  deploy(\"etl-features-paymentjournal\",                   \"1.3.2-20160311094112-fcfd66b\"),"},{"text":"  deploy(\"etl-features-hls\",                              \"1.6.0-20160315195628-528ebd0\"),"},{"text":"  deploy(\"etl-commscore-bankwestaggregation\",             \"1.0.0-20150320164259-370c8bd\"),"},{"text":"  deploy(\"etl-records-fundsflow\",                         \"0.0.5-20151204022848-53f1241\"),"},{"text":"  deploy(\"etl-feature-events\",                            \"0.0.1-20150212180203-257c39d\"),"},{"text":"  deploy(\"etl-features-interactions\",                     \"1.0.0-20151204011956-6553240\"),"},{"text":"  deploy(\"etl-features-gcps\",                             \"1.3.1-20160107160445-4984a6c\"),"},{"text":"  deploy(\"etl-features-omnia\",                            \"1.1.0-20151203051029-08c5e84\"),"},{"text":"  deploy(\"dataproducts-records-instrlog\",                 \"1.2.4-20151204153105-4c12f21\"),"},{"text":"  deploy(\"dataproducts-features-instrlog\",                \"1.5.2-20160201141421-92419a7\"),"},{"text":"  deploy(\"dataproducts-features-commscore\",               \"1.0.2-20160317061753-e0c544e\"),"},{"text":"  deploy(\"dataproducts-records-commincome\",               \"1.0.0-20151204033341-b5753ee\"),"},{"text":"  deploy(\"dataproducts-features-tcs\",                     \"1.0.2-20160317060835-a46688f\"),"},{"text":"  deploy(\"dataproducts-features-stigcar\",                 \"1.1.0-20151203183327-a0391e1\"),"},{"text":"  deploy(\"dataproducts-hydro-ingestion\",                  \"0.1.2-20160218132940-bd5ced9\"),"},{"text":"  deploy(\"dataproducts-features-cep\",                     \"1.3.2-20160303044604-c88ab64\"),"},{"text":"  deploy(\"dataproducts-features-personalloancollections\", \"1.0.0-20151204173441-185ba0e\"),"},{"text":"  deploy(\"dataproducts-features-governance-quality\",      \"1.0.0-20151204071455-921f7c7\"),"},{"text":"  deploy(\"dataproducts-records-gcps\",                     \"1.2.0-20151204145954-c7716fa\"),"},{"text":"  deploy(\"dataproducts-records-cardpurchase\",             \"1.0.0-20151204014205-4efcbc1\"),"},{"text":"  deploy(\"dataproducts-features-sitecatalyst\",            \"2.0.2-20160308021749-4a820c5\"),"},{"text":"  deploy(\"dataproducts-tools-rdvextract\",                 \"1.0.0-20160219070417-28178ff\"),"},{"text":"  deploy(\"dataproducts-recycler-truck\",                   \"4.7.0-20160301172626-dc554fb\"),"},{"text":"  deploy(\"etl-cep-dumptruck\",                             \"4.7.0-20160301172626-dc554fb\"),"},{"text":"  deploy(\"etl-cep-vertebrae\",                             \"4.7.0-20160301172626-dc554fb\"),"},{"text":"  deploy(\"dataproducts-records-commsee\",                  \"1.0.0-20151203052110-1b0f950\"),"},{"text":"  deploy(\"dataproducts-scores-merchant\",                  \"1.0.1-20151209233456-cce9e46\"),"},{"text":"  deploy(\"dataproducts-records-bwacommscore\",             \"1.0.0-20151204005534-ef18d70\"),"},{"text":"  deploy(\"dataproducts-features-sap\",                     \"3.0.0-20160317191958-7963ee7\"),"},{"text":"  deploy(\"dataproducts-records-onecommscore\",             \"1.0.0-20160119105520-d3c19e7\"),"},{"text":"  deploy(\"dataproducts-features-clickstream-coppersmith\", \"0.0.2-20160308154022-cb68975\"),"},{"text":"  deploy(\"dataproducts-records-paymentjournal\",           \"0.0.1-20160229143536-7466968\"),"},{"text":"  // BICD Projects"},{"text":"  deploy(\"etl-bicd\",                                      \"1.1.1-20150618123855\"),"},{"text":"  deploy(\"bicd.teradata-triggers\",                        \"0.0.2-20140611165352\"),"},{"text":"  deploy(\"etl-fdm\",                                       \"1.1.2-20160212093146\"),"},{"text":"  deploy(\"etl-bicd-parlour\",                              \"1.0.0-20150320212253-2a19485\"),"},{"text":"  deploy(\"etl-hls-hls\",                                   \"3.1.2-20160306222444-8a73980\"),"},{"text":"  deploy(\"etl-osca-osca\",                                 \"2.1.0-20151204165310-9a97fc9\"),"},{"text":"  deploy(\"etl-tcs-tcs\",                                   \"1.1.2-20160304043716-6b05174\"),"},{"text":"  deploy(\"etl-fdm-fdm\",                                   \"2.3.0-20160308140445-0f1ad8d\"),"},{"text":"  deploy(\"etl-commscore-commscore\",                       \"1.2.0-20151203230806-d736926\"),"},{"text":"  deploy(\"etl-gcps-gcps\",                                 \"2.0.1-20160304180331-f3f10ba\"),"},{"text":"  deploy(\"etl-powercurve-powercurve\",                     \"1.3.0-20160219130452-018bcf6\"),"},{"text":"  deploy(\"etl-bicd-util\",                                 \"1.0.0-20150409174458-6e6564f\"),"},{"text":"  deploy(\"etl-wss-wss\",                                   \"1.2.1-20160217143116-255b388\"),"},{"text":"  deploy(\"etl-psgl\",                                      \"0.2.1-20160316052133-bd66658\"),"},{"text":"  deploy(\"etl-omnia-fdm\",                                 \"0.3.0-20160302055144-2175180\"),"},{"text":"  deploy(\"etl-mls-mls\",                                   \"0.4.1-20160315222924-d5a8080\"),"},{"text":"  deploy(\"etl-cse-cse\",                                   \"0.0.1-20160211124454-7761a35\"),"},{"text":"  // ALPHA Projects"},{"text":"  deploy(\"etl-navpath\",                                   \"2.2.2-20151208050230-842d013\"),"},{"text":"  deploy(\"etl-triad-triad\",                               \"1.0.0-20151204072645-0587c7c\"),"},{"text":"  deploy(\"etl-commsee-ofi\",                               \"2.0.0-20151204181401-0308fd6\"),"},{"text":"  deploy(\"etl-commfx-foreignexchange\",                    \"2.2.0-20151204061418-f85529e\"),"},{"text":"  deploy(\"etl-commscore-superfile\",                       \"1.0.2-20160303101059-1dc0b63\"),"},{"text":"  deploy(\"etl-edm-downstream\",                            \"2.2.0-20160224230407-d80ff6d\"),"},{"text":"  deploy(\"etl-farlo-clm\",                                 \"2.2.0-20151204072426-5454ae3\"),"},{"text":"  deploy(\"etl-commscore-results\",                         \"2.2.0-20160303141510-eaf84c3\"),"},{"text":"  deploy(\"etl-paxuspapa-wms\",                             \"1.1.0-20151204072830-b598cd7\"),"},{"text":"  deploy(\"etl-genesys-collections\",                       \"2.0.0-20151204165405-30bd2f4\"),"},{"text":"  deploy(\"etl-firstpoint-complaints\",                     \"1.1.0-20151204171032-5702c3f\"),"},{"text":"  // SYNERGY Projects"},{"text":"  deploy(\"etl-roymorgan-ces\",                             \"1.0.4-20160209033139-6bca545\"),"},{"text":"  deploy(\"etl-gdw-account\",                               \"1.1.5-20160225024741-f41dfbd\"),"},{"text":"  deploy(\"etl-sapcrm-pricinginformation\",                 \"2.0.2-20151204075352-4b8abaf\"),"},{"text":"  deploy(\"etl-cep-reporting\",                             \"2.0.2-20160314020435-81012cd\"),"},{"text":"  deploy(\"etl-sap-businesspartner\",                       \"0.0.1-20150925094829-d822cbb\"),"},{"text":"  deploy(\"etl-cep-pegaih\",                                \"1.1.1-20160314025207-020cf72\"),"},{"text":"  deploy(\"etl-exacttarget-channelresponse\",               \"0.0.2-20151204075649-91df870\"),"},{"text":"  deploy(\"etl-gdw-accountset2\",                           \"1.1.3-20151204074421-6dd1be1\"),"},{"text":"  deploy(\"etl-gdw-cep\",                                   \"1.0.9-20160311051027-9824e9a\"),"},{"text":"  deploy(\"etl-gdw-ref\",                                   \"1.0.2-20151124071141-1318e2e\"),"},{"text":"  deploy(\"etl-sap-insurance\",                             \"1.1.0-20160222000934-4eae8f8\"),"},{"text":"  deploy(\"etl-sapcrm-glas\",                               \"3.1.0-20160222001155-ae9cb99\"),"},{"text":"  deploy(\"etl-sapcrmdso-glas\",                            \"3.1.0-20160222000819-a8dc9b4\"),"},{"text":"  deploy(\"etl-msc-glas\",                                  \"3.0.0-20151204084611-d6fe4fe\"),"},{"text":"  deploy(\"etl-commsee-glas\",                              \"3.1.4-20160211060528-c865389\"),"},{"text":"  deploy(\"etl-gdw-import\",                                \"2.0.0-20160311031526-4644702\"),"},{"text":"  // DATA CRUNCHERS Projects"},{"text":"  deploy(\"etl-gla-pj\",                                    \"3.1.0-20151204015157-d89749e\"),"},{"text":"  deploy(\"etl-citi-gtts\",                                 \"2.1.0-20151204015125-c9161e7\"),"},{"text":"  deploy(\"etl-commsee-personalbalancesheet\",              \"1.1.0-20151204020401-9c9d0bc\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbus\",                       \"2.0.0-20160310134750-a274939\"),"},{"text":"  deploy(\"etl-commsee-wallet\",                            \"1.2.0-20151203233817-b81dcd8\"),"},{"text":"  deploy(\"etl-commsee-kiakatching\",                       \"1.1.0-20151204110645-3ab162c\"),"},{"text":"  deploy(\"etl-commsee-sme\",                               \"2.0.0-20151205125929-00071f4\"),"},{"text":"  deploy(\"etl-commsee-npn\",                               \"2.0.0-20151205125748-430244d\"),"},{"text":"  deploy(\"etl-commsee-onlinefeedback\",                    \"1.1.0-20151204105947-ce3fae1\"),"},{"text":"  deploy(\"etl-gla-commsee\",                               \"1.1.0-20151204115754-0468740\"),"},{"text":"  deploy(\"etl-commsee-kpi\",                               \"0.2.0-20151204114107-522829e\"),"},{"text":"  deploy(\"etl-commsee-car\",                               \"0.3.0-20151204015704-4c0fe00\"),"},{"text":"  deploy(\"etl-commscore-pco\",                             \"0.1.1-20160210163608-6560f0e\"),"},{"text":"  deploy(\"etl-bankwest-filter\",                           \"1.1.0-20151204112641-842f09a\"),"},{"text":"  deploy(\"etl-sdw-sitecatalyst\",                          \"2.1.0-20151204015230-c97cbf2\"),"},{"text":"  deploy(\"etl-netbank-instrumentationlog\",                \"0.2.1-20151206141753-328602f\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbusreference\",              \"1.0.0-20160219102944-9cec021\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbuseggression\",             \"1.0.0-20160307101954-998bb54\"),"},{"text":"  // ESTUARY Projects"},{"text":"  deploy(\"etl-b2k-bcmaster\",                              \"1.2.0-20151205070816-8a1df2c\"),"},{"text":"  deploy(\"etl-ccs-argus\",                                 \"1.2.0-20160219020933-ed2f468\"),"},{"text":"  deploy(\"etl-commscore-targetedmarketing\",               \"1.2.1-20151210233232-51147ef\"),"},{"text":"  deploy(\"etl-ebilling-pricinginformation\",               \"2.1.0-20151204013114-f12758c\"),"},{"text":"  deploy(\"etl-gmas-pricinginformation\",                   \"2.1.0-20151204014023-9a11be5\"),"},{"text":"  deploy(\"etl-grouplanding-bankwest\",                     \"1.1.0-20151204011733-2f50082\"),"},{"text":"  deploy(\"etl-podslife400_lifeinsurance\",                 \"1.2.0-20151204025505-8cf2067\"),"},{"text":"  deploy(\"etl-hdfs-purge\",                                \"1.1.0-20151204025706-b136493\"),"},{"text":"  deploy(\"etl-exacttarget-sms\",                           \"0.1.0-20160311155253-6d4cef3\"),"},{"text":"  // OTHERS"},{"text":"  deploy(\"etl-omnia-mrd\",                                 \"0.1.6-20150527095451-8c0a0b3\"),"},{"text":"  deploy(\"etl-generic-utils\",                             \"0.0.1-20141118182034-dba1749\"),"},{"text":"  deploy(\"etl-genericscripts\",                            \"1.0.0-20150321164912\"),"},{"text":"  deploy(\"etl-payments-fundsflow\",                        \"0.0.1-20150225102813-c78d661\"),"},{"text":"  deploy(\"chronos-kickstart-main\",                        \"0.1.0-20160204091053-bd6042e\")"},{"text":")"},{"text":""},{"text":"environment(env.scoring.preprod)("},{"text":")"},{"text":""},{"text":"environment(env.datascience.prod)("},{"text":"  // SCORING Projects"},{"text":"  deploy(\"ops-scoring\",                                   \"3.11.0-20151207075415-76d9d29\"),"},{"text":"  deploy(\"etl-omnia-scores\",                              \"1.1.4-20160308133602-05cac69\"),"},{"text":"  // DATAPRODUCTS Projects"},{"text":"  deploy(\"ops-engineered-features\",                       \"2.5.1-20150428112740\"),"},{"text":"  deploy(\"hydro-legacy\",                                  \"0.4.1-20160121160904-4dff107\"),"},{"text":"  deploy(\"etl-features-payments\",                         \"1.0.0-20150414110437-58104a2\"),"},{"text":"  deploy(\"dataproducts-records-instrlog\",                 \"1.2.2-20150908182517-73920d8\"),"},{"text":"  deploy(\"dataproducts-features-instrlog\",                \"1.5.2-20160201141421-92419a7\"),"},{"text":"  deploy(\"dataproducts-features-commscore\",               \"1.0.1-20151203092738-715c6b9\"),"},{"text":"  deploy(\"dataproducts-records-commincome\",               \"0.0.1-20151125111301-ca34613\"),"},{"text":"  deploy(\"etl-features-gcps\",                             \"1.3.1-20160107160445-4984a6c\"),"},{"text":"  deploy(\"etl-features-hls\",                              \"1.5.1-20160209154826-39627ae\"),"},{"text":"  deploy(\"etl-features-gdw\",                              \"1.7.0-20160317195822-358b069\"),"},{"text":"  deploy(\"etl-features-paymentjournal\",                   \"1.3.2-20160311094112-fcfd66b\"),"},{"text":"  deploy(\"etl-features-commsee\",                          \"1.6.0-20160316213754-69b583a\"),"},{"text":"  deploy(\"etl-records-fundsflow\",                         \"0.0.5-20150526120607-53f1241\"),"},{"text":"  //deploy(\"etl-feature-events\",                            \"0.0.1-20150212180203-257c39d\"),"},{"text":"  deploy(\"etl-features-interactions\",                     \"0.0.1-20150527191327-74d536b\"),"},{"text":"  deploy(\"etl-features-omnia\",                            \"1.1.0-20151127093917-bff7c17\"),"},{"text":"  deploy(\"dataproducts-features-tcs\",                     \"0.1.0-20151127095057-6f1e0e0\"),"},{"text":"  deploy(\"dataproducts-features-stigcar\",                 \"1.1.0-20151203183327-a0391e1\"),"},{"text":"  deploy(\"dataproducts-hydro-ingestion\",                  \"0.1.1-20160208105534-2b3e2b0\"),"},{"text":"  deploy(\"dataproducts-features-cep\",                     \"1.3.1-20160301031109-8370178\"),"},{"text":"  deploy(\"dataproducts-records-gcps\",                     \"1.1.0-20150825142558-77dacb4\"),"},{"text":"  deploy(\"dataproducts-features-personalloancollections\", \"1.0.0-20151201170110-3c21496\"),"},{"text":"  deploy(\"dataproducts-features-governance-quality\",      \"1.0.0-20151202152025-7b0abb7\"),"},{"text":"  deploy(\"dataproducts-features-sitecatalyst\",            \"2.0.0-20160224064019-224f9ff\"),"},{"text":"  deploy(\"dataproducts-tools-rdvextract\",                 \"1.0.0-20160219070417-28178ff\"),"},{"text":"  deploy(\"dataproducts-recycler-truck\",                   \"4.7.0-20160301172626-dc554fb\"),"},{"text":"  deploy(\"etl-cep-dumptruck\",                             \"4.7.0-20160301172626-dc554fb\"),"},{"text":"  deploy(\"etl-cep-vertebrae\",                             \"4.7.0-20160301172626-dc554fb\"),"},{"text":"  deploy(\"dataproducts-records-cardpurchase\",             \"0.0.2-20151013125410-1dced01\"),"},{"text":"  deploy(\"dataproducts-records-commsee\",                  \"0.0.1-20151127101206-9c33cf5\"),"},{"text":"  deploy(\"dataproducts-records-bwacommscore\",             \"0.0.1-20151102170940-47e7da3\"),"},{"text":"  deploy(\"dataproducts-scores-merchant\",                  \"1.0.1-20151209233456-cce9e46\"),"},{"text":"  deploy(\"dataproducts-ironchef\",                         \"0.1.0-20160311022136-f582ad3\"),"},{"text":"  //deploy(\"etl-cep-chiropractor\",                          \"4.1.1-20151106154904-625f902\")"},{"text":"  deploy(\"future-parquet\",                                \"0.0.1-20151116085119-c9c0372\"),"},{"text":"  deploy(\"dataproducts-records-onecommscore\",             \"0.0.1-20151203194333-8af4b58\"),"},{"text":"  deploy(\"etl-cep-triggersexecution\",                     \"1.2.0-20150811110401-05f75c8\"),"},{"text":"  deploy(\"dataproducts-features-clickstream-coppersmith\", \"0.0.1-20160125142029-a15becb\"),"},{"text":"  deploy(\"dataproducts-features-sap\",                     \"3.0.0-20160317191958-7963ee7\"),"},{"text":"  deploy(\"dataproducts-records-paymentjournal\",           \"0.0.1-20160229143536-7466968\"),"},{"text":"  // BICD Projects"},{"text":"  deploy(\"etl-bicd\",                                      \"1.1.1-20150618123855\"),"},{"text":"  deploy(\"etl-fdm\",                                       \"1.1.2-20160212093146\"),"},{"text":"  deploy(\"etl-bicd-parlour\",                              \"1.0.0-20150320212253-2a19485\"),"},{"text":"  deploy(\"etl-hls-hls\",                                   \"3.1.2-20160306222444-8a73980\"),"},{"text":"  deploy(\"etl-osca-osca\",                                 \"2.0.0-20150715155410-c9d87ae\"),"},{"text":"  deploy(\"etl-fdm-fdm\",                                   \"2.2.1-20160216113554-cfdcc65\"),"},{"text":"  deploy(\"etl-tcs-tcs\",                                   \"1.1.2-20160304043716-6b05174\"),"},{"text":"  deploy(\"etl-commscore-commscore\",                       \"1.1.0-20150714134851-92f9422\"),"},{"text":"  deploy(\"etl-gcps-gcps\",                                 \"2.0.1-20160304180331-f3f10ba\"),"},{"text":"  deploy(\"etl-powercurve-powercurve\",                     \"1.3.0-20160219130452-018bcf6\"),"},{"text":"  deploy(\"etl-bicd-util\",                                 \"1.0.0-20150409174458-6e6564f\"),"},{"text":"  deploy(\"etl-wss-wss\",                                   \"1.2.1-20160217143116-255b388\"),"},{"text":"  deploy(\"etl-psgl\",                                      \"0.2.1-20160316052133-bd66658\"),"},{"text":"  deploy(\"etl-omnia-fdm\",                                 \"0.3.0-20160302055144-2175180\"),"},{"text":"  deploy(\"etl-cse-cse\",                                   \"0.0.1-20160128133807-445556d\"),"},{"text":"  deploy(\"etl-mls-mls\",                                   \"0.4.1-20160315222924-d5a8080\"),"},{"text":"  // ALPHA Projects"},{"text":"  deploy(\"etl-triad-triad\",                               \"0.0.1-20150813145830-3705bf4-CDH5\"),"},{"text":"  deploy(\"etl-navpath\",                                   \"2.2.0-20151201023201-c829cf1\"),"},{"text":"  deploy(\"etl-commscore-superfile\",                       \"1.0.1-20151127160229-1c9ef3b\"),"},{"text":"  deploy(\"etl-farlo-clm\",                                 \"2.1.0-20151127051359-30ac114\"),"},{"text":"  deploy(\"etl-paxuspapa-wms\",                             \"1.1.0-20151127162046-bfe0d22\"),"},{"text":"  deploy(\"etl-bankwest-filter\",                           \"1.0.0-20150924123513-0cc42b2\"),"},{"text":"  // SYNERGY Projects"},{"text":"  deploy(\"etl-roymorgan-ces\",                             \"1.0.4-20160209033139-6bca545\"),"},{"text":"  deploy(\"etl-gdw-account\",                               \"1.1.4-20151210053118-e0e7c6f\"),"},{"text":"  deploy(\"etl-sapcrm-pricinginformation\",                 \"2.0.1-20151127102526-fd76582\"),"},{"text":"  deploy(\"etl-gdw-accountset2\",                           \"1.1.2-20151127103655-b313de3\"),"},{"text":"  deploy(\"etl-gdw-cep\",                                   \"1.0.6-20151220233507-4fb04f3\"),"},{"text":"  deploy(\"etl-gdw-ref\",                                   \"1.0.3-20151127081502-c15f831\"),"},{"text":"  deploy(\"etl-sapcrm-glas\",                               \"3.1.0-20160222001155-ae9cb99\"),"},{"text":"  deploy(\"etl-sapcrmdso-glas\",                            \"3.1.0-20160222000819-a8dc9b4\"),"},{"text":"  deploy(\"etl-sap-businesspartner\",                       \"0.0.1-20150925094829-d822cbb\"),"},{"text":"  deploy(\"etl-sap-insurance\",                             \"1.1.0-20160222000934-4eae8f8\"),"},{"text":"  deploy(\"etl-cep-pegaih\",                                \"0.0.6-20151127104816-37a02b6\"),"},{"text":"  deploy(\"etl-commsee-glas\",                              \"1.0.0-20150321001034-36a00c6\"),"},{"text":"  deploy(\"etl-gdw-import\",                                \"2.0.0-20160311031526-4644702\"),"},{"text":"  // DATACRUNCHERS Projects"},{"text":"  deploy(\"etl-gla-pj\",                                    \"2.0.0-20150512141217-4b06c5e\"),"},{"text":"  deploy(\"etl-citi-gtts\",                                 \"1.0.0-20150320201809-bef4edb\"),"},{"text":"  deploy(\"etl-commsee-kiakatching\",                       \"1.0.0-20150320140107-05bdec3\"),"},{"text":"  deploy(\"etl-commsee-sme\",                               \"1.0.0-20150520175947-5a83107\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbus\",                       \"2.0.0-20160310113624-a274939\"),"},{"text":"  deploy(\"etl-commsee-npn\",                               \"1.0.0-20150520175516-c15eaed\"),"},{"text":"  deploy(\"etl-gla-commsee\",                               \"1.0.0-20150508144821-a407b06\"),"},{"text":"  deploy(\"etl-commsee-car\",                               \"0.2.0-20150807184457-d905aaa\"),"},{"text":"  deploy(\"etl-sdw-sitecatalyst\",                          \"2.0.0-20151104095346-85726dd\"),"},{"text":"  deploy(\"etl-netbank-instrumentationlog\",                \"0.1.1-20151125175519-eb12518\"),"},{"text":"  deploy(\"etl-commscore-pco\",                             \"0.1.1-20160210163608-6560f0e\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbusreference\",              \"1.0.0-20160219102944-9cec021\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbuseggression\",             \"1.0.0-20160307101954-998bb54\"),"},{"text":"  // ESTUARY Projects"},{"text":"  deploy(\"etl-grouplanding-bankwest\",                     \"1.0.0-20150521105520-7bd1d0b\"),"},{"text":"  deploy(\"etl-commscore-targetedmarketing\",               \"1.2.1-20151210233232-51147ef\"),"},{"text":"  deploy(\"etl-gmas-pricinginformation\",                   \"1.0.0-20150320191402-99592ad\"),"},{"text":"  deploy(\"etl-podslife400_lifeinsurance\",                 \"1.2.0-20151204025505-8cf2067\"),"},{"text":"  deploy(\"etl-ebilling-pricinginformation\",               \"1.0.0-20150321130916-6437895\"),"},{"text":"  deploy(\"etl-hdfs-purge\",                                \"1.1.0-20150910113942-9987f22\"),"},{"text":"  deploy(\"etl-b2k-bcmaster\",                              \"1.1.0-20151022113929-6623d85\"),"},{"text":"  deploy(\"etl-ccs-argus\",                                 \"0.1.0-20151019145857-adcafe8\"),"},{"text":"  deploy(\"etl-exacttarget-sms\",                           \"0.1.0-20160304135908-87713db\"),"},{"text":"  //OTHERS"},{"text":"  deploy(\"etl-omnia-mrd\",                                 \"0.1.6-20150527095451-8c0a0b3\"),"},{"text":"  deploy(\"etl-genericscripts\",                            \"1.0.0-20150321164912\"),"},{"text":"  //deploy(\"ops-loadstats\",                                 \"0.0.1-20140626140245\"),"},{"text":"  //deploy(\"ops-datascience-directlife\",                  \"3.3.0-20150319141225\"),"},{"text":"  //deploy(\"ops-datascience-directlife_extract\",          \"0.3.6-20150708073448-350f36e\"),"},{"text":"  //deploy(\"ops-datascience-directlife_bundler\",          \"2.1.0-20150708073448-350f36e\"),"},{"text":"  deploy(\"etl-generic-utils\",                             \"0.0.1-20141118182034-dba1749\"),"},{"text":"  deploy(\"datascience-swoop\",                             \"0.0.6-20160314161036\")"},{"text":")"},{"text":""},{"text":"environment(env.datascience.preprod)("},{"text":"  deploy(\"hydro-legacy\",                                  \"0.4.1-20160121160904-4dff107\"),"},{"text":"  deploy(\"ops-scoring\",                                   \"3.8.0-20150708074313-350f36e\"),"},{"text":"  deploy(\"ops-engineered-features\",                       \"2.5.1-20150428112740\"),"},{"text":"  deploy(\"etl-bicd\",                                      \"1.1.1-20150618123855\"),"},{"text":"  deploy(\"etl-bicd-util\",                                 \"1.0.0-20150409174458-6e6564f\"),"},{"text":"  deploy(\"etl-bicd-parlour\",                              \"1.0.0-20150320212253-2a19485\"),"},{"text":"  deploy(\"etl-cse-cse\",                                   \"0.0.1-20160211124454-7761a35\"),"},{"text":"  deploy(\"etl-genericscripts\",                            \"0.3.1-20140808180200\"),"},{"text":"  deploy(\"etl-roymorgan-ces\",                             \"1.0.4-20160209033139-6bca545\"),"},{"text":"  deploy(\"etl-gla-pj\",                                    \"1.0.0-20150320203009-57477b2\"),"},{"text":"  deploy(\"etl-features-payments\",                         \"1.0.2-20150423132803-3099419\"),"},{"text":"  deploy(\"etl-navpath\",                                   \"1.0.0-20150320153031-4f762b6\"),"},{"text":"  deploy(\"etl-citi-gtts\",                                 \"1.0.0-20150320201809-bef4edb\"),"},{"text":"  deploy(\"etl-sapcrm-glas\",                               \"3.1.0-20160222001155-ae9cb99\"),"},{"text":"  deploy(\"etl-commsee-glas\",                              \"3.1.3-20160129055203-f0b1231\"),"},{"text":"  deploy(\"etl-sapcrmdso-glas\",                            \"3.1.0-20160222000819-a8dc9b4\"),"},{"text":"  deploy(\"etl-commsee-personalbalancesheet\",              \"1.0.0-20150417151114-8254ac3\"),"},{"text":"  deploy(\"etl-commfx-foreignexchange\",                    \"1.2.0-20151127054356-d7e8b4e\"),"},{"text":"  deploy(\"etl-ebilling-pricinginformation\",               \"2.1.0-20160209005724-59f70fd\"),"},{"text":"  deploy(\"etl-commsee-kpi\",                               \"0.1.0-20150514155632-92e7cf9\"),"},{"text":"  deploy(\"etl-sitecatalyst-nimbus\",                       \"1.3.0-20151020113949-1725751\"),"},{"text":"  deploy(\"etl-gmas-pricinginformation\",                   \"2.1.0-20160209012000-99796db\"),"},{"text":"  deploy(\"etl-sapcrm-pricinginformation\",                 \"2.0.0-20151118095035-b208e09\"),"},{"text":"  deploy(\"etl-generic-utils\",                             \"0.0.1-20150304175651-dba1749\"),"},{"text":"  deploy(\"etl-farlo-clm\",                                 \"2.2.0-20151201013207-7787717\"),"},{"text":"  deploy(\"etl-msc-glas\",                                  \"1.0.0-20151130142742-b749d9c\"),"},{"text":"  deploy(\"etl-commsee-car\",                               \"0.2.0-20150820133644-0fc871d\"),"},{"text":"  deploy(\"dataproducts-features-sitecatalyst\",            \"1.1.3-20160204032521-6ad276c\"),"},{"text":"  deploy(\"dataproducts-tools-rdvextract\",                 \"1.0.0-20160219070417-28178ff\"),"},{"text":"  deploy(\"dataproducts-records-commsee\",                  \"0.0.1-20151002142145-540e137\"),"},{"text":"  deploy(\"chronos-kickstart-main\",                        \"0.1.0-20160204091053-bd6042e\")"},{"text":"  /* Controller DBDeployer needs RPM  */"},{"text":"  //rpm(\"etl-controller-dbdeployer\",                      \"0.1.2\")"},{"text":")"},{"text":""},{"text":"environment(env.datascience.dev)("},{"text":"  deploy(\"etl-sapcrmdso-glas\",                            \"1.1.1-20151113101543-ab55530\"),"},{"text":"  deploy(\"etl-commsee-glas\",                              \"1.0.0-20150321001034-36a00c6\"),"},{"text":"  deploy(\"etl-sapcrm-glas\",                               \"1.0.0-20150320221715-838a273\"),"},{"text":"  deploy(\"etl-commscore-bankwestaggregation\",             \"1.0.0-20150320164259-370c8bd\"),"},{"text":"  deploy(\"etl-sapcrm-pricinginformation\",                 \"1.0.0-20150320192744-5e64ffc\"),"},{"text":"  //deploy(\"etl-features-interactions\",                     \"0.0.1-20150218151553-2750eee\"),"},{"text":"  deploy(\"etl-omnia-scores\",                              \"1.1.4-20160308133602-05cac69\"),"},{"text":"  deploy(\"etl-farlo-clm\",                                 \"0.0.1-20150508101131-374699a-ST\"),"},{"text":"  deploy(\"etl-b2k-bcmaster\",                              \"1.1.0-20151022113929-6623d85\"),"},{"text":"  deploy(\"etl-hdfs-purge\",                                \"1.1.0-20150910113942-9987f22\"),"},{"text":"  deploy(\"chronos-kickstart-main\",                        \"0.1.0-20160204091053-bd6042e\"),"},{"text":"  deploy(\"etl-hbd-homebuying\",                            \"0.1.1-20160322114156-79e0144\")"},{"text":")"},{"text":""},{"text":"environment(env.datascience.test)("},{"text":"  deploy(\"scoring-claims\",                                \"0.0.5-20160223144621-53fe038\"),"},{"text":"  deploy(\"etl-omnia-mrd\",                                 \"0.1.6-20150527095451-8c0a0b3\"),"},{"text":"  deploy(\"etl-sapcrmdso-glas\",                            \"1.1.1-20150903154322-0ac419d\"),"},{"text":"  deploy(\"etl-commsee-glas\",                              \"3.1.0-20160113063055-f78fb96\"),"},{"text":"  deploy(\"etl-sapcrm-glas\",                               \"1.0.0-20150320221715-838a273\"),"},{"text":"  deploy(\"etl-sap-insurance\",                             \"1.1.0-20160222000934-4eae8f8\"),"},{"text":"  deploy(\"etl-generic-utils\",                             \"0.0.1-20141118182034-dba1749\"),"},{"text":"  deploy(\"etl-commscore-bankwestaggregation\",             \"1.0.0-20150320164259-370c8bd\"),"},{"text":"  //deploy(\"etl-gcps-bcs\",                                  \"0.0.1-20150105133108-2e2ce28\"),"},{"text":"  deploy(\"etl-cep-reporting\",                             \"1.0.0-20150320173152-271b014\"),"},{"text":"  deploy(\"etl-citi-gtts\",                                 \"1.0.0-20151012105610-082ca59\"),"},{"text":"  deploy(\"etl-gdw-cep\",                                   \"1.0.0-20150320125611-778249e\"),"},{"text":"  deploy(\"etl-commsee-wallet\",                            \"1.1.3-20151113100427-a876611\"),"},{"text":"  deploy(\"etl-commsee-kiakatching\",                       \"1.0.0-20150320140107-05bdec3\"),"},{"text":"  deploy(\"etl-commsee-onlinefeedback\",                    \"1.0.0-20151015102436-12b2b7d\"),"},{"text":"  deploy(\"etl-ebilling-pricinginformation\",               \"2.1.0-20160209005724-59f70fd\"),"},{"text":"  deploy(\"etl-commscore-superfile\",                       \"1.0.1-20151127160229-1c9ef3b\"),"},{"text":"  deploy(\"etl-farlo-clm\",                                 \"1.0.0-20150811192524-a6d5f0f\"),"},{"text":"  deploy(\"etl-genesys-collections\",                       \"1.0.0-20151127162736-34d6c1e\"),"},{"text":"  deploy(\"etl-gmas-pricinginformation\",                   \"2.1.0-20160209012000-99796db\"),"},{"text":"  deploy(\"bicd.teradata-triggers\",                        \"0.0.2-20140611165352\"),"},{"text":"  deploy(\"etl-bicd-parlour\",                              \"1.0.0-20150320212253-2a19485\"),"},{"text":"  deploy(\"etl-bicd\",                                      \"1.0.0-20150321164912\"),"},{"text":"  deploy(\"etl-bicd-util\",                                 \"1.0.0-20150409174458-6e6564f\"),"},{"text":"  deploy(\"etl-hdfs-purge\",                                \"1.1.0-20150910113942-9987f22\"),"},{"text":"  deploy(\"etl-gla-pj\",                                    \"3.0.0-20151030133708-f6cf84e\"),"},{"text":"  deploy(\"etl-netbank-instrumentationlog\",                \"0.1.1-20151125175519-eb12518\"),"},{"text":"  deploy(\"etl-edm-downstream\",                            \"2.1.0-20151201235650-92cfc74\"),"},{"text":"  deploy(\"chronos-kickstart-main\",                        \"0.1.0-20160204091053-bd6042e\"),"},{"text":"  deploy(\"etl-gdw-import\",                                \"2.0.0-20160311031526-4644702\"),"},{"text":"  deploy(\"etl-hbd-homebuying\",                            \"0.1.1-20160322114156-79e0144\")"},{"text":")"},{"text":""},{"text":"environment(env.datascience.test2)("},{"text":"  deploy(\"scoring-claims\",                                \"0.0.5-20160223144621-53fe038\"),"},{"text":"  deploy(\"etl-sapcrmdso-glas\",                            \"3.1.0-20160308015646-166839b\"),"},{"text":"  deploy(\"etl-commsee-glas\",                              \"3.1.3-20160129055203-f0b1231\"),"},{"text":"  deploy(\"etl-sapcrm-glas\",                               \"3.1.0-20160222001155-ae9cb99\"),"},{"text":"  deploy(\"etl-generic-utils\",                             \"0.0.1-20141118182034-dba1749\"),"},{"text":"  deploy(\"etl-commsee-car\",                               \"0.2.0-20150807184457-d905aaa\"),"},{"text":"  deploy(\"etl-hdfs-purge\",                                \"1.1.0-20150910113942-9987f22\"),"},{"text":"  deploy(\"etl-farlo-clm\",                                 \"2.1.0-20151119011923-493b9e9-ST-R3\"),"},{"text":"  deploy(\"chronos-kickstart-main\",                        \"0.1.0-20160204091053-bd6042e\")"},{"text":")"},{"text":""},{"text":"environment(env.staging.dev)("},{"text":")"}],"start":0,"size":357,"isLastPage":true}'
    @lines = JSON.parse(@jsonData)
    # uri = "https://stash.odp.cba/rest/api/1.0/projects/OMNIA/repos/ops.logical/browse/build.sbt"
    # rest_resource = RestClient::Resource.new(uri, "radhas", "3Aishu@22")
    # lines = rest_resource.get
    #@lines = JSON.parse(lines)
    
  end
end
