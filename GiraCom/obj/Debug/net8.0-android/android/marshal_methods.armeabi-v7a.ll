; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [322 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [638 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 242
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 276
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 317
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 200
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 260
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 260
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 280
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 216
	i32 176265551, ; 22: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 23: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 262
	i32 184328833, ; 24: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 25: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 314
	i32 199333315, ; 26: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 315
	i32 205061960, ; 27: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 28: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 214
	i32 220171995, ; 29: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 236
	i32 230752869, ; 31: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 32: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 33: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 34: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 35: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 219
	i32 276479776, ; 36: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 238
	i32 280482487, ; 38: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 235
	i32 280992041, ; 39: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 286
	i32 291076382, ; 40: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 41: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 42: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 314
	i32 318968648, ; 43: Xamarin.AndroidX.Activity.dll => 0x13031348 => 205
	i32 321597661, ; 44: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 45: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 299
	i32 342366114, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 237
	i32 356389973, ; 47: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 298
	i32 360082299, ; 48: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 49: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 50: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 51: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 52: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 53: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 54: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 55: _Microsoft.Android.Resource.Designer => 0x17969339 => 318
	i32 403441872, ; 56: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 57: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 310
	i32 441335492, ; 58: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 220
	i32 442565967, ; 59: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 60: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 233
	i32 451504562, ; 61: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 62: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 63: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 64: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 65: System.dll => 0x1bff388e => 164
	i32 476646585, ; 66: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 235
	i32 486930444, ; 67: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 248
	i32 497347661, ; 68: Avalonia.Dialogs => 0x1da4ec4d => 176
	i32 498788369, ; 69: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 70: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 297
	i32 503918385, ; 71: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 291
	i32 513247710, ; 72: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 194
	i32 526420162, ; 73: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 74: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 280
	i32 530272170, ; 75: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 76: Microsoft.Extensions.Logging => 0x20216150 => 190
	i32 540030774, ; 77: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 78: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 79: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 80: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 81: Jsr305Binding => 0x213954e7 => 273
	i32 569601784, ; 82: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 271
	i32 577335427, ; 83: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 84: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 305
	i32 601371474, ; 85: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 86: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 87: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 88: Xamarin.AndroidX.CustomView => 0x2568904f => 225
	i32 627931235, ; 89: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 303
	i32 637581149, ; 90: Avalonia.Controls => 0x2600b75d => 174
	i32 639843206, ; 91: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 231
	i32 643868501, ; 92: System.Net => 0x2660a755 => 81
	i32 662205335, ; 93: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 94: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 267
	i32 666292255, ; 95: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 212
	i32 672442732, ; 96: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 97: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 98: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 285
	i32 690569205, ; 99: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 100: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 282
	i32 693804605, ; 101: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 102: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 103: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 277
	i32 700358131, ; 104: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 105: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 300
	i32 709557578, ; 106: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 288
	i32 720511267, ; 107: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 281
	i32 722857257, ; 108: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 109: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 110: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 111: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 202
	i32 759454413, ; 112: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 113: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 114: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 115: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 309
	i32 789151979, ; 116: Microsoft.Extensions.Options => 0x2f0980eb => 193
	i32 790371945, ; 117: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 226
	i32 793404064, ; 118: Avalonia.Metal.dll => 0x2f4a62a0 => 179
	i32 795860074, ; 119: Avalonia.MicroCom.dll => 0x2f6fdc6a => 180
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 240
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 253
	i32 873119928, ; 127: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 128: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 129: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 130: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 131: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 132: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 312
	i32 928116545, ; 133: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 276
	i32 952186615, ; 134: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 135: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 281
	i32 966729478, ; 136: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 274
	i32 967690846, ; 137: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 237
	i32 975236339, ; 138: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 139: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 140: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 141: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 142: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 143: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 144: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1008800730, ; 145: Avalonia.Base.dll => 0x3c2113da => 173
	i32 1012816738, ; 146: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 257
	i32 1019214401, ; 147: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 148: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 189
	i32 1029334545, ; 149: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 287
	i32 1031528504, ; 150: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 275
	i32 1035644815, ; 151: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 210
	i32 1036536393, ; 152: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 153: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 154: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 244
	i32 1052365087, ; 155: Avalonia.OpenGL.dll => 0x3eb9d11f => 181
	i32 1067306892, ; 156: GoogleGson => 0x3f9dcf8c => 184
	i32 1082857460, ; 157: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 158: Xamarin.Kotlin.StdLib => 0x409e66d8 => 278
	i32 1098259244, ; 159: System => 0x41761b2c => 164
	i32 1118262833, ; 160: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 300
	i32 1121599056, ; 161: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 243
	i32 1127624469, ; 162: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 192
	i32 1143774617, ; 163: MicroCom.Runtime.dll => 0x442c9d99 => 185
	i32 1149092582, ; 164: Xamarin.AndroidX.Window => 0x447dc2e6 => 270
	i32 1168523401, ; 165: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 306
	i32 1170634674, ; 166: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 167: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 266
	i32 1178241025, ; 168: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 251
	i32 1203215381, ; 169: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 304
	i32 1204270330, ; 170: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 212
	i32 1208641965, ; 171: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 172: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 173: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 302
	i32 1243150071, ; 174: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 271
	i32 1253011324, ; 175: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 176: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 286
	i32 1264511973, ; 177: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 261
	i32 1267360935, ; 178: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 265
	i32 1273260888, ; 179: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 217
	i32 1275534314, ; 180: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 282
	i32 1278448581, ; 181: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 209
	i32 1293217323, ; 182: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 228
	i32 1309188875, ; 183: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 184: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 270
	i32 1324164729, ; 185: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 186: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 187: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 188: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 316
	i32 1376866003, ; 189: Xamarin.AndroidX.SavedState => 0x52114ed3 => 257
	i32 1379779777, ; 190: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1397501879, ; 191: MicroCom.Runtime => 0x534c2fb7 => 185
	i32 1402170036, ; 192: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 193: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 221
	i32 1408764838, ; 194: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 195: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1418840530, ; 196: GiraCom => 0x5491c9d2 => 0
	i32 1422545099, ; 197: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 198: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 284
	i32 1434145427, ; 199: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 200: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 274
	i32 1439761251, ; 201: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 202: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 203: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 204: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 205: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 206: es\Microsoft.Maui.Controls.resources => 0x57152abe => 290
	i32 1461234159, ; 207: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 208: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 209: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 210: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 211
	i32 1470490898, ; 211: Microsoft.Extensions.Primitives => 0x57a5e912 => 194
	i32 1479771757, ; 212: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 213: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 214: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 215: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 258
	i32 1493001747, ; 216: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 294
	i32 1514721132, ; 217: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 289
	i32 1536373174, ; 218: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 219: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 220: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 221: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 222: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 309
	i32 1565862583, ; 223: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 224: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 225: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 226: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 227: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 227
	i32 1592978981, ; 228: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 229: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 275
	i32 1601112923, ; 230: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 231: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1613762098, ; 232: Avalonia.Base => 0x60300e32 => 173
	i32 1618516317, ; 233: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 234: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 247
	i32 1622358360, ; 235: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1623297518, ; 236: Avalonia.Markup.Xaml.dll => 0x60c18dee => 177
	i32 1624863272, ; 237: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 269
	i32 1635184631, ; 238: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 231
	i32 1636350590, ; 239: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 224
	i32 1639515021, ; 240: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 241: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 242: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 243: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 244: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 263
	i32 1658251792, ; 245: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 272
	i32 1670060433, ; 246: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 219
	i32 1675553242, ; 247: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 248: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 249: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 250: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 251: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 252: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 253: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 279
	i32 1701541528, ; 254: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 255: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 240
	i32 1726116996, ; 256: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 257: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 258: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 215
	i32 1736233607, ; 259: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 307
	i32 1743415430, ; 260: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 285
	i32 1744735666, ; 261: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 262: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 263: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 264: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 265: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 266: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 267: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 262
	i32 1770582343, ; 268: Microsoft.Extensions.Logging.dll => 0x6988f147 => 190
	i32 1776026572, ; 269: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 270: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 271: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 272: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 301
	i32 1788241197, ; 273: Xamarin.AndroidX.Fragment => 0x6a96652d => 233
	i32 1793755602, ; 274: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 293
	i32 1808609942, ; 275: Xamarin.AndroidX.Loader => 0x6bcd3296 => 247
	i32 1813058853, ; 276: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 278
	i32 1813201214, ; 277: Xamarin.Google.Android.Material => 0x6c13413e => 272
	i32 1818569960, ; 278: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 252
	i32 1818787751, ; 279: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 280: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 281: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 282: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 191
	i32 1842015223, ; 283: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 313
	i32 1847515442, ; 284: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 202
	i32 1853025655, ; 285: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 310
	i32 1858542181, ; 286: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 287: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 288: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 292
	i32 1879696579, ; 289: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 290: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 213
	i32 1888955245, ; 291: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 292: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 293: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 294: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 295: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 296: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 297: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 298: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 259
	i32 1968388702, ; 299: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 186
	i32 1983156543, ; 300: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 279
	i32 1985761444, ; 301: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 204
	i32 1994945615, ; 302: Avalonia.Metal => 0x76e8744f => 179
	i32 2003115576, ; 303: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 289
	i32 2011961780, ; 304: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 305: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 244
	i32 2025202353, ; 306: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 284
	i32 2031763787, ; 307: Xamarin.Android.Glide => 0x791a414b => 201
	i32 2045470958, ; 308: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 309: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 239
	i32 2060060697, ; 310: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 311: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 288
	i32 2070888862, ; 312: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 313: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 314: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 315: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 316: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 317: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 318: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 319: Microsoft.Maui => 0x80bd55ad => 198
	i32 2169148018, ; 320: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 296
	i32 2181898931, ; 321: Microsoft.Extensions.Options.dll => 0x820d22b3 => 193
	i32 2192057212, ; 322: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 191
	i32 2193016926, ; 323: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 324: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 283
	i32 2201231467, ; 325: System.Net.Http => 0x8334206b => 64
	i32 2203033907, ; 326: Avalonia.MicroCom => 0x834fa133 => 180
	i32 2207618523, ; 327: it\Microsoft.Maui.Controls.resources => 0x839595db => 298
	i32 2217644978, ; 328: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 266
	i32 2222056684, ; 329: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 330: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 248
	i32 2252106437, ; 331: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 332: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 333: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 334: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 187
	i32 2267999099, ; 335: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 203
	i32 2270573516, ; 336: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 292
	i32 2279755925, ; 337: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 255
	i32 2293034957, ; 338: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 339: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 340: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 341: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 302
	i32 2305521784, ; 342: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309601686, ; 343: Avalonia => 0x89a9b996 => 182
	i32 2315684594, ; 344: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 207
	i32 2320631194, ; 345: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 346: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 347: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 348: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 349: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 350: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 186
	i32 2378619854, ; 351: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 352: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 353: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 297
	i32 2401565422, ; 354: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 355: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 230
	i32 2408407545, ; 356: Avalonia.Markup.dll => 0x8f8d61f9 => 178
	i32 2421380589, ; 357: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 358: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 217
	i32 2427813419, ; 359: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 294
	i32 2435356389, ; 360: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 361: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 362: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 363: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 364: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 365: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 220
	i32 2471841756, ; 366: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 367: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 368: Microsoft.Maui.Controls => 0x93dba8a1 => 196
	i32 2483903535, ; 369: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 370: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 371: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 372: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 373: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 242
	i32 2522472828, ; 374: Xamarin.Android.Glide.dll => 0x9659e17c => 201
	i32 2538310050, ; 375: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 376: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 295
	i32 2562349572, ; 377: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 378: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 243
	i32 2581819634, ; 380: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 265
	i32 2585220780, ; 381: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 382: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 383: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 384: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 304
	i32 2605712449, ; 385: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 283
	i32 2615233544, ; 386: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 234
	i32 2616218305, ; 387: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 192
	i32 2617129537, ; 388: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 389: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 390: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 224
	i32 2624644809, ; 391: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 229
	i32 2626831493, ; 392: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 299
	i32 2627185994, ; 393: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 394: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 395: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 238
	i32 2663391936, ; 396: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 203
	i32 2663698177, ; 397: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 398: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 399: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 400: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 401: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 402: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 403: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 263
	i32 2705935227, ; 404: Avalonia.OpenGL => 0xa1494b7b => 181
	i32 2713243005, ; 405: Avalonia.Remote.Protocol.dll => 0xa1b8cd7d => 183
	i32 2715334215, ; 406: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 407: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 408: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 409: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 410: Xamarin.AndroidX.Activity => 0xa2e0939b => 205
	i32 2735172069, ; 411: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 412: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 211
	i32 2740948882, ; 413: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 414: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 415: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 305
	i32 2758225723, ; 416: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 197
	i32 2764765095, ; 417: Microsoft.Maui.dll => 0xa4caf7a7 => 198
	i32 2765824710, ; 418: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 419: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 277
	i32 2778768386, ; 420: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 268
	i32 2779977773, ; 421: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 256
	i32 2785988530, ; 422: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 311
	i32 2788224221, ; 423: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 234
	i32 2801831435, ; 424: Microsoft.Maui.Graphics => 0xa7008e0b => 200
	i32 2803228030, ; 425: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 426: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 290
	i32 2810250172, ; 427: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 221
	i32 2819470561, ; 428: System.Xml.dll => 0xa80db4e1 => 163
	i32 2819479764, ; 429: Avalonia.Controls.dll => 0xa80dd8d4 => 174
	i32 2821205001, ; 430: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 431: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 256
	i32 2824502124, ; 432: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 433: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 303
	i32 2838993487, ; 434: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 245
	i32 2849599387, ; 435: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 436: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 268
	i32 2855708567, ; 437: Xamarin.AndroidX.Transition => 0xaa36a797 => 264
	i32 2861098320, ; 438: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 439: Microsoft.Maui.Essentials => 0xaa8a4878 => 199
	i32 2870099610, ; 440: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 206
	i32 2875164099, ; 441: Jsr305Binding.dll => 0xab5f85c3 => 273
	i32 2875220617, ; 442: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 443: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 232
	i32 2887636118, ; 444: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 445: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 446: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 447: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 448: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 449: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 450: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 269
	i32 2919462931, ; 451: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 452: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 208
	i32 2921597873, ; 453: Avalonia.Markup.Xaml => 0xae240bb1 => 177
	i32 2936416060, ; 454: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 455: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 456: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 457: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 458: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 459: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 460: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 228
	i32 2987532451, ; 461: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 259
	i32 2996846495, ; 462: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 241
	i32 3016983068, ; 463: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 261
	i32 3023353419, ; 464: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 465: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 236
	i32 3038032645, ; 466: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 318
	i32 3056245963, ; 467: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 258
	i32 3057625584, ; 468: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 249
	i32 3059408633, ; 469: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 470: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 471: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 472: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 296
	i32 3090735792, ; 473: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 474: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 475: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 476: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 477: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 478: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 479: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 480: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 481: GoogleGson.dll => 0xbba64c02 => 184
	i32 3159123045, ; 482: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 483: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 484: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 250
	i32 3192346100, ; 485: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 486: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 487: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 488: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 489: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 227
	i32 3220365878, ; 490: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 491: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 492: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 493: Xamarin.AndroidX.CardView => 0xc235e84d => 215
	i32 3265493905, ; 494: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 495: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 496: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 497: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 498: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 499: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 500: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 501: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 502: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 291
	i32 3316684772, ; 503: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 504: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 225
	i32 3317144872, ; 505: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 506: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 213
	i32 3345895724, ; 507: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 254
	i32 3346324047, ; 508: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 251
	i32 3357674450, ; 509: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 308
	i32 3358260929, ; 510: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 511: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 206
	i32 3362522851, ; 512: Xamarin.AndroidX.Core => 0xc86c06e3 => 222
	i32 3366347497, ; 513: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 514: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 255
	i32 3381016424, ; 515: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 287
	i32 3395150330, ; 516: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 517: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 518: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 226
	i32 3428513518, ; 519: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 188
	i32 3429136800, ; 520: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 521: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 522: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 229
	i32 3445260447, ; 523: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 524: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 195
	i32 3463511458, ; 525: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 295
	i32 3471940407, ; 526: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 527: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 528: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 308
	i32 3484440000, ; 529: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 307
	i32 3485117614, ; 530: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 531: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 532: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 218
	i32 3497148347, ; 533: Avalonia.Markup => 0xd0723fbb => 178
	i32 3509114376, ; 534: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 535: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 536: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 537: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 538: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 539: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 540: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 315
	i32 3597029428, ; 541: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 204
	i32 3598340787, ; 542: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 543: System.Linq.dll => 0xd715a361 => 61
	i32 3615210680, ; 544: Avalonia.Dialogs.dll => 0xd77bbcb8 => 176
	i32 3624195450, ; 545: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 546: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 253
	i32 3633644679, ; 547: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 208
	i32 3638274909, ; 548: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 549: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 239
	i32 3643446276, ; 550: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 312
	i32 3643854240, ; 551: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 250
	i32 3645089577, ; 552: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 553: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 187
	i32 3660523487, ; 554: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 555: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 556: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 214
	i32 3684561358, ; 557: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 218
	i32 3697841164, ; 558: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 317
	i32 3700866549, ; 559: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 560: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 223
	i32 3716563718, ; 561: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 562: Xamarin.AndroidX.Annotation => 0xdda814c6 => 207
	i32 3724971120, ; 563: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 249
	i32 3732100267, ; 564: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732205710, ; 565: GiraCom.dll => 0xde74f08e => 0
	i32 3737834244, ; 566: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 567: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 568: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 569: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 216
	i32 3792276235, ; 570: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 571: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 195
	i32 3802395368, ; 572: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 573: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 574: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 575: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 576: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 189
	i32 3844307129, ; 577: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 578: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 579: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 580: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 581: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 582: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 583: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 264
	i32 3888767677, ; 584: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 254
	i32 3889960447, ; 585: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 316
	i32 3896106733, ; 586: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 587: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 222
	i32 3901907137, ; 588: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 589: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 590: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 267
	i32 3928044579, ; 591: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 592: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 593: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 252
	i32 3945713374, ; 594: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 595: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 596: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 210
	i32 3959773229, ; 597: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 241
	i32 3980434154, ; 598: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 311
	i32 3987592930, ; 599: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 293
	i32 4000935579, ; 600: Avalonia.dll => 0xee796e9b => 182
	i32 4003436829, ; 601: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 602: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 209
	i32 4025784931, ; 603: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 604: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 197
	i32 4054681211, ; 605: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4063759658, ; 606: Avalonia.Remote.Protocol => 0xf2380d2a => 183
	i32 4068434129, ; 607: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4071413702, ; 608: Avalonia.DesignerSupport => 0xf2acd7c6 => 175
	i32 4073602200, ; 609: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 610: Microsoft.Maui.Essentials.dll => 0xf40add04 => 199
	i32 4099507663, ; 611: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 612: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 613: Xamarin.AndroidX.Emoji2 => 0xf479582c => 230
	i32 4102112229, ; 614: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 306
	i32 4125707920, ; 615: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 301
	i32 4126470640, ; 616: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 188
	i32 4127667938, ; 617: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 618: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 619: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 620: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 313
	i32 4151237749, ; 621: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 622: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 623: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 624: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 625: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 626: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 246
	i32 4185676441, ; 627: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 628: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 629: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 630: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 223
	i32 4258378803, ; 631: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 245
	i32 4260525087, ; 632: System.Buffers => 0xfdf2741f => 7
	i32 4261741634, ; 633: Avalonia.DesignerSupport.dll => 0xfe050442 => 175
	i32 4271975918, ; 634: Microsoft.Maui.Controls.dll => 0xfea12dee => 196
	i32 4274976490, ; 635: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 636: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 246
	i32 4294763496 ; 637: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 232
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [638 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 242, ; 3
	i32 276, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 317, ; 9
	i32 124, ; 10
	i32 200, ; 11
	i32 102, ; 12
	i32 260, ; 13
	i32 107, ; 14
	i32 260, ; 15
	i32 139, ; 16
	i32 280, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 216, ; 21
	i32 132, ; 22
	i32 262, ; 23
	i32 151, ; 24
	i32 314, ; 25
	i32 315, ; 26
	i32 18, ; 27
	i32 214, ; 28
	i32 26, ; 29
	i32 236, ; 30
	i32 1, ; 31
	i32 59, ; 32
	i32 42, ; 33
	i32 91, ; 34
	i32 219, ; 35
	i32 147, ; 36
	i32 238, ; 37
	i32 235, ; 38
	i32 286, ; 39
	i32 54, ; 40
	i32 69, ; 41
	i32 314, ; 42
	i32 205, ; 43
	i32 83, ; 44
	i32 299, ; 45
	i32 237, ; 46
	i32 298, ; 47
	i32 131, ; 48
	i32 55, ; 49
	i32 149, ; 50
	i32 74, ; 51
	i32 145, ; 52
	i32 62, ; 53
	i32 146, ; 54
	i32 318, ; 55
	i32 165, ; 56
	i32 310, ; 57
	i32 220, ; 58
	i32 12, ; 59
	i32 233, ; 60
	i32 125, ; 61
	i32 152, ; 62
	i32 113, ; 63
	i32 166, ; 64
	i32 164, ; 65
	i32 235, ; 66
	i32 248, ; 67
	i32 176, ; 68
	i32 84, ; 69
	i32 297, ; 70
	i32 291, ; 71
	i32 194, ; 72
	i32 150, ; 73
	i32 280, ; 74
	i32 60, ; 75
	i32 190, ; 76
	i32 51, ; 77
	i32 103, ; 78
	i32 114, ; 79
	i32 40, ; 80
	i32 273, ; 81
	i32 271, ; 82
	i32 120, ; 83
	i32 305, ; 84
	i32 52, ; 85
	i32 44, ; 86
	i32 119, ; 87
	i32 225, ; 88
	i32 303, ; 89
	i32 174, ; 90
	i32 231, ; 91
	i32 81, ; 92
	i32 136, ; 93
	i32 267, ; 94
	i32 212, ; 95
	i32 8, ; 96
	i32 73, ; 97
	i32 285, ; 98
	i32 155, ; 99
	i32 282, ; 100
	i32 154, ; 101
	i32 92, ; 102
	i32 277, ; 103
	i32 45, ; 104
	i32 300, ; 105
	i32 288, ; 106
	i32 281, ; 107
	i32 109, ; 108
	i32 129, ; 109
	i32 25, ; 110
	i32 202, ; 111
	i32 72, ; 112
	i32 55, ; 113
	i32 46, ; 114
	i32 309, ; 115
	i32 193, ; 116
	i32 226, ; 117
	i32 179, ; 118
	i32 180, ; 119
	i32 22, ; 120
	i32 240, ; 121
	i32 86, ; 122
	i32 43, ; 123
	i32 160, ; 124
	i32 71, ; 125
	i32 253, ; 126
	i32 3, ; 127
	i32 42, ; 128
	i32 63, ; 129
	i32 16, ; 130
	i32 53, ; 131
	i32 312, ; 132
	i32 276, ; 133
	i32 105, ; 134
	i32 281, ; 135
	i32 274, ; 136
	i32 237, ; 137
	i32 34, ; 138
	i32 158, ; 139
	i32 85, ; 140
	i32 32, ; 141
	i32 12, ; 142
	i32 51, ; 143
	i32 56, ; 144
	i32 173, ; 145
	i32 257, ; 146
	i32 36, ; 147
	i32 189, ; 148
	i32 287, ; 149
	i32 275, ; 150
	i32 210, ; 151
	i32 35, ; 152
	i32 58, ; 153
	i32 244, ; 154
	i32 181, ; 155
	i32 184, ; 156
	i32 17, ; 157
	i32 278, ; 158
	i32 164, ; 159
	i32 300, ; 160
	i32 243, ; 161
	i32 192, ; 162
	i32 185, ; 163
	i32 270, ; 164
	i32 306, ; 165
	i32 153, ; 166
	i32 266, ; 167
	i32 251, ; 168
	i32 304, ; 169
	i32 212, ; 170
	i32 29, ; 171
	i32 52, ; 172
	i32 302, ; 173
	i32 271, ; 174
	i32 5, ; 175
	i32 286, ; 176
	i32 261, ; 177
	i32 265, ; 178
	i32 217, ; 179
	i32 282, ; 180
	i32 209, ; 181
	i32 228, ; 182
	i32 85, ; 183
	i32 270, ; 184
	i32 61, ; 185
	i32 112, ; 186
	i32 57, ; 187
	i32 316, ; 188
	i32 257, ; 189
	i32 99, ; 190
	i32 185, ; 191
	i32 19, ; 192
	i32 221, ; 193
	i32 111, ; 194
	i32 101, ; 195
	i32 0, ; 196
	i32 102, ; 197
	i32 284, ; 198
	i32 104, ; 199
	i32 274, ; 200
	i32 71, ; 201
	i32 38, ; 202
	i32 32, ; 203
	i32 103, ; 204
	i32 73, ; 205
	i32 290, ; 206
	i32 9, ; 207
	i32 123, ; 208
	i32 46, ; 209
	i32 211, ; 210
	i32 194, ; 211
	i32 9, ; 212
	i32 43, ; 213
	i32 4, ; 214
	i32 258, ; 215
	i32 294, ; 216
	i32 289, ; 217
	i32 31, ; 218
	i32 138, ; 219
	i32 92, ; 220
	i32 93, ; 221
	i32 309, ; 222
	i32 49, ; 223
	i32 141, ; 224
	i32 112, ; 225
	i32 140, ; 226
	i32 227, ; 227
	i32 115, ; 228
	i32 275, ; 229
	i32 157, ; 230
	i32 76, ; 231
	i32 173, ; 232
	i32 79, ; 233
	i32 247, ; 234
	i32 37, ; 235
	i32 177, ; 236
	i32 269, ; 237
	i32 231, ; 238
	i32 224, ; 239
	i32 64, ; 240
	i32 138, ; 241
	i32 15, ; 242
	i32 116, ; 243
	i32 263, ; 244
	i32 272, ; 245
	i32 219, ; 246
	i32 48, ; 247
	i32 70, ; 248
	i32 80, ; 249
	i32 126, ; 250
	i32 94, ; 251
	i32 121, ; 252
	i32 279, ; 253
	i32 26, ; 254
	i32 240, ; 255
	i32 97, ; 256
	i32 28, ; 257
	i32 215, ; 258
	i32 307, ; 259
	i32 285, ; 260
	i32 149, ; 261
	i32 169, ; 262
	i32 4, ; 263
	i32 98, ; 264
	i32 33, ; 265
	i32 93, ; 266
	i32 262, ; 267
	i32 190, ; 268
	i32 21, ; 269
	i32 41, ; 270
	i32 170, ; 271
	i32 301, ; 272
	i32 233, ; 273
	i32 293, ; 274
	i32 247, ; 275
	i32 278, ; 276
	i32 272, ; 277
	i32 252, ; 278
	i32 2, ; 279
	i32 134, ; 280
	i32 111, ; 281
	i32 191, ; 282
	i32 313, ; 283
	i32 202, ; 284
	i32 310, ; 285
	i32 58, ; 286
	i32 95, ; 287
	i32 292, ; 288
	i32 39, ; 289
	i32 213, ; 290
	i32 25, ; 291
	i32 94, ; 292
	i32 89, ; 293
	i32 99, ; 294
	i32 10, ; 295
	i32 87, ; 296
	i32 100, ; 297
	i32 259, ; 298
	i32 186, ; 299
	i32 279, ; 300
	i32 204, ; 301
	i32 179, ; 302
	i32 289, ; 303
	i32 7, ; 304
	i32 244, ; 305
	i32 284, ; 306
	i32 201, ; 307
	i32 88, ; 308
	i32 239, ; 309
	i32 154, ; 310
	i32 288, ; 311
	i32 33, ; 312
	i32 116, ; 313
	i32 82, ; 314
	i32 20, ; 315
	i32 11, ; 316
	i32 162, ; 317
	i32 3, ; 318
	i32 198, ; 319
	i32 296, ; 320
	i32 193, ; 321
	i32 191, ; 322
	i32 84, ; 323
	i32 283, ; 324
	i32 64, ; 325
	i32 180, ; 326
	i32 298, ; 327
	i32 266, ; 328
	i32 143, ; 329
	i32 248, ; 330
	i32 157, ; 331
	i32 41, ; 332
	i32 117, ; 333
	i32 187, ; 334
	i32 203, ; 335
	i32 292, ; 336
	i32 255, ; 337
	i32 131, ; 338
	i32 75, ; 339
	i32 66, ; 340
	i32 302, ; 341
	i32 172, ; 342
	i32 182, ; 343
	i32 207, ; 344
	i32 143, ; 345
	i32 106, ; 346
	i32 151, ; 347
	i32 70, ; 348
	i32 156, ; 349
	i32 186, ; 350
	i32 121, ; 351
	i32 127, ; 352
	i32 297, ; 353
	i32 152, ; 354
	i32 230, ; 355
	i32 178, ; 356
	i32 141, ; 357
	i32 217, ; 358
	i32 294, ; 359
	i32 20, ; 360
	i32 14, ; 361
	i32 135, ; 362
	i32 75, ; 363
	i32 59, ; 364
	i32 220, ; 365
	i32 167, ; 366
	i32 168, ; 367
	i32 196, ; 368
	i32 15, ; 369
	i32 74, ; 370
	i32 6, ; 371
	i32 23, ; 372
	i32 242, ; 373
	i32 201, ; 374
	i32 91, ; 375
	i32 295, ; 376
	i32 1, ; 377
	i32 136, ; 378
	i32 243, ; 379
	i32 265, ; 380
	i32 134, ; 381
	i32 69, ; 382
	i32 146, ; 383
	i32 304, ; 384
	i32 283, ; 385
	i32 234, ; 386
	i32 192, ; 387
	i32 88, ; 388
	i32 96, ; 389
	i32 224, ; 390
	i32 229, ; 391
	i32 299, ; 392
	i32 31, ; 393
	i32 45, ; 394
	i32 238, ; 395
	i32 203, ; 396
	i32 109, ; 397
	i32 158, ; 398
	i32 35, ; 399
	i32 22, ; 400
	i32 114, ; 401
	i32 57, ; 402
	i32 263, ; 403
	i32 181, ; 404
	i32 183, ; 405
	i32 144, ; 406
	i32 118, ; 407
	i32 120, ; 408
	i32 110, ; 409
	i32 205, ; 410
	i32 139, ; 411
	i32 211, ; 412
	i32 54, ; 413
	i32 105, ; 414
	i32 305, ; 415
	i32 197, ; 416
	i32 198, ; 417
	i32 133, ; 418
	i32 277, ; 419
	i32 268, ; 420
	i32 256, ; 421
	i32 311, ; 422
	i32 234, ; 423
	i32 200, ; 424
	i32 159, ; 425
	i32 290, ; 426
	i32 221, ; 427
	i32 163, ; 428
	i32 174, ; 429
	i32 132, ; 430
	i32 256, ; 431
	i32 161, ; 432
	i32 303, ; 433
	i32 245, ; 434
	i32 140, ; 435
	i32 268, ; 436
	i32 264, ; 437
	i32 169, ; 438
	i32 199, ; 439
	i32 206, ; 440
	i32 273, ; 441
	i32 40, ; 442
	i32 232, ; 443
	i32 81, ; 444
	i32 56, ; 445
	i32 37, ; 446
	i32 97, ; 447
	i32 166, ; 448
	i32 172, ; 449
	i32 269, ; 450
	i32 82, ; 451
	i32 208, ; 452
	i32 177, ; 453
	i32 98, ; 454
	i32 30, ; 455
	i32 159, ; 456
	i32 18, ; 457
	i32 127, ; 458
	i32 119, ; 459
	i32 228, ; 460
	i32 259, ; 461
	i32 241, ; 462
	i32 261, ; 463
	i32 165, ; 464
	i32 236, ; 465
	i32 318, ; 466
	i32 258, ; 467
	i32 249, ; 468
	i32 170, ; 469
	i32 16, ; 470
	i32 144, ; 471
	i32 296, ; 472
	i32 125, ; 473
	i32 118, ; 474
	i32 38, ; 475
	i32 115, ; 476
	i32 47, ; 477
	i32 142, ; 478
	i32 117, ; 479
	i32 34, ; 480
	i32 184, ; 481
	i32 95, ; 482
	i32 53, ; 483
	i32 250, ; 484
	i32 129, ; 485
	i32 153, ; 486
	i32 24, ; 487
	i32 161, ; 488
	i32 227, ; 489
	i32 148, ; 490
	i32 104, ; 491
	i32 89, ; 492
	i32 215, ; 493
	i32 60, ; 494
	i32 142, ; 495
	i32 100, ; 496
	i32 5, ; 497
	i32 13, ; 498
	i32 122, ; 499
	i32 135, ; 500
	i32 28, ; 501
	i32 291, ; 502
	i32 72, ; 503
	i32 225, ; 504
	i32 24, ; 505
	i32 213, ; 506
	i32 254, ; 507
	i32 251, ; 508
	i32 308, ; 509
	i32 137, ; 510
	i32 206, ; 511
	i32 222, ; 512
	i32 168, ; 513
	i32 255, ; 514
	i32 287, ; 515
	i32 101, ; 516
	i32 123, ; 517
	i32 226, ; 518
	i32 188, ; 519
	i32 163, ; 520
	i32 167, ; 521
	i32 229, ; 522
	i32 39, ; 523
	i32 195, ; 524
	i32 295, ; 525
	i32 17, ; 526
	i32 171, ; 527
	i32 308, ; 528
	i32 307, ; 529
	i32 137, ; 530
	i32 150, ; 531
	i32 218, ; 532
	i32 178, ; 533
	i32 155, ; 534
	i32 130, ; 535
	i32 19, ; 536
	i32 65, ; 537
	i32 147, ; 538
	i32 47, ; 539
	i32 315, ; 540
	i32 204, ; 541
	i32 79, ; 542
	i32 61, ; 543
	i32 176, ; 544
	i32 106, ; 545
	i32 253, ; 546
	i32 208, ; 547
	i32 49, ; 548
	i32 239, ; 549
	i32 312, ; 550
	i32 250, ; 551
	i32 14, ; 552
	i32 187, ; 553
	i32 68, ; 554
	i32 171, ; 555
	i32 214, ; 556
	i32 218, ; 557
	i32 317, ; 558
	i32 78, ; 559
	i32 223, ; 560
	i32 108, ; 561
	i32 207, ; 562
	i32 249, ; 563
	i32 67, ; 564
	i32 0, ; 565
	i32 63, ; 566
	i32 27, ; 567
	i32 160, ; 568
	i32 216, ; 569
	i32 10, ; 570
	i32 195, ; 571
	i32 11, ; 572
	i32 78, ; 573
	i32 126, ; 574
	i32 83, ; 575
	i32 189, ; 576
	i32 66, ; 577
	i32 107, ; 578
	i32 65, ; 579
	i32 128, ; 580
	i32 122, ; 581
	i32 77, ; 582
	i32 264, ; 583
	i32 254, ; 584
	i32 316, ; 585
	i32 8, ; 586
	i32 222, ; 587
	i32 2, ; 588
	i32 44, ; 589
	i32 267, ; 590
	i32 156, ; 591
	i32 128, ; 592
	i32 252, ; 593
	i32 23, ; 594
	i32 133, ; 595
	i32 210, ; 596
	i32 241, ; 597
	i32 311, ; 598
	i32 293, ; 599
	i32 182, ; 600
	i32 29, ; 601
	i32 209, ; 602
	i32 62, ; 603
	i32 197, ; 604
	i32 90, ; 605
	i32 183, ; 606
	i32 87, ; 607
	i32 175, ; 608
	i32 148, ; 609
	i32 199, ; 610
	i32 36, ; 611
	i32 86, ; 612
	i32 230, ; 613
	i32 306, ; 614
	i32 301, ; 615
	i32 188, ; 616
	i32 50, ; 617
	i32 6, ; 618
	i32 90, ; 619
	i32 313, ; 620
	i32 21, ; 621
	i32 162, ; 622
	i32 96, ; 623
	i32 50, ; 624
	i32 113, ; 625
	i32 246, ; 626
	i32 130, ; 627
	i32 76, ; 628
	i32 27, ; 629
	i32 223, ; 630
	i32 245, ; 631
	i32 7, ; 632
	i32 175, ; 633
	i32 196, ; 634
	i32 110, ; 635
	i32 246, ; 636
	i32 232 ; 637
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
