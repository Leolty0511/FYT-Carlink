.class Landroid/app/LocalActivityManager$LocalActivityRecord;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LocalActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalActivityRecord"
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public curState:I

.field public final id:Ljava/lang/String;

.field public instanceState:Landroid/os/Bundle;

.field public intent:Landroid/content/Intent;

.field public window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 3
    iput-object p1, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    return-void
.end method
