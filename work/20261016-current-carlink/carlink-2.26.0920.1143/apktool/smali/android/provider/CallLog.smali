.class public Landroid/provider/CallLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "CallLog"

.field public static final SHADOW_AUTHORITY:Ljava/lang/String; = "call_log_shadow"

.field private static final VERBOSE_LOG:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://call_log"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
