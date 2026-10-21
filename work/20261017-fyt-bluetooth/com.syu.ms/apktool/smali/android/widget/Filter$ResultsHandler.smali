.class Landroid/widget/Filter$ResultsHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultsHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/Filter;


# direct methods
.method private constructor <init>(Landroid/widget/Filter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Filter$ResultsHandler;->this$0:Landroid/widget/Filter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Filter;Landroid/widget/Filter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/Filter$ResultsHandler;-><init>(Landroid/widget/Filter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Filter$RequestArguments;

    .line 2
    iget-object v0, p0, Landroid/widget/Filter$ResultsHandler;->this$0:Landroid/widget/Filter;

    iget-object v1, p1, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Filter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 3
    iget-object v0, p1, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 5
    :goto_0
    invoke-interface {v0, p1}, Landroid/widget/Filter$FilterListener;->onFilterComplete(I)V

    :cond_1
    return-void
.end method
