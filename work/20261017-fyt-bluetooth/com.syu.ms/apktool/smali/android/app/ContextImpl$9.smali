.class final Landroid/app/ContextImpl$9;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
