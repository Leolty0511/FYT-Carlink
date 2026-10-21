.class Landroid/filterfw/core/SyncRunner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/filterfw/core/SyncRunner;->scheduleFilterWake(Landroid/filterfw/core/Filter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/SyncRunner;

.field final synthetic val$conditionToWake:Landroid/os/ConditionVariable;

.field final synthetic val$filterToSchedule:Landroid/filterfw/core/Filter;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SyncRunner;Landroid/filterfw/core/Filter;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/core/SyncRunner$1;->this$0:Landroid/filterfw/core/SyncRunner;

    iput-object p2, p0, Landroid/filterfw/core/SyncRunner$1;->val$filterToSchedule:Landroid/filterfw/core/Filter;

    iput-object p3, p0, Landroid/filterfw/core/SyncRunner$1;->val$conditionToWake:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner$1;->val$filterToSchedule:Landroid/filterfw/core/Filter;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->unsetStatus(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner$1;->val$conditionToWake:Landroid/os/ConditionVariable;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
