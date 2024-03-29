/****** Object:  Table [dbo].[ApplicationsDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationsDim](
	[app_id] [int] IDENTITY(1,1) NOT NULL,
	[application_id] [int] NULL,
	[publisher_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[app_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClickDetailsDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClickDetailsDim](
	[cl_id] [int] IDENTITY(1,1) NOT NULL,
	[click_id] [int] NULL,
	[click_datetime] [datetime] NULL,
	[click_ipv6] [varchar](255) NULL,
	[click_url_parameters] [varchar](max) NULL,
	[click_user_agent] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[cl_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClicksFacts]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClicksFacts](
	[click_id] [int] IDENTITY(1,1) NOT NULL,
	[application_id] [int] NULL,
	[publisher_id] [int] NULL,
	[tracker_name] [varchar](255) NULL,
	[tracking_id] [int] NULL,
	[click_timestamp] [int] NULL,
	[ios_ifa] [varchar](255) NULL,
	[ios_ifv] [varchar](255) NULL,
	[android_id] [varchar](255) NULL,
	[google_aid] [varchar](255) NULL,
	[os_name] [varchar](100) NULL,
	[os_version] [varchar](50) NULL,
	[device_manufacturer] [varchar](100) NULL,
	[device_model] [varchar](100) NULL,
	[device_type] [varchar](50) NULL,
	[is_bot] [bit] NULL,
	[country_iso_code] [varchar](2) NULL,
	[city] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[click_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevicesDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevicesDim](
	[device_id] [int] IDENTITY(1,1) NOT NULL,
	[device_manufacturer] [varchar](100) NULL,
	[device_model] [varchar](100) NULL,
	[device_type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[device_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationsDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationsDim](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[country_iso_code] [varchar](2) NULL,
	[city] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperatingSystemsDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperatingSystemsDim](
	[osys_id] [int] IDENTITY(1,1) NOT NULL,
	[os_name] [varchar](100) NULL,
	[os_version] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[osys_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublishersDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishersDim](
	[pub_id] [int] IDENTITY(1,1) NOT NULL,
	[publisher_id] [int] NULL,
	[publisher_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[pub_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackersDim]    Script Date: 3/14/2024 11:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackersDim](
	[tracker_id] [int] IDENTITY(1,1) NOT NULL,
	[tracking_id] [int] NULL,
	[tracker_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[tracker_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
