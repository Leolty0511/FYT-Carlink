.class Landroid/widget/DateTimeView$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/DateTimeView;


# direct methods
.method public constructor <init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 2
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method
