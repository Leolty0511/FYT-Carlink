.class public Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/service/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/google/android/projection/sink/embedded/service/BackgroundService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    return-object v0
.end method
