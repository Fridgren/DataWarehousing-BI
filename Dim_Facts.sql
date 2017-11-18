/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [ProjectDW]
GO
/****** Object:  Table [dbo].[AddressDimension]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressDimension](
	[AddressKey] [int] IDENTITY(1,1) NOT NULL,
	[StateAbbreviation] [nvarchar](25) NOT NULL,
	[Country] [nvarchar](25) NOT NULL,
	[County] [nvarchar](25) NOT NULL,
	[Municipality] [nvarchar](25) NOT NULL,
	[City] [nvarchar](25) NOT NULL,
	[StreetName] [nvarchar](25) NOT NULL,
	[BuildingNumberKey] [int] NOT NULL,
 CONSTRAINT [PK_AddressDimension_AddressKey] PRIMARY KEY CLUSTERED 
(
	[AddressKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankDimension]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankDimension](
	[BankKey] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BankDimension_RateKey] PRIMARY KEY CLUSTERED 
(
	[BankKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrokerDimension]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerDimension](
	[BrokerKey] [int] IDENTITY(1,1) NOT NULL,
	[BrokerName] [nvarchar](50) NOT NULL,
	[BrokerType] [nchar](20) NOT NULL,
 CONSTRAINT [PK_BrokerDimension_ProductKey] PRIMARY KEY CLUSTERED 
(
	[BrokerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuildingMiniDimension]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingMiniDimension](
	[BuildningNumberKey] [int] IDENTITY(1,1) NOT NULL,
	[BuildningNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BuildingMiniDimension_ProductKey] PRIMARY KEY CLUSTERED 
(
	[BuildningNumberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemographyDimension]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemographyDimension](
	[DemographyKey] [int] IDENTITY(1,1) NOT NULL,
	[DemographyType] [nvarchar](25) NOT NULL,
	[LivingAreaBand] [nvarchar](25) NOT NULL,
	[RentBand] [nvarchar](25) NOT NULL,
	[AgeBand] [nvarchar](25) NOT NULL,
	[Floors] [tinyint] NOT NULL,
	[Rooms] [tinyint] NOT NULL,
 CONSTRAINT [PK_DemographyDimension_DemographyKey] PRIMARY KEY CLUSTERED 
(
	[DemographyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDateUK] [char](10) NULL,
	[FullDateUSA] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeekUSA] [char](1) NULL,
	[DayOfWeekUK] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsHolidayUSA] [bit] NULL,
	[IsWeekday] [bit] NULL,
	[HolidayUSA] [varchar](50) NULL,
	[IsHolidayUK] [bit] NULL,
	[HolidayUK] [varchar](50) NULL,
	[IsHolidaySV] [bit] NULL,
	[HolidaySV] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListingFactTable]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListingFactTable](
	[PublishedDate] [int] NOT NULL,
	[SoldDate] [int] NOT NULL,
	[DemographyKey] [int] NOT NULL,
	[AddressKey] [int] NOT NULL,
	[BrokerKey] [int] NULL,
	[BooliID] [int] NOT NULL,
	[ContructionYear] [smallint] NOT NULL,
	[Rent] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[SoldPrice] [money] NOT NULL,
	[PriceDifference] [money] NOT NULL,
	[LivingArea] [int] NOT NULL,
	[PublishedTime] [time](7) NOT NULL,
	[Latitude] [nvarchar](10) NULL,
	[Longitude] [nvarchar](10) NULL,
	[OceanDistance] [smallint] NOT NULL,
	[SoldTimeLag] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RateDimension]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateDimension](
	[RateKey] [int] IDENTITY(1,1) NOT NULL,
	[RateName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RateDimension_RateKey] PRIMARY KEY CLUSTERED 
(
	[RateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RateFact]    Script Date: 2017-11-16 12:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateFact](
	[BankKey] [int] NOT NULL,
	[RateKey] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[Rate] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AddressDimension]  WITH CHECK ADD  CONSTRAINT [FK_AddressDimension_BuildingMiniDimension] FOREIGN KEY([BuildingNumberKey])
REFERENCES [dbo].[BuildingMiniDimension] ([BuildningNumberKey])
GO
ALTER TABLE [dbo].[AddressDimension] CHECK CONSTRAINT [FK_AddressDimension_BuildingMiniDimension]
GO
ALTER TABLE [dbo].[ListingFactTable]  WITH CHECK ADD  CONSTRAINT [FK_ListingFactTable_AddressDimension] FOREIGN KEY([AddressKey])
REFERENCES [dbo].[AddressDimension] ([AddressKey])
GO
ALTER TABLE [dbo].[ListingFactTable] CHECK CONSTRAINT [FK_ListingFactTable_AddressDimension]
GO
ALTER TABLE [dbo].[ListingFactTable]  WITH CHECK ADD  CONSTRAINT [FK_ListingFactTable_BrokerDimension] FOREIGN KEY([BrokerKey])
REFERENCES [dbo].[BrokerDimension] ([BrokerKey])
GO
ALTER TABLE [dbo].[ListingFactTable] CHECK CONSTRAINT [FK_ListingFactTable_BrokerDimension]
GO
ALTER TABLE [dbo].[ListingFactTable]  WITH CHECK ADD  CONSTRAINT [FK_ListingFactTable_DemographyDimension] FOREIGN KEY([DemographyKey])
REFERENCES [dbo].[DemographyDimension] ([DemographyKey])
GO
ALTER TABLE [dbo].[ListingFactTable] CHECK CONSTRAINT [FK_ListingFactTable_DemographyDimension]
GO
ALTER TABLE [dbo].[ListingFactTable]  WITH CHECK ADD  CONSTRAINT [FK_ListingFactTable_DimDate] FOREIGN KEY([PublishedDate])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[ListingFactTable] CHECK CONSTRAINT [FK_ListingFactTable_DimDate]
GO
ALTER TABLE [dbo].[ListingFactTable]  WITH CHECK ADD  CONSTRAINT [FK_ListingFactTable_DimDate1] FOREIGN KEY([SoldDate])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[ListingFactTable] CHECK CONSTRAINT [FK_ListingFactTable_DimDate1]
GO
ALTER TABLE [dbo].[RateFact]  WITH CHECK ADD  CONSTRAINT [FK_RateFact_BankDimension] FOREIGN KEY([BankKey])
REFERENCES [dbo].[BankDimension] ([BankKey])
GO
ALTER TABLE [dbo].[RateFact] CHECK CONSTRAINT [FK_RateFact_BankDimension]
GO
ALTER TABLE [dbo].[RateFact]  WITH CHECK ADD  CONSTRAINT [FK_RateFact_DimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[RateFact] CHECK CONSTRAINT [FK_RateFact_DimDate]
GO
ALTER TABLE [dbo].[RateFact]  WITH CHECK ADD  CONSTRAINT [FK_RateFact_RateDimension] FOREIGN KEY([RateKey])
REFERENCES [dbo].[RateDimension] ([RateKey])
GO
ALTER TABLE [dbo].[RateFact] CHECK CONSTRAINT [FK_RateFact_RateDimension]
GO
