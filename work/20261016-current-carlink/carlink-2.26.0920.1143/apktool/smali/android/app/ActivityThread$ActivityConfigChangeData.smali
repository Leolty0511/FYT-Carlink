.class final Landroid/app/ActivityThread$ActivityConfigChangeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityConfigChangeData"
.end annotation


# instance fields
.field final activityToken:Landroid/os/IBinder;

.field final overrideConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    .line 7
    .line 8
    return-void
.end method
