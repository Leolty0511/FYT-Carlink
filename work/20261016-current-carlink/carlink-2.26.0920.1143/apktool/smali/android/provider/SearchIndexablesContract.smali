.class public Landroid/provider/SearchIndexablesContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchIndexablesContract$BaseColumns;,
        Landroid/provider/SearchIndexablesContract$NonIndexableKey;,
        Landroid/provider/SearchIndexablesContract$RawData;,
        Landroid/provider/SearchIndexablesContract$XmlResource;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I = 0x0

.field public static final COLUMN_INDEX_RAW_CLASS_NAME:I = 0x7

.field public static final COLUMN_INDEX_RAW_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_RAW_ICON_RESID:I = 0x8

.field public static final COLUMN_INDEX_RAW_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_RAW_KEY:I = 0xc

.field public static final COLUMN_INDEX_RAW_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RAW_PAYLOAD:I = 0xf

.field public static final COLUMN_INDEX_RAW_PAYLOAD_TYPE:I = 0xe

.field public static final COLUMN_INDEX_RAW_RANK:I = 0x0

.field public static final COLUMN_INDEX_RAW_SCREEN_TITLE:I = 0x6

.field public static final COLUMN_INDEX_RAW_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_RAW_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_RAW_TITLE:I = 0x1

.field public static final COLUMN_INDEX_RAW_USER_ID:I = 0xd

.field public static final COLUMN_INDEX_XML_RES_CLASS_NAME:I = 0x2

.field public static final COLUMN_INDEX_XML_RES_ICON_RESID:I = 0x3

.field public static final COLUMN_INDEX_XML_RES_INTENT_ACTION:I = 0x4

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I = 0x6

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I = 0x5

.field public static final COLUMN_INDEX_XML_RES_RANK:I = 0x0

.field public static final COLUMN_INDEX_XML_RES_RESID:I = 0x1

.field public static final INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field public static final NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field private static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    const-string/jumbo v0, "rank"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "xmlResId"

    .line 5
    .line 6
    .line 7
    const-string v2, "className"

    .line 8
    .line 9
    const-string/jumbo v3, "iconResId"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "intentAction"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "intentTargetPackage"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v6, "intentTargetClass"

    .line 19
    .line 20
    .line 21
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v1, "rank"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "title"

    .line 31
    .line 32
    .line 33
    const-string/jumbo v3, "summaryOn"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v4, "summaryOff"

    .line 37
    .line 38
    .line 39
    const-string v5, "entries"

    .line 40
    .line 41
    const-string/jumbo v6, "keywords"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v7, "screenTitle"

    .line 45
    .line 46
    .line 47
    const-string v8, "className"

    .line 48
    .line 49
    const-string/jumbo v9, "iconResId"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v10, "intentAction"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v11, "intentTargetPackage"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v12, "intentTargetClass"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v13, "key"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v14, "user_id"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v15, "payload_type"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v16, "payload"

    .line 71
    .line 72
    .line 73
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    .line 78
    .line 79
    const-string/jumbo v0, "key"

    .line 80
    .line 81
    .line 82
    filled-new-array {v0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
