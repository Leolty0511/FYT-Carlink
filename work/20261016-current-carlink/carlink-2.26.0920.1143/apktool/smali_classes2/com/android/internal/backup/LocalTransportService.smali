.class public Lcom/android/internal/backup/LocalTransportService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static sTransport:Lcom/android/internal/backup/LocalTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    sget-object p1, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {p1}, Landroid/app/backup/BackupTransport;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/internal/backup/LocalTransport;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    .line 11
    .line 12
    :cond_0
    return-void
.end method
