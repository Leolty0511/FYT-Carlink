.class Landroid/filterfw/core/AsyncRunner$RunnerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnerResult"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field public status:I

.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method
