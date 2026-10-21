.class final Landroid/telephony/TelephonyManagerEx$CallBlockRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallBlockRecorder"
.end annotation


# static fields
.field public static final BLOCK_DATE:Ljava/lang/String; = "block_date"

.field public static final CALL_TYPE:Ljava/lang/String; = "call_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER_VALUE:Ljava/lang/String; = "number_value"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.sprd.providers.block/block_recorded"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/telephony/TelephonyManagerEx$CallBlockRecorder;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
