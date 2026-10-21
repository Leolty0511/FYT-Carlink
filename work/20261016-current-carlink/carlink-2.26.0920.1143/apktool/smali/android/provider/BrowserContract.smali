.class public Landroid/provider/BrowserContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BrowserContract$Settings;,
        Landroid/provider/BrowserContract$Combined;,
        Landroid/provider/BrowserContract$ImageMappings;,
        Landroid/provider/BrowserContract$Images;,
        Landroid/provider/BrowserContract$SyncState;,
        Landroid/provider/BrowserContract$Searches;,
        Landroid/provider/BrowserContract$History;,
        Landroid/provider/BrowserContract$Accounts;,
        Landroid/provider/BrowserContract$Bookmarks;,
        Landroid/provider/BrowserContract$ImageMappingColumns;,
        Landroid/provider/BrowserContract$HistoryColumns;,
        Landroid/provider/BrowserContract$ImageColumns;,
        Landroid/provider/BrowserContract$CommonColumns;,
        Landroid/provider/BrowserContract$SyncColumns;,
        Landroid/provider/BrowserContract$ChromeSyncColumns;,
        Landroid/provider/BrowserContract$BaseSyncColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.browser"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.android.browser"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
