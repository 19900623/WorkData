/*
 * ER/Studio Data Architect 10.0 SQL Code Generation
 * Company :      1434335439@qq.com
 * Project :      ��̬����(��ֵ��).DM1
 * Author :       1434335439@qq.com
 *
 * Date Created : Wednesday, November 09, 2016 15:51:33
 * Target DBMS : Microsoft SQL Server 2014
 */

/* 
 * TABLE: EF_CATEGORY 
 */

CREATE TABLE EF_CATEGORY(
    CATEGORY_ID    numeric(10, 0)    NOT NULL,
    MODEL_ID       numeric(10, 0)    NULL,
    NAME           varchar(50)       NULL,
    CODE           varchar(50)       NULL,
    CONSTRAINT PK_CATEGORY PRIMARY KEY NONCLUSTERED (CATEGORY_ID)
)
go



IF OBJECT_ID('EF_CATEGORY') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CATEGORY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CATEGORY >>>'
go

/* 
 * TABLE: EF_CATEGORY_CONTENT 
 */

CREATE TABLE EF_CATEGORY_CONTENT(
    CATEGORY_ID    numeric(10, 0)    NOT NULL,
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (CATEGORY_ID, CONTENT_ID)
)
go



IF OBJECT_ID('EF_CATEGORY_CONTENT') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CATEGORY_CONTENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CATEGORY_CONTENT >>>'
go

/* 
 * TABLE: EF_CONTENT 
 */

CREATE TABLE EF_CONTENT(
    CONTENT_ID    numeric(10, 0)    NOT NULL,
    MODEL_ID      numeric(10, 0)    NULL,
    CONSTRAINT PK_CONTENT PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT >>>'
go

/* 
 * TABLE: EF_CONTENT_DESCRIPTION_FIELD 
 */

CREATE TABLE EF_CONTENT_DESCRIPTION_FIELD(
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    FIELD_CODE     nvarchar(50)      NULL,
    FIELD_VALUE    nvarchar(500)     NULL,
    CONSTRAINT PK24 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT_DESCRIPTION_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT_DESCRIPTION_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT_DESCRIPTION_FIELD >>>'
go

/* 
 * TABLE: EF_CONTENT_DOUBLE_FIELD 
 */

CREATE TABLE EF_CONTENT_DOUBLE_FIELD(
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    FIELD_CODE     nvarchar(50)      NULL,
    FIELD_VALUE    decimal(18, 2)    NULL,
    CONSTRAINT PK22 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT_DOUBLE_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT_DOUBLE_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT_DOUBLE_FIELD >>>'
go

/* 
 * TABLE: EF_CONTENT_INT_FIELD 
 */

CREATE TABLE EF_CONTENT_INT_FIELD(
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    FIELD_CODE     nvarchar(50)      NULL,
    FIELD_VALUE    int               NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT_INT_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT_INT_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT_INT_FIELD >>>'
go

/* 
 * TABLE: EF_CONTENT_STRING_FIELD 
 */

CREATE TABLE EF_CONTENT_STRING_FIELD(
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    FIELD_CODE     nvarchar(50)      NULL,
    FIELD_VALUE    nvarchar(50)      NULL,
    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT_STRING_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT_STRING_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT_STRING_FIELD >>>'
go

/* 
 * TABLE: EF_CONTENT_TEXT_FIELD 
 */

CREATE TABLE EF_CONTENT_TEXT_FIELD(
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    FIELD_CODE     nvarchar(50)      NULL,
    FIELD_VALUE    text              NULL,
    CONSTRAINT PK21 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT_TEXT_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT_TEXT_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT_TEXT_FIELD >>>'
go

/* 
 * TABLE: EF_CONTENT_TIME_FIELD 
 */

CREATE TABLE EF_CONTENT_TIME_FIELD(
    CONTENT_ID     numeric(10, 0)    NOT NULL,
    FIELD_CODE     nvarchar(50)      NULL,
    FIELD_VALUE    datetime          NULL,
    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('EF_CONTENT_TIME_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_CONTENT_TIME_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_CONTENT_TIME_FIELD >>>'
go

/* 
 * TABLE: EF_MODEL 
 */

CREATE TABLE EF_MODEL(
    MODEL_ID       numeric(10, 0)    NOT NULL,
    NAME           varchar(50)       NOT NULL,
    CODE           varchar(50)       NOT NULL,
    IS_CATEGORY    numeric(1, 0)     DEFAULT 1 NULL,
    DESCRIPTION    varchar(200)      NULL,
    CONSTRAINT PK_MODEL PRIMARY KEY NONCLUSTERED (MODEL_ID)
)
go



IF OBJECT_ID('EF_MODEL') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_MODEL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_MODEL >>>'
go

/* 
 * TABLE: EF_MODEL_FIELD 
 */

CREATE TABLE EF_MODEL_FIELD(
    MODEL_FIELD_ID     numeric(10, 0)    NOT NULL,
    MODEL_ID           numeric(10, 0)    NULL,
    NAME               varchar(50)       NOT NULL,
    CODE               varchar(50)       NOT NULL,
    CONTROL_TYPE       varchar(50)       NOT NULL,
    DATA_TYPE          varchar(50)       NOT NULL,
    DEFAULT_VALUE      varchar(50)       NULL,
    VALID_TIP_MSG      varchar(200)      NULL,
    VALID_PATTERN      varchar(500)      NULL,
    VALID_ERROR_MSG    varchar(200)      NULL,
    IS_SYSTEM_FIELD    numeric(1, 0)     DEFAULT 0 NULL,
    CONSTRAINT PK_MODEL_FIELD PRIMARY KEY NONCLUSTERED (MODEL_FIELD_ID)
)
go



IF OBJECT_ID('EF_MODEL_FIELD') IS NOT NULL
    PRINT '<<< CREATED TABLE EF_MODEL_FIELD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EF_MODEL_FIELD >>>'
go

/* 
 * TABLE: EF_CATEGORY 
 */

ALTER TABLE EF_CATEGORY ADD CONSTRAINT RefEF_MODEL14 
    FOREIGN KEY (MODEL_ID)
    REFERENCES EF_MODEL(MODEL_ID)
go


/* 
 * TABLE: EF_CATEGORY_CONTENT 
 */

ALTER TABLE EF_CATEGORY_CONTENT ADD CONSTRAINT RefEF_CONTENT12 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go

ALTER TABLE EF_CATEGORY_CONTENT ADD CONSTRAINT RefEF_CATEGORY13 
    FOREIGN KEY (CATEGORY_ID)
    REFERENCES EF_CATEGORY(CATEGORY_ID)
go


/* 
 * TABLE: EF_CONTENT 
 */

ALTER TABLE EF_CONTENT ADD CONSTRAINT RefEF_MODEL2 
    FOREIGN KEY (MODEL_ID)
    REFERENCES EF_MODEL(MODEL_ID)
go


/* 
 * TABLE: EF_CONTENT_DESCRIPTION_FIELD 
 */

ALTER TABLE EF_CONTENT_DESCRIPTION_FIELD ADD CONSTRAINT RefEF_CONTENT23 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: EF_CONTENT_DOUBLE_FIELD 
 */

ALTER TABLE EF_CONTENT_DOUBLE_FIELD ADD CONSTRAINT RefEF_CONTENT20 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: EF_CONTENT_INT_FIELD 
 */

ALTER TABLE EF_CONTENT_INT_FIELD ADD CONSTRAINT RefEF_CONTENT15 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: EF_CONTENT_STRING_FIELD 
 */

ALTER TABLE EF_CONTENT_STRING_FIELD ADD CONSTRAINT RefEF_CONTENT21 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: EF_CONTENT_TEXT_FIELD 
 */

ALTER TABLE EF_CONTENT_TEXT_FIELD ADD CONSTRAINT RefEF_CONTENT22 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: EF_CONTENT_TIME_FIELD 
 */

ALTER TABLE EF_CONTENT_TIME_FIELD ADD CONSTRAINT RefEF_CONTENT19 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES EF_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: EF_MODEL_FIELD 
 */

ALTER TABLE EF_MODEL_FIELD ADD CONSTRAINT RefEF_MODEL1 
    FOREIGN KEY (MODEL_ID)
    REFERENCES EF_MODEL(MODEL_ID)
go

