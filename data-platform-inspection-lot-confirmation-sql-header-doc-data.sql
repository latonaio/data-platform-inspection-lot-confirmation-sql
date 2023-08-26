CREATE TABLE `data_platform_inspection_lot_confirmation_header_doc_data`
(
    `InspectionLot`                  int(16) NOT NULL,
    `Operations`                     int(16) NOT NULL,
    `OperationsItem`                 int(6) NOT NULL,
    `OperationID`                    int(4) NOT NULL,
    `ConfirmationCountingID`         int(4) NOT NULL,
    `DocType`                        varchar(20) NOT NULL,
    `DocVersionID`                   int(4) NOT NULL,
    `DocID`                          varchar(100) NOT NULL,
    `FileExtension`                  varchar(20) NOT NULL,
    `FileName`                       varchar(200) DEFAULT NULL,
    `FilePath`                       varchar(1000) DEFAULT NULL,
    `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,

    PRIMARY KEY (`InspectionLot`, `Operations`, `OperationsItem`, `OperationID`, `ConfirmationCountingID`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DPFMInspectionLotConfHeaderDocData_fk` FOREIGN KEY (`InspectionLot`, `Operations`, `OperationsItem`, `OperationID`, `ConfirmationCountingID`) REFERENCES `data_platform_inspection_lot_confirmation_header_data` (`InspectionLot`, `Operations`, `OperationsItem`, `OperationID`, `ConfirmationCountingID`),
    CONSTRAINT `DPFMInspectionLotConfHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMInspectionLotConfHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
