.class public Lcom/android/internal/backup/LocalTransportService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Ll/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/internal/backup/LocalTransportService;->a:Ll/b;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->a:Ll/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ll/b;

    invoke-direct {v0, p0}, Ll/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->a:Ll/b;

    :cond_0
    return-void
.end method
