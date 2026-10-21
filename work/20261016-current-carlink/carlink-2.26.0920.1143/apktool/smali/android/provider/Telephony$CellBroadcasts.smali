.class public final Landroid/provider/Telephony$CellBroadcasts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBroadcasts"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "cmas_category"

.field public static final CMAS_CERTAINTY:Ljava/lang/String; = "cmas_certainty"

.field public static final CMAS_MESSAGE_CLASS:Ljava/lang/String; = "cmas_message_class"

.field public static final CMAS_RESPONSE_TYPE:Ljava/lang/String; = "cmas_response_type"

.field public static final CMAS_SEVERITY:Ljava/lang/String; = "cmas_severity"

.field public static final CMAS_URGENCY:Ljava/lang/String; = "cmas_urgency"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "date"

.field public static final ETWS_WARNING_TYPE:Ljava/lang/String; = "etws_warning_type"

.field public static final GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "geo_scope"

.field public static final LAC:Ljava/lang/String; = "lac"

.field public static final LANGUAGE_CODE:Ljava/lang/String; = "language"

.field public static final MESSAGE_BODY:Ljava/lang/String; = "body"

.field public static final MESSAGE_FORMAT:Ljava/lang/String; = "format"

.field public static final MESSAGE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final MESSAGE_READ:Ljava/lang/String; = "read"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final SERVICE_CATEGORY:Ljava/lang/String; = "service_category"

.field public static final V1_MESSAGE_CODE:Ljava/lang/String; = "message_code"

.field public static final V1_MESSAGE_IDENTIFIER:Ljava/lang/String; = "message_id"


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    const-string v0, "content://cellbroadcasts"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "_id"

    .line 10
    .line 11
    const-string v2, "geo_scope"

    .line 12
    .line 13
    const-string/jumbo v3, "plmn"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v4, "lac"

    .line 17
    .line 18
    .line 19
    const-string v5, "cid"

    .line 20
    .line 21
    const-string/jumbo v6, "serial_number"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v7, "service_category"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v8, "language"

    .line 28
    .line 29
    .line 30
    const-string v9, "body"

    .line 31
    .line 32
    const-string v10, "date"

    .line 33
    .line 34
    const-string/jumbo v11, "read"

    .line 35
    .line 36
    .line 37
    const-string v12, "format"

    .line 38
    .line 39
    const-string/jumbo v13, "priority"

    .line 40
    .line 41
    .line 42
    const-string v14, "etws_warning_type"

    .line 43
    .line 44
    const-string v15, "cmas_message_class"

    .line 45
    .line 46
    const-string v16, "cmas_category"

    .line 47
    .line 48
    const-string v17, "cmas_response_type"

    .line 49
    .line 50
    const-string v18, "cmas_severity"

    .line 51
    .line 52
    const-string v19, "cmas_urgency"

    .line 53
    .line 54
    const-string v20, "cmas_certainty"

    .line 55
    .line 56
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->QUERY_COLUMNS:[Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
