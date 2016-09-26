USE [NOAA]
GO

/****** Object:  Table [dbo].[ndbc_meteorological]    Script Date: 9/25/2016 8:49:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ndbc_meteorological](
	[Date] [datetime] NOT NULL,
	[StationId] [char](10) NOT NULL,
	[WindDirection] [int] NULL,
	[WindSpeed] [float] NULL,
	[WindGust] [float] NULL,
	[WaveHeight] [float] NULL,
	[DominantWavePeriod] [int] NULL,
	[AverageWavePeriod] [float] NULL,
	[WaveDirection] [int] NULL,
	[SeaLevelPressue] [float] NULL,
	[AirTemperature] [float] NULL,
	[WaterTemperature] [float] NULL,
 CONSTRAINT [PK_Clus_Date_StationId] UNIQUE CLUSTERED 
(
	[Date] DESC,
	[StationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'(DT_DBTIMESTAMP)(SUBSTRING(TRIM(YY),1,4) + "-" + SUBSTRING(TRIM(MM),1,2) + "-" + SUBSTRING(TRIM(DD),1,2) + " " + SUBSTRING(TRIM(hh),1,2) + ":" + SUBSTRING(TRIM(mi),1,2))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'Date'
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'@[User::Buoy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'StationId'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'WDIR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WindDirection'
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'ROUND(WindSpeed * 2.23694,1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WindSpeed'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'WSPD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WindSpeed'
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'ROUND(WindGust * 2.23694,1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WindGust'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'GST' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WindGust'
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'ROUND(WaveHeight * 3.28084,1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WaveHeight'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'WVHT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WaveHeight'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'DPD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'DominantWavePeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'APD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'AverageWavePeriod'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'MWD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WaveDirection'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'PRES' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'SeaLevelPressue'
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'ROUND(AirTemperature * 1.8 + 32,1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'AirTemperature'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'ATMP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'AirTemperature'
GO

EXEC sys.sp_addextendedproperty @name=N'D_Expr', @value=N'ROUND(WaterTemperature * 1.8 + 32,1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WaterTemperature'
GO

EXEC sys.sp_addextendedproperty @name=N'FF_COL', @value=N'WTMP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ndbc_meteorological', @level2type=N'COLUMN',@level2name=N'WaterTemperature'
GO


