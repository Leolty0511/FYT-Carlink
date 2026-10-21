.class Landroid/filterfw/core/FilterFunction$FrameHolderPort;
.super Landroid/filterfw/core/StreamPort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/FilterFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameHolderPort"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/FilterFunction;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterFunction;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->this$0:Landroid/filterfw/core/FilterFunction;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const-string/jumbo v0, "holder"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
