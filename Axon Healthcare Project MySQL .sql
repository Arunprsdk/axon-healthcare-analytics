create database axon_healthcare;
use axon_healthcare;
CREATE DATABASE IF NOT EXISTS axon_healthcare;
USE axon_healthcare;

CREATE TABLE Department (
    DepartmentID        INT PRIMARY KEY,
    DepartmentName       VARCHAR(100),
    SpecialtyCovered     VARCHAR(100),
    Location             VARCHAR(100),
    DepartmentType       VARCHAR(50)
);

CREATE TABLE Patient (
    PatientID             INT PRIMARY KEY,
    FirstName             VARCHAR(50),
    LastName              VARCHAR(50),
    Gender                VARCHAR(20),
    DateOfBirth           DATE,
    Age                   INT,
    BloodType             VARCHAR(5),
    PhoneNumber           VARCHAR(30),
    AlternatePhoneNumber  VARCHAR(30),
    Address               VARCHAR(255),
    City                  VARCHAR(50),
    Country               VARCHAR(50),
    InsuranceProvider     VARCHAR(100),
    PolicyNumber          VARCHAR(20),
    MaritalStatus         VARCHAR(20),
    Race                  VARCHAR(50),
    Ethnicity             VARCHAR(50),
    ChronicConditions     VARCHAR(255),
    Allergies             VARCHAR(255),
    MedicalHistory        VARCHAR(255),
    PatientStatus         VARCHAR(20),
    RegistrationDate      DATE,
    EmergencyContactName  VARCHAR(100),
    EmergencyContactPhone VARCHAR(30)
);

CREATE TABLE Doctor (
    DoctorID           INT PRIMARY KEY,
    DoctorName         VARCHAR(100),
    Gender             VARCHAR(20),
    Specialty          VARCHAR(50),
    DepartmentID       INT,
    YearsOfExperience  INT,
    HospitalAffiliation VARCHAR(150),
    ClinicName         VARCHAR(150),
    PhoneNumber        VARCHAR(30),
    Email              VARCHAR(100),
    LicenseNumber      VARCHAR(20),
    IsActive           VARCHAR(5),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Visit (
    VisitID              INT PRIMARY KEY,
    PatientID            INT,
    DoctorID             INT,
    VisitDate            DATE,
    VisitYear             INT,
    VisitMonth            INT,
    VisitMonthName         VARCHAR(20),
    VisitQuarter          INT,
    VisitType             VARCHAR(50),
    VisitStatus           VARCHAR(20),
    Diagnosis             VARCHAR(100),
    DiagnosisCode         VARCHAR(20),
    ReasonForVisit         VARCHAR(100),
    FollowUpRequired      VARCHAR(5),
    PrescribedMedications  VARCHAR(100),
    VisitDurationMins      INT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Treatment (
    TreatmentID           INT PRIMARY KEY,
    VisitID               INT,
    TreatmentType          VARCHAR(50),
    TreatmentName          VARCHAR(100),
    MedicationPrescribed   VARCHAR(100),
    Dosage                 VARCHAR(20),
    Instructions            VARCHAR(150),
    TreatmentStartDate      DATE,
    TreatmentEndDate        DATE,
    DurationDays            INT,
    Status                  VARCHAR(20),
    Outcome                 VARCHAR(20),
    DirectTreatmentCost     DECIMAL(10,2),
    TotalEpisodeCost        DECIMAL(10,2),
    TreatmentDescription    VARCHAR(100),
    FOREIGN KEY (VisitID) REFERENCES Visit(VisitID)
);

CREATE TABLE LabResult (
    LabResultID          INT PRIMARY KEY,
    VisitID              INT,
    OrderedByDoctorID    INT,
    TestName             VARCHAR(50),
    TestDate             DATE,
    TestYear              INT,
    TestMonth             INT,
    TestMonthName          VARCHAR(20),
    TestResult            VARCHAR(20),
    NumericResultValue     DECIMAL(10,2),
    Units                  VARCHAR(10),
    ReferenceRange          VARCHAR(20),
    Comments                VARCHAR(150),
    FOREIGN KEY (VisitID) REFERENCES Visit(VisitID),
    FOREIGN KEY (OrderedByDoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Billing (
    BillID              INT PRIMARY KEY,
    VisitID             INT,
    PatientID           INT,
    AmountBilled        DECIMAL(10,2),
    InsuranceCovered    DECIMAL(10,2),
    PatientPaid         DECIMAL(10,2),
    Outstanding         DECIMAL(10,2),
    PaymentStatus       VARCHAR(20),
    BillDate            DATE,
    PaymentDate         DATE,
    FOREIGN KEY (VisitID) REFERENCES Visit(VisitID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE InsuranceProvider (
    ProviderID              VARCHAR(10) PRIMARY KEY,
    ProviderName            VARCHAR(100),
    TickerSymbol            VARCHAR(10),
    PrimaryPlanType         VARCHAR(10),
    NetworkScope            VARCHAR(20),
    MemberSatisfaction      DECIMAL(3,1),
    CustomerServicePhone    VARCHAR(30),
    FinancialRating         VARCHAR(5)
);

CREATE TABLE InsurancePolicy (
    PolicyNumber        VARCHAR(20) PRIMARY KEY,
    PatientID            INT,
    ProviderID            VARCHAR(10),
    ProviderName          VARCHAR(100),
    PlanType              VARCHAR(10),
    CoverageTier          VARCHAR(30),
    MonthlyPremium        DECIMAL(10,2),
    AnnualDeductible      DECIMAL(10,2),
    Copay                 DECIMAL(10,2),
    OutOfPocketMax        DECIMAL(10,2),
    CoinsurancePercent    DECIMAL(5,2),
    CoverageStartDate     DATE,
    CoverageEndDate       DATE,
    PolicyStatus          VARCHAR(20),
    RxCoverage            VARCHAR(5),
    MentalHealthCoverage  VARCHAR(5),
    DentalRider           VARCHAR(5),
    VisionRider           VARCHAR(5),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (ProviderID) REFERENCES InsuranceProvider(ProviderID)
);

CREATE TABLE InsuranceClaims (
    ClaimID                    VARCHAR(20) PRIMARY KEY,
    BillID                     INT,
    VisitID                    INT,
    PatientID                  INT,
    PolicyNumber               VARCHAR(20),
    ProviderID                 VARCHAR(10),
    ProviderName               VARCHAR(100),
    PlanType                   VARCHAR(10),
    ClaimType                  VARCHAR(30),
    ClaimDate                  DATE,
    AmountBilled                DECIMAL(10,2),
    AmountClaimed                DECIMAL(10,2),
    ApprovedAmount                DECIMAL(10,2),
    PatientResponsibility         DECIMAL(10,2),
    Outstanding                   DECIMAL(10,2),
    ClaimStatus                   VARCHAR(30),
    DenialReason                  VARCHAR(50),
    ProcessingDays                 INT,
    AppealStatus                   VARCHAR(20),
    SubmittedElectronically         VARCHAR(5),
    NetworkStatus                    VARCHAR(20),
    FOREIGN KEY (BillID) REFERENCES Billing(BillID),
    FOREIGN KEY (VisitID) REFERENCES Visit(VisitID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (PolicyNumber) REFERENCES InsurancePolicy(PolicyNumber),
    FOREIGN KEY (ProviderID) REFERENCES InsuranceProvider(ProviderID));
SHOW TABLES;

#Table row count 
SELECT COUNT(*) FROM axon_healthcare.department;
SELECT COUNT(*) FROM axon_healthcare.doctor;
SELECT COUNT(*) FROM axon_healthcare.patient;
SELECT COUNT(*) FROM axon_healthcare.visit;
SELECT COUNT(*) FROM axon_healthcare.treatment;
SELECT COUNT(*) FROM axon_healthcare.labresult;
SELECT COUNT(*) FROM axon_healthcare.billing;
SELECT COUNT(*) FROM axon_healthcare.insuranceprovider;
SELECT COUNT(*) FROM axon_healthcare.insurancepolicy;
SELECT COUNT(*) FROM axon_healthcare.insuranceclaims;

#View tables
SELECT * FROM axon_healthcare.department;
SELECT * from axon_healthcare.doctor;
SELECT * FROM axon_healthcare.patient;
SELECT * FROM axon_healthcare.visit;
SELECT * FROM axon_healthcare.treatment;
SELECT * FROM axon_healthcare.labresult;
SELECT * FROM axon_healthcare.billing;
SELECT * FROM axon_healthcare.insuranceprovider;
SELECT * FROM axon_healthcare.insurancepolicy;
SELECT * FROM axon_healthcare.insuranceclaims;

#Data completeness check :
SELECT * FROM patient WHERE FirstName IS NULL OR LastName IS NULL;
SELECT * FROM visit WHERE VisitType IS NULL OR VisitDate IS NULL;

#Data consistency check:
SELECT v.VisitID, v.PatientID, p.PatientID
FROM visit v
LEFT JOIN patient p ON v.PatientID = p.PatientID
WHERE p.PatientID IS NULL;

#Duplicate check
SELECT PatientID, COUNT(*) FROM patient GROUP BY PatientID HAVING COUNT(*) > 1;





