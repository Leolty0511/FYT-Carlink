.class Landroid/app/backup/BackupHelperDispatcher$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupHelperDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public chunkSize:I

.field public keyPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/backup/BackupHelperDispatcher$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/app/backup/BackupHelperDispatcher$Header;-><init>()V

    return-void
.end method
