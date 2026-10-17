# docassemble.clientsignature



## Author

Quinten Steenhuis, admin@admin.com



## Automated interview tests

The draft isolated ALKiln workflow covers the anonymous sign-in boundary. Successful document generation requires the `docassemble.gbls` and `docassemble.microsoftgraph` dependencies, the GBLS Azure sign-in route `/authorize/azure`, and an authorized GBLS test account. That account must access the SharePoint site `gblsma.sharepoint.com:/sites/helpdesk` and its `Basic_Templates` drive. Provide at least one synthetic template with resolvable interview fields. The user profile supplies the advocate name, email, address and job title. Optional LegalServer delivery additionally needs an authorized test matter and case email.

The bare local include names `basic-questions-gbls.yml`, `letter_questions.yml`, and `court_questions.yml` are absent from this repository; their resolution from the gbls dependency must be verified before the interview can load. Full authenticated completion is blocked pending this setup. No credentials or test doubles are included.

The isolated workflow passes the optional repository secret `ALKILN_DOCASSEMBLE_CONFIG` to the temporary server as `CONFIG_CONTENTS`. Store only disposable test-server YAML configuration there, with the real authorized sandbox integration settings described above. If unset, the server uses its default configuration. This input does not resolve missing includes, install private dependencies, create OAuth accounts, or provision external matters/templates. Configuration-boundary scenarios intentionally exercise missing configuration; a successful integration scenario will also need to be authored with the provisioned synthetic records.
