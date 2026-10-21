.class public final Landroid/provider/CalendarContract$Events;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_EXCEPTION_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v0, "content://com.android.calendar/events"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v0, "content://com.android.calendar/exception"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 16
    .line 17
    const-string v1, "account_name"

    .line 18
    .line 19
    const-string v2, "account_type"

    .line 20
    .line 21
    const-string v3, "cal_sync1"

    .line 22
    .line 23
    const-string v4, "cal_sync2"

    .line 24
    .line 25
    const-string v5, "cal_sync3"

    .line 26
    .line 27
    const-string v6, "cal_sync4"

    .line 28
    .line 29
    const-string v7, "cal_sync5"

    .line 30
    .line 31
    const-string v8, "cal_sync6"

    .line 32
    .line 33
    const-string v9, "cal_sync7"

    .line 34
    .line 35
    const-string v10, "cal_sync8"

    .line 36
    .line 37
    const-string v11, "cal_sync9"

    .line 38
    .line 39
    const-string v12, "cal_sync10"

    .line 40
    .line 41
    const-string v13, "allowedReminders"

    .line 42
    .line 43
    const-string v14, "allowedAttendeeTypes"

    .line 44
    .line 45
    const-string v15, "allowedAvailability"

    .line 46
    .line 47
    const-string v16, "calendar_access_level"

    .line 48
    .line 49
    const-string v17, "calendar_color"

    .line 50
    .line 51
    const-string v18, "calendar_timezone"

    .line 52
    .line 53
    const-string v19, "canModifyTimeZone"

    .line 54
    .line 55
    const-string v20, "canOrganizerRespond"

    .line 56
    .line 57
    const-string v21, "calendar_displayName"

    .line 58
    .line 59
    const-string v22, "canPartiallyUpdate"

    .line 60
    .line 61
    const-string/jumbo v23, "sync_events"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v24, "visible"

    .line 65
    .line 66
    .line 67
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "_sync_id"

    .line 74
    .line 75
    const-string v2, "dirty"

    .line 76
    .line 77
    const-string/jumbo v3, "mutators"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v4, "sync_data1"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v5, "sync_data2"

    .line 84
    .line 85
    .line 86
    const-string/jumbo v6, "sync_data3"

    .line 87
    .line 88
    .line 89
    const-string/jumbo v7, "sync_data4"

    .line 90
    .line 91
    .line 92
    const-string/jumbo v8, "sync_data5"

    .line 93
    .line 94
    .line 95
    const-string/jumbo v9, "sync_data6"

    .line 96
    .line 97
    .line 98
    const-string/jumbo v10, "sync_data7"

    .line 99
    .line 100
    .line 101
    const-string/jumbo v11, "sync_data8"

    .line 102
    .line 103
    .line 104
    const-string/jumbo v12, "sync_data9"

    .line 105
    .line 106
    .line 107
    const-string/jumbo v13, "sync_data10"

    .line 108
    .line 109
    .line 110
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 115
    .line 116
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
