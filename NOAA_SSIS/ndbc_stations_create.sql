USE [NOAA]
GO
/****** Object:  Table [dbo].[ndbc_stations]    Script Date: 9/26/2016 10:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ndbc_stations](
	[StationId] [varchar](5) NOT NULL,
	[Buoy] [varchar](50) NOT NULL,
	[OfficalName] [varchar](150) NULL,
 CONSTRAINT [PK_ndbc_stations] PRIMARY KEY CLUSTERED 
(
	[StationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ndbc_stations] ([StationId], [Buoy], [OfficalName]) VALUES (N'42012', N'Gulf Shores', N'ORANGE BEACH')
GO
INSERT [dbo].[ndbc_stations] ([StationId], [Buoy], [OfficalName]) VALUES (N'42067', N'Southern Miss', N'USM3M01')
GO
