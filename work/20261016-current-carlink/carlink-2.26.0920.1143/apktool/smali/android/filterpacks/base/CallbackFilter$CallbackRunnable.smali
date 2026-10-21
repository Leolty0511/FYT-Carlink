.class Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/base/CallbackFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private mFilter:Landroid/filterfw/core/Filter;

.field private mFrame:Landroid/filterfw/core/Frame;

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mUserData:Ljava/lang/Object;

.field final synthetic this$0:Landroid/filterpacks/base/CallbackFilter;


# direct methods
.method public constructor <init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->this$0:Landroid/filterpacks/base/CallbackFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFilter:Landroid/filterfw/core/Filter;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    .line 11
    .line 12
    iput-object p5, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mUserData:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFilter:Landroid/filterfw/core/Filter;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mUserData:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 15
    .line 16
    .line 17
    return-void
.end method
