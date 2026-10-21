.class Landroid/widget/Editor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
