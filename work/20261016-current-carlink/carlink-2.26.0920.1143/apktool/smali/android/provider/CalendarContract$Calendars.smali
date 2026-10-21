.class public final Landroid/provider/CalendarContract$Calendars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Calendars"
.end annotation


# static fields
.field public static final CALENDAR_LOCATION:Ljava/lang/String; = "calendar_location"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "calendar_displayName"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    const-string v0, "content://com.android.calendar/calendars"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "account_name"

    .line 10
    .line 11
    const-string v2, "account_type"

    .line 12
    .line 13
    const-string v3, "_sync_id"

    .line 14
    .line 15
    const-string v4, "dirty"

    .line 16
    .line 17
    const-string/jumbo v5, "mutators"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "ownerAccount"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v7, "maxReminders"

    .line 24
    .line 25
    .line 26
    const-string v8, "allowedReminders"

    .line 27
    .line 28
    const-string v9, "canModifyTimeZone"

    .line 29
    .line 30
    const-string v10, "canOrganizerRespond"

    .line 31
    .line 32
    const-string v11, "canPartiallyUpdate"

    .line 33
    .line 34
    const-string v12, "calendar_location"

    .line 35
    .line 36
    const-string v13, "calendar_timezone"

    .line 37
    .line 38
    const-string v14, "calendar_access_level"

    .line 39
    .line 40
    const-string v15, "deleted"

    .line 41
    .line 42
    const-string v16, "cal_sync1"

    .line 43
    .line 44
    const-string v17, "cal_sync2"

    .line 45
    .line 46
    const-string v18, "cal_sync3"

    .line 47
    .line 48
    const-string v19, "cal_sync4"

    .line 49
    .line 50
    const-string v20, "cal_sync5"

    .line 51
    .line 52
    const-string v21, "cal_sync6"

    .line 53
    .line 54
    const-string v22, "cal_sync7"

    .line 55
    .line 56
    const-string v23, "cal_sync8"

    .line 57
    .line 58
    const-string v24, "cal_sync9"

    .line 59
    .line 60
    const-string v25, "cal_sync10"

    .line 61
    .line 62
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 67
    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
