CREATE TABLE [dbo].[xref_position_type] (
    [type_key]         INT           IDENTITY (1, 1) NOT NULL,
    [type_code]        VARCHAR (10)  NULL,
    [type_description] VARCHAR (100) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_type1] PRIMARY KEY CLUSTERED ([type_key] ASC)
);

