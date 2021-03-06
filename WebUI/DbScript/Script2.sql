USE [RationingSystemDB]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 12/27/2019 9:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[Message] [nvarchar](max) NULL,
	[Method] [nvarchar](100) NULL,
	[Controller] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblErrorLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacketDetail]    Script Date: 12/27/2019 9:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacketDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PacketTypeId] [nvarchar](20) NULL,
	[PacketContent] [nvarchar](50) NULL,
	[Calories] [int] NULL,
	[ExpiryDate] [datetime] NULL,
	[LitersQty] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_tblPacketDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacketsType]    Script Date: 12/27/2019 9:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacketsType](
	[Id] [int] NOT NULL,
	[PacketType] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPacketsType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ErrorLog] ON 

INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (1, CAST(N'2019-12-26T14:11:53.197' AS DateTime), N'Exception type: System.NullReferenceException
Message       : Object reference not set to an instance of an object.
Stacktrace:
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in D:\MyBackUp\MyProject\RationingSystemProj\MVC5App_21_12_2019_18_36_46\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 146

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (2, CAST(N'2019-12-26T17:31:33.220' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (3, CAST(N'2019-12-26T17:32:25.250' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (4, CAST(N'2019-12-26T17:32:54.993' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (5, CAST(N'2019-12-26T17:32:54.993' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (6, CAST(N'2019-12-26T17:32:58.813' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (7, CAST(N'2019-12-26T17:33:06.400' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (8, CAST(N'2019-12-26T17:33:10.350' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (9, CAST(N'2019-12-26T17:33:23.400' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (10, CAST(N'2019-12-26T17:33:53.217' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (11, CAST(N'2019-12-26T17:34:02.470' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (12, CAST(N'2019-12-26T17:34:51.383' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (13, CAST(N'2019-12-26T17:36:31.797' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (14, CAST(N'2019-12-26T17:37:07.983' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (15, CAST(N'2019-12-26T17:39:21.873' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (16, CAST(N'2019-12-26T18:20:18.250' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (17, CAST(N'2019-12-26T18:21:41.377' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in D:\MyBackUp\MyProject\RationingSystemWithTest\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (18, CAST(N'2019-12-26T18:39:22.220' AS DateTime), N'Exception type: System.Data.ConstraintException
Message       : The ''IsDeleted'' property on ''PacketDetail'' could not be set to a ''null'' value. You must set this property to a non-null value of type ''System.Boolean''. 
Stacktrace:
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)
   at lambda_method(Closure , Shaper )
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.HandleEntityAppendOnly[TEntity](Func`2 constructEntityDelegate, EntityKey entityKey, EntitySet entitySet)
   at lambda_method(Closure , Shaper )
   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()
   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in C:\Users\cis\Desktop\Shubham\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (19, CAST(N'2019-12-26T18:40:37.047' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in C:\Users\cis\Desktop\Shubham\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (20, CAST(N'2019-12-26T18:40:54.577' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in C:\Users\cis\Desktop\Shubham\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (21, CAST(N'2019-12-26T18:44:24.530' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : The entity type PacketDetail is not part of the model for the current context.
Stacktrace:
   at System.Data.Entity.Internal.InternalContext.UpdateEntitySetMappingsForType(Type entityType)
   at System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   at System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   at System.Data.Entity.Internal.Linq.InternalSet`1.GetEnumerator()
   at System.Data.Entity.Infrastructure.DbQuery`1.System.Collections.Generic.IEnumerable<TResult>.GetEnumerator()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in C:\Users\cis\Desktop\Shubham\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 33

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (22, CAST(N'2019-12-27T11:11:49.413' AS DateTime), N'Exception type: System.FormatException
Message       : Input string was not in a correct format.
Stacktrace:
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 320

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (23, CAST(N'2019-12-27T11:11:50.967' AS DateTime), N'Exception type: System.FormatException
Message       : Input string was not in a correct format.
Stacktrace:
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 320

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (24, CAST(N'2019-12-27T11:11:51.167' AS DateTime), N'Exception type: System.FormatException
Message       : Input string was not in a correct format.
Stacktrace:
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 320

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (25, CAST(N'2019-12-27T11:11:51.303' AS DateTime), N'Exception type: System.FormatException
Message       : Input string was not in a correct format.
Stacktrace:
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 320

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (26, CAST(N'2019-12-27T11:11:51.487' AS DateTime), N'Exception type: System.FormatException
Message       : Input string was not in a correct format.
Stacktrace:
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 320

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (27, CAST(N'2019-12-27T11:12:26.350' AS DateTime), N'Exception type: System.FormatException
Message       : Input string was not in a correct format.
Stacktrace:
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 320

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (28, CAST(N'2019-12-27T11:14:13.597' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : Collection was modified; enumeration operation may not execute.
Stacktrace:
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.List`1.Enumerator.MoveNextRare()
   at System.Collections.Generic.List`1.Enumerator.MoveNext()
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 207

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (29, CAST(N'2019-12-27T11:16:50.253' AS DateTime), N'Exception type: System.InvalidOperationException
Message       : Collection was modified; enumeration operation may not execute.
Stacktrace:
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.List`1.Enumerator.MoveNextRare()
   at System.Collections.Generic.List`1.Enumerator.MoveNext()
   at WebUI.Controllers.RationController.Schduled(DateTime StartDate) in C:\Users\cis\Desktop\IndorseProjs\RaashanSystem\WebUI\Controllers\RationController.cs:line 207

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (30, CAST(N'2019-12-27T14:46:16.660' AS DateTime), N'Exception type: System.Data.ConstraintException
Message       : The ''LitersQty'' property on ''PacketDetail'' could not be set to a ''null'' value. You must set this property to a non-null value of type ''System.Int32''. 
Stacktrace:
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)
   at lambda_method(Closure , Shaper )
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.HandleEntityAppendOnly[TEntity](Func`2 constructEntityDelegate, EntityKey entityKey, EntitySet entitySet)
   at lambda_method(Closure , Shaper )
   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()
   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at WebUI.Controllers.RationController.Dashboard() in C:\Users\cis\Desktop\Shubham\27December2019\MVC5AppWithSOLID\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 32

', N'Dashboard', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (31, CAST(N'2019-12-27T17:30:28.843' AS DateTime), N'Exception type: System.NullReferenceException
Message       : Object reference not set to an instance of an object.
Stacktrace:
   at WebUI.Controllers.RationController.Schduled(RationScheduleViewModel rationScheduleView) in C:\Users\cis\Desktop\Shubham\27December2019\MVC5AppWithSOLID\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 299

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (32, CAST(N'2019-12-27T17:34:35.027' AS DateTime), N'Exception type: System.NullReferenceException
Message       : Object reference not set to an instance of an object.
Stacktrace:
   at WebUI.Controllers.RationController.Schduled(RationScheduleViewModel rationScheduleView) in C:\Users\cis\Desktop\Shubham\27December2019\MVC5AppWithSOLID\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 299

', N'Schduled', N'Ration')
INSERT [dbo].[ErrorLog] ([Id], [CreatedDate], [Message], [Method], [Controller]) VALUES (33, CAST(N'2019-12-27T17:37:05.787' AS DateTime), N'Exception type: System.NullReferenceException
Message       : Object reference not set to an instance of an object.
Stacktrace:
   at WebUI.Controllers.RationController.Schduled(RationScheduleViewModel rationScheduleView) in C:\Users\cis\Desktop\Shubham\27December2019\MVC5AppWithSOLID\MVC5AppWithSOLID-master\WebUI\Controllers\RationController.cs:line 299

', N'Schduled', N'Ration')
SET IDENTITY_INSERT [dbo].[ErrorLog] OFF
SET IDENTITY_INSERT [dbo].[PacketDetail] ON 

INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (1, N'2', NULL, NULL, NULL, 2, 1)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (17, N'1', N'Biscuit', 1500, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (19, N'1', N'BurgerFood', 600, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (20, N'2', NULL, NULL, NULL, 1, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (21, N'1', N'Wheat', 1200, CAST(N'2019-12-27T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (22, N'1', N'Corn', 2500, CAST(N'2019-12-28T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (23, N'2', NULL, NULL, NULL, 2, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (24, N'1', N'Bisyji', 1500, CAST(N'2019-12-26T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (25, N'1', N'fgfhfh', 2500, CAST(N'2019-12-25T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (26, N'1', N'CornFlax', 2500, CAST(N'2019-12-25T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (27, N'2', NULL, NULL, NULL, 2, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (32, N'2', NULL, NULL, NULL, 2, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (33, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:30:22.613' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (34, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:34:15.887' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (35, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:37:18.047' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (36, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:38:35.083' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (37, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:40:39.117' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (38, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:44:06.830' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (39, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:52:54.540' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (40, N'1', N'Bread', 2500, CAST(N'2019-12-26T16:56:02.353' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (41, N'1', N'Bread', 2500, CAST(N'2019-12-26T17:01:51.890' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (42, N'1', N'Bread', 2500, CAST(N'2019-12-26T17:05:21.677' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (43, N'1', N'Bread', 2500, CAST(N'2019-12-26T17:06:16.423' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (44, N'1', N'Bread', 2500, CAST(N'2019-12-26T17:11:31.480' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (45, N'1', N'foofd1', 3500, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (46, N'1', N'Food1', 3500, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (47, N'1', N'fgfhfh', 3500, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (48, N'1', N'TestPackt', 4000, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (49, N'2', NULL, NULL, NULL, 4, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (50, N'1', N'f45', 3000, CAST(N'2019-12-31T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (51, N'1', N'f46', 200, CAST(N'2019-12-31T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (52, N'1', N'f21', 300, CAST(N'2019-12-31T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (53, N'1', N'f56', 2000, CAST(N'2019-12-31T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (54, N'1', N'f23', 1200, CAST(N'2020-01-18T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (55, N'2', NULL, NULL, NULL, 6, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (56, N'2', NULL, NULL, NULL, 1, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (57, N'2', NULL, NULL, NULL, 22, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (58, N'2', NULL, NULL, NULL, 6, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (59, N'2', N'f89', 4000, NULL, 56, 1)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (60, N'1', N'jkk', 2000, CAST(N'2019-12-27T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (61, N'1', N'CupCakes', 1100, CAST(N'2019-12-28T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[PacketDetail] ([Id], [PacketTypeId], [PacketContent], [Calories], [ExpiryDate], [LitersQty], [IsDeleted]) VALUES (62, N'1', N'test', 2300, CAST(N'2019-12-28T00:00:00.000' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[PacketDetail] OFF
INSERT [dbo].[PacketsType] ([Id], [PacketType]) VALUES (1, N'Food')
INSERT [dbo].[PacketsType] ([Id], [PacketType]) VALUES (2, N'Water')
ALTER TABLE [dbo].[PacketDetail] ADD  CONSTRAINT [df_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
